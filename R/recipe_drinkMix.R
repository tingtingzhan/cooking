

# Must use Dutch-processed cocoa powder'
# https://www.seriouseats.com/difference-dutch-process-natural-cocoa-powder-substitute
# Since Dutch process cocoa isn't acidic, it doesn't react with alkaline leaveners like baking soda to produce carbon dioxide. That's why recipes that use Dutch process cocoa are usually leavened by baking powder, which has a neutral pH.



#' @title \linkS4class{drinkmix} and \linkS4class{hotdrink} Recipes
#' 
#' @description ..
#' 
#' @examples
#' nutrition_(
#'  StarbucksKcup_cocoa,
#'  Starbucks_cocoa,
#'  SwissMiss_milkCocoa,
#'  SwissMiss_simplyCocoaMilk,
#'  KingArthur_milkChocolate,
#'  Nestle_skimCocoa,
#'  Nestle_richChocolate,
#'  Nestle_cocoSupreme,
#'  EarlaTaylor_cocoa,
#'  Mels_cocoa,
#'  AmandaRettke_cocoa
#' )
#' @name drink
#' @aliases drinkmix-class
#' @export
setClass(Class = 'drinkmix', contains = 'recipe', prototype = prototype(
  alias_class = '\u901f\u6eb6\u7c89'
), validity = function(object) {
  if (length(object@boilingWater) || length(object@iceWater) ||
      length(object@water90) || length(object@water80) || length(object@water70)) # all kind of water
    stop('`drinkmix` object cannot have water')
})


#' @rdname drink
#' @aliases hotdrink-class
#' @export
setClass(Class = 'hotdrink', contains = 'recipe', prototype = prototype(
  alias_class = '\u70ed\u996e',
  water80 = 236.6*2, # 2 US cup
  instruction = c(
    'Whisk together all powders (syrup also okay)', 
    'Add half of water, whisk until smooth',
    'Sweep cup bottom with a square spatula',
    'Add rest of water, whisk until froth',
    'Add liqueur last, which curdles dry milk'
  )
))
setClass(Class = 'caffeLatteHot', contains = 'hotdrink')
setClass(Class = 'caffeGoatLatteHot', contains = 'hotdrink')
setClass(Class = 'cocoaHot', contains = 'hotdrink')
setClass(Class = 'matchaLatteHot', contains = 'hotdrink')
setClass(Class = 'matchaGoatLatteHot', contains = 'hotdrink')
setClass(Class = 'mocaccinoHot', contains = 'hotdrink')



#' @rdname drink
#' @aliases frappe-class
#' @export
setClass(Class = 'frappe', contains = 'recipe', prototype = prototype(
  alias_class = 'Frapp\u00e9',
  note = 'Nutribullet Ultra 20 fl. oz. blending cup',
  ice = 236.6, iceWater = 236.6 # Nutribullet can handle!!
))
setClass(Class = 'caffeLatteFrappe', contains = 'frappe')
setClass(Class = 'caffeGoatLatteFrappe', contains = 'frappe')
setClass(Class = 'cocoaFrappe', contains = 'frappe')
setClass(Class = 'mocaccinoFrappe', contains = 'frappe')
setClass(Class = 'matchaLatteFrappe', contains = 'frappe')
setClass(Class = 'matchaGoatLatteFrappe', contains = 'frappe', prototype = prototype(
  alias_class = paste('\u7f8a\u5976Frapp\u00e9', '\033[94m20 fl oz, Venti\033[0m')
))



#' @rdname drink
#' 
#' @param x \linkS4class{drinkmix} object
#' 
#' @param water80 ..
#' 
#' @details
#' Function [hotdrink] converts \linkS4class{drinkmix} to \linkS4class{hotdrink}
#' by adding 2 US cup or 236.6*2 grams of hot water (70-80C).
#' 
#' @returns
#' Function [hotdrink] returns a \linkS4class{hotdrink} object.
#' 
#' @export
hotdrink <- function(x, water80) UseMethod(generic = 'hotdrink') 

#' @export
hotdrink.function <- function(x, water80 = new(Class = 'hotdrink')@water80) hotdrink(x = x(), water80 = water80)

