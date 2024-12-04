

# Must use Dutch-processed cocoa powder'
# https://www.seriouseats.com/difference-dutch-process-natural-cocoa-powder-substitute
# Since Dutch process cocoa isn't acidic, it doesn't react with alkaline leaveners like baking soda to produce carbon dioxide. That's why recipes that use Dutch process cocoa are usually leavened by baking powder, which has a neutral pH.


#' @title \linkS4class{drinkmix} Recipes
#' 
#' @description ..
#' 
#' @name drink
#' @aliases drinkmix-class
#' @export
setClass(Class = 'drinkmix', contains = 'recipe', prototype = prototype(
  alias_class = 'Mix' # '\u901f\u6eb6\u7c89'
), validity = function(object) {
  if (length(object@boilingWater) || length(object@iceWater) ||
      length(object@water95) || length(object@water80) || length(object@water70)) # all kind of water
    stop('`drinkmix` object cannot have water')
})


#' @rdname drink
#' @aliases drink-class
#' @export
setClass(Class = 'drink', contains = 'recipe')
setClass(Class = 'caffeLatte_', contains = 'drink')
setClass(Class = 'cocoa_', contains = 'drink')
setClass(Class = 'matchaGoatLatte_', contains = 'drink')
setClass(Class = 'matchaLatte_', contains = 'drink')
setClass(Class = 'mocaccino_', contains = 'drink')
setClass(Class = 'tiramisu_', contains = 'drink')
setClass(Class = 'pumpkinSpiceLatte_', contains = 'drink')
setClass(Class = 'milktea_', contains = 'drink')




#' @rdname drink
#' 
#' @param x \linkS4class{drinkmix} object
#' 
#' @param water80 ..
#' 
#' @param ice ..
#' 
#' @param iceWater ..
#' 
#' @param ... ..
#' 
#' @details
#' Function [hotdrink] adds 2 US cup or 236.6*2 grams of hot water (70-80C) to \linkS4class{drinkmix}.
#' 
#' @returns
#' Function [hotdrink] returns a \linkS4class{drink} object, 
#' except for that function [hotdrink.nutrition] returns a \linkS4class{nutrition} object.
#' 
#' @export
hotdrink <- function(x, ...) UseMethod(generic = 'hotdrink') 

#' @rdname drink
#' @export hotdrink.function
#' @export
hotdrink.function <- function(x, ...) hotdrink(x = x(), ...)
# `x()` may evaluate to \linkS4class{recipe} or \linkS4class{nutrition}

#' @rdname drink
#' @export hotdrink.drinkmix
#' @export
hotdrink.drinkmix <- function(
    x, 
    water80 = if (inherits(x, what = 'pumpkinSpiceLatteMix')) {
      236.6*2 - unname(x@pumpkin)
    } else if (inherits(x, what = 'milkteaMix')) {
      560 # fit in 20oz mug
      # cannot make 'frappe' from teabags 
    } else 236.6*2, # 2 US cup
    ...
) {
  x@water80 <- water80
  x@alias <- character(); x@alias_class <- '\u70ed\u996e'
  x@Stanley20 <- Stanley20(treatment = c(
    'whisk together all powders (syrup also okay)', 
    'add half of water, whisk until smooth',
    'sweep cup bottom with a square spatula',
    'add rest of water, whisk until froth',
    '(optional) add liqueur last, which curdles dry milk'
  ))
  cls <- class(x) # ?devtools::check warns on `if (class(x) == '.')`
  new(Class = if (cls == 'drinkmix') {
    'drink' # undefined 'drinkmix'
  } else gsub('Mix$', replacement = '_', x = class(x)), x)
}

#' @rdname drink
#' @export hotdrink.nutrition
#' @export
hotdrink.nutrition <- function(x, water80 = stop('Find suggested hot water on packaging'), ...) {
  x@cost_ <- character()
  x@usd <- sum(x@usd, Wegmans_water()@usd/Wegmans_water()@servingGram * water80)
  x@jpy <- numeric()
  x@water <- sum(x@water, water80)
  x@servingGram <- sum(x@servingGram, water80)
  x@servingTsp <- numeric()
  return(new(Class = 'nutrition', x))
}


#' @rdname drink
#' 
#' @details
#' Function [frappe] adds 16 fl oz (1.97 US cup, 473 ml) of ice water + shaved ice to \linkS4class{drinkmix}.
#' Up to 250g ice cubs, plus 230g ice water, can be used in Nutribullet Ultra 20oz cup.
#' 320g ice cubs (one OXO tray), plus 150g ice water, is too dry for Nutribullet Ultra 24oz cup, 
#' also too dry for drinking.
#' 
#' @returns
#' Function [frappe] returns a \linkS4class{drink} object.
#' 
#' @export
frappe <- function(x, ...) UseMethod(generic = 'frappe')

#' @rdname drink
#' @export frappe.function
#' @export
frappe.function <- function(x, ...) frappe(x = x(), ...)
# `x()` may evaluate to \linkS4class{recipe} or \linkS4class{nutrition}

