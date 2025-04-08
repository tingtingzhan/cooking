
#' @title Yuen Yeung Latte and Coconut Latte
#' 
#' @examples
#' diagnose(
#'  caffeCoconut,
#'  caffeCoconut_Luckin,
#'  caffeCoconut_FreeNow0sugar 
#' )
#' @name yuenyeung
#' @aliases yuenyeungCoconut-class
#' @export
setClass(Class = 'yuenyeungCoconut', contains = 'recipe', prototype = prototype(
  alias_class = '\u751f\u6930\u9e33\u9e2f',
  drymilk = c(Carnation = 14),
  coffee_tsp = c(NescafeGold_espresso_blonde = 1),
  cocoa_tsp = c(KingArthur_Bensdorp = .25),
  teabag = c(Twinings_EnglishBreakfast = 2),
  Stanley14 = Stanley14(treatment = c(
    'add teabags and boiling water',
    'add all powders, whisk smooth',
    'add barista coconut'
  ))
))


#' @rdname yuenyeung
#' @export
yuenyeungCoconut <- function() new(
  Class = 'yuenyeungCoconut', 
  alias_flavor = 'FreeNow',
  coconut = c(Freenow_coconutBarista = 225),
  boilingWater = 185,
  date = as.Date('2025-03-15'))

yuenyeungLatte_try2 <- function() new(
  Class = 'recipe',
  drymilk = c(Carnation = 30),
  heavyCream = 10,
  brownSugar = 5,
  coffee_tsp = c(NescafeGold_espresso_blonde = 1.5),
  cocoa_tsp = c(KingArthur_Bensdorp = .5),
  teabag = c(Twinings_EnglishBreakfast = 3),
  boilingWater = 400
)

yuenyeungLatte_try1 <- function() new(
  Class = 'recipe',
  drymilk = c(Carnation = 30),
  heavyCream = 10,
  brownSugar = 5,
  coffee_tsp = c(NescafeGold_espresso_blonde = 1),
  cocoa_tsp = c(KingArthur_Bensdorp = .25),
  teabag = c(Twinings_EnglishBreakfast = 2),
  boilingWater = 400,
  cons = c('add flavor')
)