#' @export
hotdrink.recipe <- function(x, water80 = new(Class = 'hotdrink')@water80) {
  x@water80 <- water80
  new_(Class = if (identical(class(x), structure('drinkmix', package = 'cooking'))) {
    'hotdrink'
  } else if (inherits(x, what = 'drinkmix')) {
    gsub('Mix$', replacement = 'Hot', x = class(x))
  } else 'hotdrink', x)
}


#' @export
hotdrink.nutrition <- function(x, water80 = new(Class = 'hotdrink')@water80) {
  x@cost_ <- character()
  x@usd <- sum(x@usd, Wegmans_water()@usd/Wegmans_water()@servingGram * water80)
  x@jpy <- numeric()
  x@water <- sum(x@water, water80)
  x@servingGram <- sum(x@servingGram, water80)
  x@servingTsp <- numeric()
  return(x)
}


#' @rdname drink
#' 
#' @details
#' Function [frappe] converts \linkS4class{drinkmix} to \linkS4class{frappe}
#' by adding 16 fl oz (1.97 US cup, 473 ml) of ice water + shaved ice.
#' Up to 250g ice cubs, plus 230g ice water, can be used in Nutribullet Ultra 20oz cup.
#' 320g ice cubs (one OXO tray), plus 150g ice water, is too dry for Nutribullet Ultra 24oz cup, 
#' also too dry for drinking.
#' 
#' @returns
#' Function [frappe] returns a \linkS4class{frappe} object.
#' 
#' @export
frappe <- function(x) UseMethod(generic = 'frappe')

#' @export
frappe.function <- function(x) frappe(x = x())

#' @export
frappe.recipe <- function(x) {
  ret <- new_(Class = if (identical(class(x), structure('drinkmix', package = 'cooking'))) {
    'frappe'
  } else if (inherits(x, what = 'drinkmix')) {
    gsub('Mix$', replacement = 'Frappe', x = class(x))
  } else 'frappe', x)
  if (length(x@milk)) ret@iceWater <- numeric()
  return(ret)
}


#' @title Show \linkS4class{drinkmix}
#' 
#' @description
#' ..
#' 
#' @param object \linkS4class{drinkmix} object
#' 
#' @export
setMethod(f = show, signature = 'drinkmix', definition = function(object) {
  callNextMethod(object)

  hot <- hotdrink(object) # 2-cup hot water, or shaved ice
  nutri_ <- nutrition(hot)
  flavor_ <- attr(nutri_, which = 'cookedFlavor', exact = TRUE)
  flavor_@per <- sprintf(fmt = '%s + %.0fg Hot Water / Shaved Ice, US\U1f4b5 %.2f', flavor_@per, hot@water80, nutri_@usd)
  print(flavor_)

  cat('\n')
})




#' @title Caffe Latte, Hot or Frappe
#' 
#' @description
#' ..
#' 
#' @examples
#' caffeLatte()
#' 
#' nutrition_(
#'  hotdrink(caffeLatte),
#'  Starbucks_caffeLatte
#' ) # compare hot drink
#' @name caffeLatte
#' @aliases caffeLatteMix-class
#' @export
setClass(Class = 'caffeLatteMix', contains = 'drinkmix', prototype = prototype(
  #drymilk = c(Carnation_drymilk = 25*2), # very old; 2024-07-20
  drymilk = c(Carnation_drymilk = 40), # try new
  coffee_tsp = c(NescafeGold_espresso_blonde = 4*2), # perfect
  #coffee_tsp = c(NescafeGold_espresso_blonde = 4.5*2), # slightly too strong
  cocoa_tsp = c(KingArthur_Bensdorp = 1*2),
  sugar_tsp = 1/2*2
))


#' @rdname caffeLatte
#' @export
caffeLatte <- function() new(
  Class = 'caffeLatteMix', 
  date = as.Date('2024-07-20'),
  pros = 'so far so good; I may improve it in future')


caffeGoatLatte_blonde <- function() new(
  Class = 'drinkmix', 
  alias_flavor = 'Caff\u00e8 Goat Latte',
  drymilk = c(Meyenberg_goatWhole_drymilk = 25*2),
  coffee_tsp = c(NescafeGold_espresso_blonde = 4.5*2), 
  pros = 'I love')