#' @rdname drink
#' @export frappe.drinkmix
#' @export
frappe.drinkmix <- function(
    x, 
    ice = if (inherits(x, what = 'pumpkinSpiceLatteMix')) {
      236.6 - unname(x@pumpkin)/2
    } else 236.6, # 1 US cup, Nutribullet can handle!!
    iceWater = ice,
    ...
) {
  x@ice <- ice
  x@iceWater <- if (length(x@milk)) numeric() else iceWater
  x@alias <- character(); x@alias_class <- 'Frapp\u00e9'
  x@nutribullet20 <- nutribullet20(
    treatment = 'put in ice cubes first, powders next, liquids last'
  )
  cls <- class(x) # ?devtools::check warns on `if (class(x) == '.')`
  new(Class = if (cls == 'drinkmix') {
    'drink' # undefined 'drinkmix'
  } else gsub('Mix$', replacement = '_', x = class(x)), x)
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
})



















#' @title Caffe Latte
#' 
#' @description
#' ..
#' 
#' @examples
#' caffeLatte()
#' 
#' @name caffeLatte
#' @aliases caffeLatteMix-class
#' @export
setClass(Class = 'caffeLatteMix', contains = 'drinkmix', prototype = prototype(
  drymilk = c(Carnation_drymilk = 40),
  coffee_tsp = c(NescafeGold_espresso_blonde = 4*2), # perfect, do not add more!
  cocoa_tsp = c(KingArthur_Bensdorp = 1*2),
  sugar_tsp = 1
))


#' @rdname caffeLatte
#' @export
caffeLatte <- function() new(
  Class = 'caffeLatteMix', 
  date = as.Date('2024-10-27'),
  pros = 'my favorite so far')


caffeGoatLatte_blonde <- function() new(
  Class = 'recipe', 
  alias_flavor = 'Caff\u00e8 Goat Latte',
  drymilk = c(Meyenberg_goatWhole_drymilk = 25*2),
  coffee_tsp = c(NescafeGold_espresso_blonde = 4.5*2), 
  pros = 'I love')









#' @title Caffe Mocha
#' 
#' @description
#' ..
#' 
#' @references 
#' \url{https://en.wikipedia.org/wiki/Caffè_mocha}
#' 
#' @note
#' I don't want to try goat milk for mocaccino.
#' 
#' @examples
#' mocaccino()
#' @name mocaccino
#' @aliases mocaccinoMix-class
#' @export
setClass(Class = 'mocaccinoMix', contains = 'drinkmix', prototype = prototype(
  drymilk = c(Carnation_drymilk = 40),
  coffee_tsp = c(NescafeGold_espresso_blonde = 4),
  cocoa_tsp = c(KingArthur_Bensdorp = 8),
  sugar_tsp = 2.5 # well tested!!
))

#' @rdname mocaccino
#' @export
mocaccino <- function() new(Class = 'mocaccinoMix', date = as.Date('2024-11-02'), pros = 'perfected!!!')







