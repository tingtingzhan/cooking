
#' @title Mocaccino, Commercial or Other People's Recipe
#' 
#' @examples
#' diagnose_(
#'  mocaccino,
#'  Rebecca_mocha,
#'  Pillsbury_mocha,
#'  EarlaTaylor_cocoa,
#'  Mels_cocoa,
#'  AmandaRettke_cocoa,
#'  bargainmums_mocha
#' ) # compare powder recipes
#' 
#' nutrition_(
#'  mocaccino,
#'  Maxwell_mochaSuisse,
#'  WilliamsSonoma_mocha,
#'  Ghirardelli_mochaFrappe,
#'  KingArthur_milkChocolate,
#'  Nestle_skimCocoa,
#'  Nestle_richChocolate,
#'  Nestle_cocoSupreme,
#'  SwissMiss_simplyCocoaMilk,
#'  SwissMiss_milkCocoa,
#'  Starbucks_cocoa,
#'  StarbucksKcup_cocoa,
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
#'  Starbucks_mochaFrappuccino,
#'  Starbucks_mochaFrappuccino_bottle
#' ) # compare frappe
#' @name mocaccino_other
#' @keywords internal 
#' @export
WilliamsSonoma_mocha <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Williams Sonoma\U1f1fa\U1f1f8', url = 'https://www.williams-sonoma.com/products/williams-sonoma-mocha-hot-chocolate/')),
  name = 'Mocha Hot Chocolate',
  servingGram = 41, servingTbsp = 5, 
  usd = 24.95/340*41,
  calorie = 220,
  fat = 14, cholesterol = .005, carbohydrate = 24, addedSugar = 20, protein = 2)

#' @rdname mocaccino_other
#' @export
Starbucks_mocha <- function() new(
  Class = 'nutrition', starbucks_hot = 408L,
  name = 'Caff\u00e8 Mocha',
  servingGram = 470, serving_floz = 16, # 473.176ml
  #caffeine 175 mg*
  calorie = 370, 
  fat = 15, cholesterol = .045, sodium = .150, carbohydrate = 43, sugar = 35, protein = 14)


#' @rdname mocaccino_other
#' @export
Starbucks_mochaFrappuccino <- function() new(
  Class = 'nutrition', starbucks_iced = 426L,
  name = 'Mocha Frappuccino',
  servingGram = 470, serving_floz = 16, # 473.176ml
  calorie = 370,
  # Caffeine 100 mg*
  fat = 15, cholesterol = .045, sodium = .220, carbohydrate = 54, sugar = 51, protein = 5)

#' @rdname mocaccino_other
#' @export
Starbucks_mochaFrappuccino_bottle <- function() new(
  Class = 'nutrition',
  name = 'Mocha Frappuccino',
  brand = 'Starbucks (Bottled)',
  walmart = '14532482', costcoBiz = '100228968', target = 'A-81793567',
  serving_floz = 13.7, servingGram = 405, # use water density
  calorie = 260,
  fat = 4.5, cholesterol = .02, sodium = .14, carbohydrate = 47, sugar = 45, protein = 9)


#' @rdname mocaccino_other
#' @export
Maxwell_mochaSuisse <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Maxwell House\U1f1fa\U1f1f8', url = 'https://www.kraftheinz.com/maxwell-house/products/00043000004432')),
  name = 'Suisse Mocha',
  target = 'A-12959531', usd = 3.59/117*11,
  servingGram = 11, servingTbsp = 2, 
  calorie = 60,
  fat = 4, sodium = .05, carbohydrate = 5, protein = 1)

#' @rdname mocaccino_other
#' @export
Ghirardelli_mochaFrappe <- function() new(
  Class = 'nutrition', 
  amazon = 'B00D6Q9E3E',
  webstaurant = '40866211',
  ghirardelli = 'iced-blended-beverages-information',
  name = 'Mocha Frapp\u00e9',
  usd = 21.49/1420*45,
  servingGram = 100, servingCup = (100/45)*(1/4), 
  calorie = 391.91,
  fat = 7.803, cholesterol = .991, sodium = .149358, 
  carbohydrate = 83.241, sugar = 66.780, addedSugar = 64.207, protein = 5.282)


#' @rdname mocaccino_other
#' @export
Starbucks_mochaMix <- function() new(
  Class = 'nutrition', amazon = 'B004WYLFG8', # discontinued
  brand = 'Starbucks\U1f1fa\U1f1f8', name = 'Mocha Mix',
  # bottle 396g
  servingGram = 10, servingTbsp = 1,
  calorie = 40,
  fat = .5, carbohydrate = 8, sugar = 6, protein = 1)




#' @rdname mocaccino_other
#' @export
Pillsbury_mocha <- function() new(
  Class = 'recipe', author = 'Pillsbury', alias_flavor = 'Mocha Mix',
  url = 'https://www.pillsbury.com/recipes/mocha-mix/c93163dd-c5da-44ff-b3e6-9698e855fd5f',
  spice_cup = c(Nestle_coffeeMate = 2.25),
  sugar_cup = 1.5, # didnt say confectioners or granulated
  coffee_cup = c(NescafeGold_espresso_blonde = 3/4),
  cocoa_cup = 3/4)



#' @rdname mocaccino_other
#' @export
Rebecca_mocha <- function() new(
  Class = 'recipe', author = 'Rebecca', alias_flavor = 'Mocha Mix',
  allrecipes = '23828/hot-mocha-drink-mix/',
  sugar_cup = c(Domino_granulated = 1),
  drymilk_cup = 1,
  spice_cup = c(Nestle_coffeeMate = 1),
  cocoa_cup = c(KingArthur_Bensdorp = 1/2),
  coffee_cup = 1/4)



