
#' @title Caffe Coconut
#' 
#' @examples
#' diagnose(
#'  caffeCoconut,
#'  caffeCoconut_Luckin,
#'  caffeCoconut_FreeNow0sugar 
#' )
#' @name caffeCoconut
#' @aliases caffeCoconut-class
#' @export
setClass(Class = 'caffeCoconut', contains = 'recipe', prototype = prototype(
  alias_class = '\u751f\u6930\u62ff\u94c1',
  drymilk = c(Carnation = 14),
  coffee_tsp = c(NescafeGold_espresso_blonde = 1),
  cocoa_tsp = c(KingArthur_Bensdorp = .25),
  Stanley14 = Stanley14(treatment = c(
    'add hot water',
    'add all powders, whisk smooth',
    'add barista coconut'
  ))
))


#' @rdname caffeCoconut
#' @export
caffeCoconut <- function() new(
  Class = 'caffeCoconut', 
  alias_flavor = 'FreeNow',
  coconut = c(Freenow_coconutBarista = 225),
  water80 = 185,
  date = as.Date('2025-01-28'))




#' @rdname caffeCoconut
#' @export
caffeCoconut_FreeNow0sugar <- function() new(
  Class = 'caffeCoconut', 
  alias_flavor = 'FreeNow Zero-Sugar',
  coconut = c(Freenow_coconutBarista_0sugar = 225),
  water80 = 185,
  date = as.Date('2025-01-24'),
  cons = 'too sweet for me',
  pros = c('almost tastes the same as commercial version!'))



#' @rdname caffeCoconut
#' @export
caffeCoconut_Luckin <- function() new(
  Class = 'caffeCoconut', 
  alias_flavor = 'Luckin',
  coconut = c(Luckin_coconutmilk = 225+25),
  water80 = 185-25,
  date = as.Date('2025-01-28'),
  cons = c('too sweet', 'taste not enough fat'))





