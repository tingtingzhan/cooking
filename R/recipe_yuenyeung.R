
#' @title Yuen Yeung Coconut
#' 
#' @examples
#' diagnose(
#'  caffeCoconut,
#'  caffeCoconut_Luckin,
#'  caffeCoconut_FreeNow0sugar 
#' )
#' @name yuenyeungCoconut
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


#' @rdname yuenyeungCoconut
#' @export
yuenyeungCoconut <- function() new(
  Class = 'yuenyeungCoconut', 
  alias_flavor = 'FreeNow',
  coconut = c(Freenow_coconutBarista = 225),
  boilingWater = 185,
  date = as.Date('2025-03-15'))


