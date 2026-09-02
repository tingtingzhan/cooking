
#' @title Caffe Coconut
#' 
#' @examples
#' caffeCoconut()
#' @name caffeCoconut-class
#' @export
setClass(Class = 'caffeCoconut', contains = 'recipe', prototype = prototype(
  alias_class = '\u751f\u6930\u62ff\u94c1',
  drymilk_Tbsp = 1,
  drymilk_tsp = 1,
  coffee_Tbsp = .5,
  cocoa_tsp = c(KingArthur_Bensdorp = .25)#,
  #Stanley14 = Stanley14(treatment = c(
  #  'add hot water',
  #  'add all powders, whisk smooth',
  #  'add barista coconut'
  #))
  # now using owala 12oz
))


#' @rdname caffeCoconut-class
#' @export
caffeCoconut <- \() new(
  Class = 'caffeCoconut', 
  alias_flavor = 'FreeNow',
  coconut = c(Freenow_coconutBarista = 115),
  water95 = 325, # 596 - 272
  date = as.Date('2026-09-02'), # was
  review = 'been drinking for >1yr'
  )







