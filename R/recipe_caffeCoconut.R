
#' @title Caffe Coconut
#' 
#' @examples
#' caffeCoconut()
#' @name caffeCoconut-class
#' @export
setClass(Class = 'caffeCoconut', contains = 'recipe', prototype = prototype(
  class2 = '\u751f\u6930\u62ff\u94c1',
  dairy_Tbsp = c(Carnation_drymilk = 1),
  dairy_tsp = c(Carnation_drymilk = 1),
  coffee_Tbsp = .5,
  cocoa_tsp = c(KingArthur_Bensdorp = .25)#,
  #tool = list(Stanley14(treatment = c(
  #  'add hot water',
  #  'add all powders, whisk smooth',
  #  'add barista coconut'
  #)))
  # now using owala 12oz
))


#' @rdname caffeCoconut-class
#' @export
caffeCoconut <- \() new(
  Class = 'caffeCoconut', 
  flavor = 'FreeNow',
  coconut = c(Freenow_coconutBarista = 115),
  water95 = 325, # 596 - 272
  date = as.Date('2026-09-02'), # was
  review = 'been drinking for >1yr'
  )