caffeLatte_intense <- function() new(
  Class = 'drinkmix', 
  drymilk = c(Carnation_drymilk = 25*2),
  coffee_tsp = c(NescafeGold_espresso_intense = 4.5*2),
  cons = 'I prefer caffeLatte()')

caffeLatte_decaf <- function() new(
  Class = 'drinkmix',
  drymilk = c(Carnation_drymilk = 25*2),
  coffee_tsp = c(NescafeGold_espresso_decaf = 6*2),
  cons = 'has an undesirable flavor, not sure how to describe')







#' @title Caffe Mocha, Hot and Frappe
#' 
#' @description
#' ..
#' 
#' @details
#' Do not use `NescafeTastersChoice_decaf()`; could taste sour.
#' 
#' @references 
#' \url{https://en.wikipedia.org/wiki/Caffè_mocha}
#' 
#' @examples
#' mocaccino()
#' 
#' diagnose_(
#'  mocaccino,
#'  Rebecca_mocha,
#'  Pillsbury_mocha,
#'  bargainmums_mocha
#' ) # compare powder recipes
#' 
#' nutrition_(
#'  mocaccino,
#'  Maxwell_mochaSuisse,
#'  WilliamsSonoma_mocha,
#'  Ghirardelli_mochaFrappe,
#'  Starbucks_mochaMix
#' ) # compare commercial powders
#' 
#' nutrition_(
#'  hotdrink(mocaccino),
#'  Starbucks_mocha
#' ) # compare hot drink
#' 
#' nutrition_(
#'  frappe(mocaccino),
#'  Starbucks_mochaFrappuccino
#' ) # compare frappe
#' @name mocaccino
#' @aliases mocaccinoMix-class
#' @export
setClass(Class = 'mocaccinoMix', contains = 'drinkmix', prototype = prototype(
  drymilk = c(Carnation_drymilk = 40), # reduced from very old 50g
  #sugar_tsp = 1*2, # good & old
  #sugar_tsp = 1.5*2, # a little little too sweet with 40g dry milk
  sugar_tsp = 1.25*2, # try next time!
  cocoa_tsp = c(KingArthur_Bensdorp = 4*2),
  review = c(
    'Have tried NescafeGold_espresso_decaf, NescafeGold_decaf, NescafeGold_espresso_intense',
    'Have tried KingArthur_Burgundy'
  )
))


#' @rdname mocaccino
#' @export
mocaccino <- function() new(
  Class = 'mocaccinoMix', 
  coffee_tsp = c(NescafeGold_espresso_blonde = 2.5*2), 
  date = as.Date('2024-10-26'),
  pros = 'I am addicted!!!')


mocaccino_whole <- function() new(
  Class = 'mocaccinoMix', mocaccino(),
  #sugar_tsp = 3*2, # a little too sweet
  sugar_tsp = 2*2, # try next time
  drymilk = c(Nido_drymilk = 20*2), 
  review = 'try')

goatMocaccino <- function() new(
  Class = 'mocaccinoMix', 
  drymilk = c(Meyenberg_goat_drymilk = 20*2),
  coffee_tsp = c(NescafeGold_espresso_decaf = 3*2),
  # sugar_tsp = 2.5*2, # a little little bit too sweet
  sugar_tsp = 1.5*2, # try next time
  review = 'try to reduce a little sugar next time')








#' @title Matcha Latte, Hot and Frappe
#' 
#' @description ..
#' 
#' @examples
#' matchaLatte()
#' 
#' nutrition_(
#'  matchaLatte,
#'  Ippodo_uji_shimizu,
#'  Starbucks_matchaLatteMix,
#'  TraderJoes_matchaLatte
#' ) # compare dry powder
#' 
#' nutrition_(
#'  Ippodo_sayakaLatte,
#'  hotdrink(matchaLatte),
#'  Starbucks_matchaLatte,
#'  hotdrink(Starbucks_matchaLatteMix, water80 = 180),
#'  hotdrink(Ippodo_uji_shimizu, water80 = 150),
#'  hotdrink(ItoEn_sweet_matcha, water80 = 120)
#' ) # compare hot drink
#' 
#' nutrition_(
#'  frappe(matchaLatte),
#'  Starbucks_matchaFrappuccino
#' ) # compare frappe
#' @name matchaLatte
#' @aliases matchaLatteMix-class
#' @export
setClass(Class = 'matchaLatteMix', contains = 'drinkmix', prototype = prototype(
  alias_class = 'Latte\u901f\u6eb6\u7c89',
  # drymilk = c(Carnation_drymilk = 20*2, Nido_drymilk = 5*2), # old, I now think this is too strong
  drymilk = c(Carnation_drymilk = 16*2, Nido_drymilk = 4*2), # drank all ikuyo in Sep 2024. Great!
  sugar_tsp = 1*2
))