#' @rdname mocaccino_other
#' @export
bargainmums_mocha <- function() new(
  Class = 'recipe', author = 'Bargain Mums', alias_flavor = 'Mocha Mix',
  coffee = 30, 
  cocoa = c(KingArthur_Bensdorp = 50), 
  sugar = 100, drymilk = 110, vanilla_tsp = 1,
  url = 'https://bargainmums.com.au/homemade-mocha-mix')



#' @rdname mocaccino_other
#' @export
Starbucks_cocoa <- function() new(
  Class = 'nutrition', 
  sams = 'P03020738', usd = 8.48/567*28,
  costco = '100071096',
  brand = 'Starbucks\U1f1fa\U1f1f8', name = 'Hot Cocoa (Tin)',
  servingGram = 28, servingTbsp = 2.5, 
  calorie = 100,
  fat = 2.5, carbohydrate = 22, sugar = 17, addedSugar = 16, protein = 2)

#' @rdname mocaccino_other
#' @export
SwissMiss_milkCocoa <- function() new(
  Class = 'nutrition', 
  swissmiss = 'classics/milk-chocolate',
  name = 'Milk Chocolate',
  servingGram = 39, 
  calorie = 160,
  fat = 2.5, sodium = .17, carbohydrate = 34, sugar = 28, addedSugar = 23, protein = 1)

#' @rdname mocaccino_other
#' @export
SwissMiss_simplyCocoaMilk <- function() new(
  Class = 'nutrition', 
  swissmiss = 'simply-cocoa/simply-cocoa-milk-chocolate',
  name = 'Simply Cocoa Milk Chocolate',
  servingGram = 24, 
  calorie = 100,
  sodium = .15, carbohydrate = 22, addedSugar = 20, protein = 1)



#' @rdname mocaccino_other
#' @export
Nestle_richChocolate <- function() new(
  Class = 'nutrition', url = 'https://www.nestleprofessional.us/hot-cocoa/rich-chocolate-6-50-x-071-oz',
  brand = 'Nestl\u00e9\U1f1e8\U1f1ed', name = 'Rich Chocolate',
  servingGram = 20, fat = 2, sodium = .19, carbohydrate = 15, sugar = 12, addedSugar = 10)

#' @rdname mocaccino_other
#' @export
Nestle_skimCocoa <- function() new(
  Class = 'nutrition', nestle = '12240821',
  name = 'Skim Hot Cocoa',
  servingGram = 8, sodium = .135, carbohydrate = 5, sugar = 4, protein = 1)

#' @rdname mocaccino_other
#' @export
KingArthur_milkChocolate <- function() new(
  Class = 'nutrition', kingarthur = 212571L,
  name = 'Milk Hot Chocolate',
  usd = 12.95/510*28,
  servingGram = 28, servingTbsp = 4,
  calorie = 110,
  fat = 1, sodium = .1, carbohydrate = 22, sugar = 21, addedSugar = 17, protein = 3)


#' @rdname mocaccino_other
#' @export
Nestle_cocoSupreme <- function() new(
  Class = 'nutrition', nestle = '11002829',
  name = 'Coco Supreme',
  servingGram = 33, fat = 2, sodium = .23, carbohydrate = 27, sugar = 24, addedSugar = 20, protein = 1)


#' @rdname mocaccino_other
#' @export
Starbucks_mochaSauce <- function() new(
  Class = 'nutrition',
  walmart = '903031815', usd = 8.43/354*30,
  brand = 'Starbucks', name = 'Mocha Sauce',
  servingGram = 30, servingTbsp = 2, # 30ml
  calorie = 100,
  fat = .5, carbohydrate = 23, sugar = 19, protein = 1)



#' @rdname mocaccino_other
#' @export
EarlaTaylor_cocoa <- function() new(
  Class = 'recipe', author = 'Earla Taylor', alias_flavor = 'Cocoa Mix',
  allrecipes = '9335/hot-cocoa-mix/',
  drymilk_cup = 10,
  sugar_cup = c(Domino_10x = 4.75),
  cocoa_cup = c(KingArthur_Burgundy = 1.75),
  spice_cup = c(Nestle_coffeeMate = 1.75))


#' @rdname mocaccino_other
#' @export
Mels_cocoa <- function() new(
  Class = 'recipe', author = 'Mel\'s', alias_flavor = 'Cocoa Mix',
  url = 'https://www.melskitchencafe.com/homemade-hot-chocolate-mix-another-simple-gift-idea/',
  drymilk = 405,
  sugar = 228,
  cocoa = c(KingArthur_Bensdorp = 128),
  flavor = c(Ghirardelli_whiteChocolate = 255),
  salt_tsp = 1/4)


#' @rdname mocaccino_other
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



#' @rdname mocaccino_other
#' @export
StarbucksKcup_cocoa <- function() new(
  Class = 'nutrition', starbucks = 'classic-hot-cocoa',
  name = 'Hot Cocoa (K-cup)',
  servingGram = 21, 
  calorie = 90,
  fat = 3, sodium = .19, carbohydrate = 13, addedSugar = 13, protein = 2)

# https://www.ghirardelli.com/chocolate-mocha-premium-hot-cocoa-61701cs
# https://www.ghirardelli.com/double-chocolate-hot-cocoa-mix-6-bags-61699cs
# https://www.ghirardelli.com/hot-cocoa-pouch-just-add-water-62012cs