#' @title Matcha Latte
#' 
#' @description ..
#' 
#' @examples
#' matchaLatte()
#' @name matchaLatte
#' @aliases matchaLatteMix-class
#' @export
setClass(Class = 'matchaLatteMix', contains = 'drinkmix', prototype = prototype(
  alias_class = 'Latte Mix', # 'Latte\u901f\u6eb6\u7c89',
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










#' @title Matcha Latte with Goat Milk
#' 
#' @description
#' 6g of sado-grade matcha.
#' 
#' @examples
#' matchaGoatLatte()
#' 
#' diagnose(
#'  matchaLatte,
#'  matchaGoatLatte
#' ) # compare dry powder
#' 
#' diagnose(
#'  hotdrink(matchaLatte),
#'  hotdrink(matchaGoatLatte)
#' ) # compare hot drink
#' @name matchaGoatLatte
#' @aliases matchaGoatLatteMix-class
#' @export
setClass(Class = 'matchaGoatLatteMix', contains = 'drinkmix', prototype = prototype(
  alias_class = '\u7f8a\u5976Latte\u901f\u6eb6\u7c89',
  drymilk = c(Meyenberg_goat_drymilk = 10*2, Meyenberg_goatWhole_drymilk = 10*2)
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

matchaLatte_maeda <- function() new(Class = 'matchaLatteMix', drymilk = c(Carnation_drymilk = 25*2), matcha_Tbsp = c(maeda_matcha = 1*2), sugar_tsp = 1.5*2, pros = 'okay')

matchaLatte_ito <- function() new(Class = 'matchaLatteMix', drymilk = c(Carnation_drymilk = 25*2), matcha_Tbsp = c(ItoEn_matcha = 1*2), sugar_tsp = 1.5*2, pros = 'okay')



#' @title Pumpkin Spice Latte Mix
#' 
#' @examples
#' pumpkinSpiceLatte()
#' 
#' @name pumpkinSpiceLatte
#' @aliases pumpkinSpiceLatteMix-class
#' @export
setClass(Class = 'pumpkinSpiceLatteMix', contains = 'drinkmix', prototype = prototype(
  alias_flavor = 'Pumpkin\U1f383 Spice Latte'
))

#' @rdname pumpkinSpiceLatte
#' @export
pumpkinSpiceLatte <- function() new(
  Class = 'pumpkinSpiceLatteMix',
  drymilk = c(Carnation_drymilk = 40),
  coffee_Tbsp = c(NescafeGold_espresso_blonde = 1.5),
  brownSugar_Tbsp = 1,
  pumpkin = 70,
  pumpkinSpice_tsp = 1/4,
  date = as.Date('2024-12-04'),
  pros = 'I love!!')





# @rdname drink
# @export
#lemonade <- function() new(
#  Class = 'recipe', alias_flavor = 
# ### that lemonade mix ???  into an iceDrink
#)






#' @title \linkS4class{milkteaMix} Recipes
#' 
#' @description
#' Milk tea (from tea bags).
#' 
#' @examples
#' EarlGrey_milktea()
#' Ceylon_milktea()
#' chai_milktea()
#' 
#' @name milkteaMix
#' @aliases milkteaMix-class
#' @export
setClass(Class = 'milkteaMix', contains = 'drinkmix', prototype = prototype(
  alias_class = '\u5976\u8336',
  drymilk = 40, 
  brownSugar_tsp = 2, # 1tsp too bland; 1Tbsp too sweet
  #water95 = 560, 
  Stanley20 = Stanley20(treatment = c(
    'add half of boiling water to powders, whisk until froth',
    'add rest of boiling water, whisk',
    'add tea bags',
    'soak (covered) for 1hr+'
  ))
))



#' @rdname milkteaMix
#' @export
EarlGrey_milktea <- function() new(
  Class = 'milkteaMix', 
  alias_flavor = 'Earl Grey', 
  teabag = c(Twinings_strongEarlGrey = 1, Twinings_EarlGrey = 3), 
  review = 'try')


#' @rdname milkteaMix
#' @export
Ceylon_milktea <- function() new(
  Class = 'milkteaMix', 
  teabag = c(Stassen_Ceylon = 4), 
  date = as.Date('2024-10-06'),
  pros = 'I like!')



#' @rdname milkteaMix
#' @export
chai_milktea <- function() new(
  Class = 'milkteaMix', 
  teabag = c(Twinings_ultraChai = 4), 
  review = 're-try')










#' @title \linkS4class{tiramisuMix} Recipes
#' 
#' @name tiramisuMix
#' @aliases tiramisuMix-class
#' @export
setClass(Class = 'tiramisuMix', contains = 'drinkmix', prototype = prototype(
  alias_class = '\u901f\u6eb6\u7c89',
  drymilk = c(Carnation_drymilk = 25*2),
  
  # old base
  #coffee_tsp = c(NescafeGold_espresso_blonde = 2*2)
  
  # new base!!!
  coffee_tsp = c(NescafeGold_espresso_blonde = 2.5*2),
  cocoa_tsp = c(KingArthur_Bensdorp = .375*2)
))


#' @rdname tiramisuMix
#' @export
tiramisuMix <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Baileys_espresso = 2.25*2), 
  pros = 'Wow!! Use as default!', date = as.Date('2024-06-10'))


tiramisuMix_Baileys <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Baileys_tiramisu = 2.25*2), 
  review = 'hypothetical model')



#' @rdname tiramisuMix
#' @export
tiramisuMix_Kahlua <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Kahlua_coffee = 2*2), 
  date = as.Date('2024-05-13'), 
  pros = 'Old base: alcohol just right; I cannot take more', 
  cons = 'Old base: a little too sweet',
  review = 'try new base!!')

#' @rdname tiramisuMix
#' @export
tiramisuMix_FratelliVincenzi <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(FratelliVincenzi_espresso = 1.25*2), 
  pros = 'Old base: I like', date = as.Date('2024-05-15'),
  review = 'try new base!!')

#' @rdname tiramisuMix
#' @export
tiramisuMix_CaffeBorghetti <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(CaffeBorghetti = 1.5*2), 
  pros = 'Old base: sweetness just right', date = as.Date('2024-05-13'))

#' @rdname tiramisuMix
#' @export
tiramisuMix_Grind <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Grind_espresso = 1.25*2), 
  pros = 'Old base: I love!!', date = as.Date('2024-05-18'))

#' @rdname tiramisuMix
#' @export
tiramisuMix_Sabroso <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Sabroso_coffee = (1+5/8)*2),
  pros = 'Old base: I like', date = as.Date('2024-05-18'))



tiramisuMix_CafeGranita <- function() new(
  Class = 'tiramisuMix',
  liqueur_tsp = c(CafeGranita_coffee = (1+3/4)*2),
  review = 'try')


tiramisuMix_Kikisi <- function() new(
  Class = 'tiramisuMix',
  liqueur_tsp = c(Kikisi_coffee = 1.875*2),
  review = 'try'
)

ryeWhisky_latte_FAIL <- function() new(
  Class = 'tiramisuMix', syrup_tsp = c(Runamok_ryeWhisky = 1.5), coffee_tsp = 1.5, 
  cons = c('too sweet', 'not enough alcohol'))