#' @rdname matchaLatte
#' @export
matchaLatte <- function() new(
  Class = 'matchaLatteMix',
  matcha_tsp = c(Marukyu_tenju = 3*2),
  sugar_tsp = .5*2,
  # date = as.Date('2025-05-31'), # confirm in 2025 (with reduced sugar)
  pros = c(
    'must use the most expensive sado-grade matcha!',
    'tenju oxidize very slow'
  ),
  review = c('for cheaper sado-grade matcha, slightly increase sugar up to x2',
             'never use culinary-grade matcha!'))

ikuyoLatte <- function() new(
  Class = 'matchaLatteMix', 
  matcha_tsp = c(Ippodo_ikuyo = 3*2), 
  date = as.Date('2024-09-10'),
  cons = 'ikuyo oxidize quite fast')










#' @title Matcha Latte with Goat Milk, Hot and Frappe
#' 
#' @description
#' 6g of sado-grade matcha.
#' 
#' @examples
#' matchaGoatLatte()
#' 
#' nutrition_(
#'  matchaLatte,
#'  matchaGoatLatte
#' ) # compare dry powder
#' 
#' nutrition_(
#'  hotdrink(matchaLatte),
#'  hotdrink(matchaGoatLatte)
#' ) # compare hot drink
#' @name matchaGoatLatte
#' @aliases matchaGoatLatteMix-class
#' @export
setClass(Class = 'matchaGoatLatteMix', contains = 'drinkmix', prototype = prototype(
  alias_class = '\u7f8a\u5976Latte\u901f\u6eb6\u7c89',
  drymilk = c(Meyenberg_goat = 10*2, Meyenberg_goatWhole = 10*2)
))

#' @rdname matchaGoatLatte
#' @export
matchaGoatLatte <- function() new(
  Class = 'matchaGoatLatteMix', 
  matcha_tsp = c(Marukyu_tenju = 3*2), 
  sugar_tsp = 1.5*2,
  review = 'to confirm in Summer 2025 with new crop of tenju!')

ikuyoGoatLatte <- function() new(Class = 'matchaGoatLatteMix', matcha_tsp = c(Ippodo_ikuyo = 2.5*2), sugar_tsp = 4*2, pros = 'okay')

sayakaGoatLatte <- function() new(Class = 'matchaGoatLatteMix', matcha_tsp = c(Ippodo_sayaka = 2.5*2), sugar_tsp = 4*2, pros = 'okay')








#' @rdname matchaLatte
#' @export
Ippodo_sayakaLatte <- function() new(
  Class = 'recipe',
  alias_flavor = 'Sayaka Latte', 
  ippodotea = 'sayaka-100g',
  matcha = c(Ippodo_sayaka = 3), # matcha 1.5%
  water80 = 100, milk = 96)






#' @rdname matchaLatte
#' @export
Ippodo_uji_shimizu <- function() new(
  Class = 'nutrition',
  ippodousa = 'uji-shimizu-sticks', ippodoglobal = 'matcha642402',
  name = '\u5b87\u6cbb\u6e05\u6c34 Uji Shimizu\U1f375',
  usd = 18/12, jpy = 700/400*15,
  servingGram = 15, servingTbsp = 1.5,
  calorie = 60,
  carbohydrate = 15, addedSugar = 14)

#' @rdname matchaLatte
#' @export
ItoEn_sweet_matcha <- function() new(
  Class = 'nutrition',
  itoen = 'ito-en-matcha-green-tea-sweet-powder-sticks', jfc = '45783',
  name = 'Sweet Matcha',
  servingGram = 12, sugar = 11)


matchaLatte_maeda <- function() new(Class = 'matchaLatteMix', drymilk = c(Carnation_drymilk = 25*2), matcha_Tbsp = c(maeda_matcha = 1*2), sugar_tsp = 1.5*2, pros = 'okay')

matchaLatte_ito <- function() new(Class = 'matchaLatteMix', drymilk = c(Carnation_drymilk = 25*2), matcha_Tbsp = c(ItoEn_matcha = 1*2), sugar_tsp = 1.5*2, pros = 'okay')







# @rdname drink
# @export
#lemonade <- function() new(
#  Class = 'drinkmix', alias_flavor = 
# ### that lemonade mix ???  into an iceDrink
#)











#' @rdname drink
#' @export
StarbucksKcup_cocoa <- function() new(
  Class = 'nutrition', starbucks = 'classic-hot-cocoa',
  name = 'Hot Cocoa (K-cup)',
  servingGram = 21, 
  calorie = 90,
  fat = 3, sodium = .19, carbohydrate = 13, addedSugar = 13, protein = 2)

# how is this website different from https://athome.starbucks.com ?
# https://www.starbucksathome.com/products/starbucks-caffe-latte-premium-instant-coffees
# https://www.starbucksathome.com/products/starbucks-vanilla-latte-premium-instant-coffees



#' @rdname drink
#' @export
Starbucks_cocoa <- function() new(
  Class = 'nutrition', 
  sams = 'P03020738', usd = 8.48/567*28,
  costco = '100071096',
  brand = 'Starbucks\U1f1fa\U1f1f8', name = 'Hot Cocoa (Tin)',
  servingGram = 28, servingTbsp = 2.5, 
  calorie = 100,
  fat = 2.5, carbohydrate = 22, sugar = 17, addedSugar = 16, protein = 2)

#' @rdname drink
#' @export
SwissMiss_milkCocoa <- function() new(
  Class = 'nutrition', 
  swissmiss = 'classics/milk-chocolate',
  name = 'Milk Chocolate',
  servingGram = 39, 
  calorie = 160,
  fat = 2.5, sodium = .17, carbohydrate = 34, sugar = 28, addedSugar = 23, protein = 1)

#' @rdname drink
#' @export
SwissMiss_simplyCocoaMilk <- function() new(
  Class = 'nutrition', 
  swissmiss = 'simply-cocoa/simply-cocoa-milk-chocolate',
  name = 'Simply Cocoa Milk Chocolate',
  servingGram = 24, 
  calorie = 100,
  sodium = .15, carbohydrate = 22, addedSugar = 20, protein = 1)



#' @rdname drink
#' @export
Nestle_richChocolate <- function() new(
  Class = 'nutrition', url = 'https://www.nestleprofessional.us/hot-cocoa/rich-chocolate-6-50-x-071-oz',
  brand = 'Nestl\u00e9\U1f1e8\U1f1ed', name = 'Rich Chocolate',
  servingGram = 20, fat = 2, sodium = .19, carbohydrate = 15, sugar = 12, addedSugar = 10)

#' @rdname drink
#' @export
Nestle_skimCocoa <- function() new(
  Class = 'nutrition', nestle = '12240821',
  name = 'Skim Hot Cocoa',
  servingGram = 8, sodium = .135, carbohydrate = 5, sugar = 4, protein = 1)

#' @rdname drink
#' @export
KingArthur_milkChocolate <- function() new(
  Class = 'nutrition', kingarthur = 212571L,
  name = 'Milk Hot Chocolate',
  usd = 12.95/510*28,
  servingGram = 28, servingTbsp = 4,
  calorie = 110,
  fat = 1, sodium = .1, carbohydrate = 22, sugar = 21, addedSugar = 17, protein = 3)


#' @rdname drink
#' @export
Nestle_cocoSupreme <- function() new(
  Class = 'nutrition', nestle = '11002829',
  name = 'Coco Supreme',
  servingGram = 33, fat = 2, sodium = .23, carbohydrate = 27, sugar = 24, addedSugar = 20, protein = 1)


#' @rdname mocaccino
# @noRd
#' @export
WilliamsSonoma_mocha <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Williams Sonoma\U1f1fa\U1f1f8', url = 'https://www.williams-sonoma.com/products/williams-sonoma-mocha-hot-chocolate/')),
  name = 'Mocha Hot Chocolate',
  servingGram = 41, servingTbsp = 5, 
  usd = 24.95/340*41,
  calorie = 220,
  fat = 14, cholesterol = .005, carbohydrate = 24, addedSugar = 20, protein = 2)

#' @rdname mocaccino
#' @export
Starbucks_mochaMix <- function() new(
  Class = 'nutrition', amazon = 'B004WYLFG8', # discontinued
  brand = 'Starbucks\U1f1fa\U1f1f8', name = 'Mocha Powder',
  # bottle 396g
  servingGram = 10, servingTbsp = 1,
  calorie = 40,
  fat = .5, carbohydrate = 8, sugar = 6, protein = 1)


#' @rdname mocaccino
#' @export
Ghirardelli_mochaFrappe <- function() new(
  Class = 'nutrition', 
  amazon = 'B00D6Q9E3E',
  webstaurant = '40866211',
  brand = 'Ghirardelli\U1f1fa\U1f1f8', name = 'Mocha Frapp\u00e9',
  usd = 21.49/1420*45,
  servingGram = 100, servingCup = (100/45)*(1/4), 
  calorie = 391.91,
  fat = 7.803, cholesterol = .991, sodium = .149358, 
  carbohydrate = 83.241, sugar = 66.780, addedSugar = 64.207, protein = 5.282)


# https://www.ghirardelli.com/chocolate-mocha-premium-hot-cocoa-61701cs
# https://www.ghirardelli.com/double-chocolate-hot-cocoa-mix-6-bags-61699cs
# https://www.ghirardelli.com/hot-cocoa-pouch-just-add-water-62012cs


#' @rdname mocaccino
# @noRd
#' @export
Maxwell_mochaSuisse <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Maxwell House\U1f1fa\U1f1f8', url = 'https://www.kraftheinz.com/maxwell-house/products/00043000004432')),
  name = 'Suisse Mocha',
  target = 'A-12959531', usd = 3.59/117*11,
  servingGram = 11, servingTbsp = 2, 
  calorie = 60,
  fat = 4, sodium = .05, carbohydrate = 5, protein = 1)


#' @rdname caffeLatte
# @noRd
#' @export
Starbucks_caffeLatte <- function() new(
  Class = 'nutrition', starbucks_hot = 407L,
  name = 'Caff\u00e8 Latte',
  servingGram = 470, serving_floz = 16, # 473.176ml
  #caffeine 150 mg*
  calorie = 190, 
  fat = 7, cholesterol = .030, sodium = .170, carbohydrate = 19, sugar = 18, protein = 13)

#' @rdname mocaccino
# @noRd
#' @export
Starbucks_mocha <- function() new(
  Class = 'nutrition', starbucks_hot = 408L,
  name = 'Caff\u00e8 Mocha',
  servingGram = 470, serving_floz = 16, # 473.176ml
  #caffeine 175 mg*
  calorie = 370, 
  fat = 15, cholesterol = .045, sodium = .150, carbohydrate = 43, sugar = 35, protein = 14)

Starbucks_mochaSauce <- function() new(
  Class = 'nutrition',
  walmart = '903031815', usd = 8.43/354*30,
  brand = 'Starbucks', name = 'Mocha Sauce',
  servingGram = 30, servingTbsp = 2, # 30ml
  calorie = 100,
  fat = .5, carbohydrate = 23, sugar = 19, protein = 1)

#' @rdname mocaccino
# @noRd
#' @export
Starbucks_mochaFrappuccino <- function() new(
  Class = 'nutrition', starbucks_iced = 426L,
  name = 'Mocha Frappuccino',
  servingGram = 470, serving_floz = 16, # 473.176ml
  calorie = 370,
  # Caffeine 100 mg*
  fat = 15, cholesterol = .045, sodium = .220, carbohydrate = 54, sugar = 51, protein = 5)




#' @rdname matchaLatte
#' @export
TraderJoes_matchaLatte <- function() new(
  Class = 'nutrition', traderjoes = '052512',
  name = 'Matcha\U1f375 Latte Mix',
  servingGram = 45, servingTbsp = 5, fat = 9, sodium = .07, sugar = 17, addedSugar = 16, protein = 2)

#' @rdname matchaLatte
#' @export
Starbucks_matchaLatte <- function() new(
  Class = 'nutrition', starbucks_hot = 468L,
  name = 'Matcha\U1f375 Latte',
  servingGram = 450, serving_floz = 16, # 473.176 ml. not sure about weight..
  usd = 4.95, # Spring 2024
  calorie = 240,
  fat = 7, cholesterol = .025, sodium = .16, sugar = 32, protein = 12)

#' @rdname matchaLatte
#' @export
Starbucks_matchaFrappuccino <- function() new(
  Class = 'nutrition', starbucks_iced = 439L,
  name = 'Matcha\U1f375 Frappuccino',
  servingGram = 450, 
  serving_floz = 16, # 473.176 ml. not sure about weight..
  usd = 5.45, # Spring 2024
  calorie = 420,
  fat = 16, cholesterol = .050, sodium = .240, carbohydrate = 62, sugar = 61, protein = 6)

#' @rdname matchaLatte
#' @export
Starbucks_matchaLatteMix <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Starbucks\U1f1fa\U1f1f8', url = 'https://www.yamibuy.com/en/p/premium-mixes-matcha-latte-instant-coffee-powder-96g/3156004631')),
  name = 'Matcha\U1f375 Latte Mix',
  usd = 10.99/4,
  servingGram = 24, 
  calorie = 103,
  protein = 3.4, fat = 2.8, carbohydrate = 16, sugar = 16, sodium = .13)


#' @rdname mocaccino
# @noRd
#' @export
bargainmums_mocha <- function() new(
  Class = 'recipe', author = 'Bargain Mums', alias_flavor = 'Mocha',
  coffee = 30, 
  cocoa = c(KingArthur_Bensdorp = 50), 
  sugar = 100, drymilk = 110, vanilla_tsp = 1,
  url = 'https://bargainmums.com.au/homemade-mocha-mix')


#' @rdname mocaccino
#' @export
Rebecca_mocha <- function() new(
  Class = 'recipe', author = 'Rebecca', alias_flavor = 'Mocha',
  allrecipes = '23828/hot-mocha-drink-mix/',
  sugar_cup = 1,
  drymilk_cup = 1,
  spice_cup = c(Nestle_coffeeMate = 1),
  cocoa_cup = c(KingArthur_Bensdorp = 1/2),
  coffee_cup = 1/4)

#' @rdname mocaccino
#' @export
Pillsbury_mocha <- function() new(
  Class = 'recipe', author = 'Pillsbury', alias_flavor = 'Mocha',
  url = 'https://www.pillsbury.com/recipes/mocha-mix/c93163dd-c5da-44ff-b3e6-9698e855fd5f',
  spice_cup = c(Nestle_coffeeMate = 2.25),
  sugar_cup = 1.5,
  coffee_cup = c(NescafeGold_espresso_blonde = 3/4),
  cocoa_cup = 3/4)


#' @rdname drink
#' @export
EarlaTaylor_cocoa <- function() new(
  Class = 'recipe', author = 'Earla Taylor', alias_flavor = 'Cocoa Mix',
  allrecipes = '9335/hot-cocoa-mix/',
  drymilk_cup = 10,
  sugar_cup = 4.75,
  cocoa_cup = c(KingArthur_Burgundy = 1.75),
  spice_cup = c(Nestle_coffeeMate = 1.75))


#' @rdname drink
#' @export
Mels_cocoa <- function() new(
  Class = 'recipe', author = 'Mel\'s', alias_flavor = 'Cocoa Mix',
  url = 'https://www.melskitchencafe.com/homemade-hot-chocolate-mix-another-simple-gift-idea/',
  drymilk = 405,
  sugar = 228,
  cocoa = c(KingArthur_Bensdorp = 128),
  flavor = c(Ghirardelli_whiteChocolate = 255),
  salt_tsp = 1/4)


#' @rdname drink
#' @export
AmandaRettke_cocoa <- function() new(
  Class = 'recipe', author = 'Amanda Rettke', alias_flavor = 'Cocoa Mix',
  url = 'https://iambaker.net/hot-cocoa-mix-recipe/',
  sugar = 250,
  cocoa = c(KingArthur_Bensdorp = 118),
  drymilk = 170,
  starch_tsp = c(Wegmans_corn = 2),
  salt_tsp = 1/2 # 1 teaspoon kosher salt
)


