
#' @title Coconut Drink
#' 
#' @examples
#' diagnose(
#'  caffeCoconut_FreeNow,
#'  caffeCoconut_Luckin,
#'  caffeCoconut_FreeNow0sugar 
#' )
#' @name coconutdrink
#' @aliases caffeCoconut-class
#' @export
setClass(Class = 'caffeCoconut', contains = 'recipe', prototype = prototype(
  alias_class = '\u751f\u6930\u62ff\u94c1',
  drymilk = c(Carnation = 14),
  coffee_tsp = c(NescafeGold_espresso_blonde = 1),
  cocoa_tsp = c(KingArthur_Bensdorp = .25),
  Stanley14 = Stanley14(note = 'I cannot eat too much coconut butter!!')
))

#' @rdname coconutdrink
#' @export
caffeCoconut_FreeNow0sugar <- function() new(
  Class = 'caffeCoconut', 
  alias_flavor = 'FreeNow 0Sugar',
  coconut = c(Freenow_coconutBarista_0sugar = 225),
  water = 185,
  date = as.Date('2025-01-24'),
  pros = c('almost tastes the same as commercial version!')
)

#' @rdname coconutdrink
#' @export
caffeCoconut_FreeNow <- function() new(
  Class = 'caffeCoconut', 
  alias_flavor = 'FreeNow',
  coconut = c(Freenow_coconutBarista = 225),
  water = 185,
  date = as.Date('2025-01-28'),
  pros = c('I like this sweetness')
)


#' @rdname coconutdrink
#' @export
caffeCoconut_Luckin <- function() new(
  Class = 'caffeCoconut', 
  alias_flavor = 'Luckin',
  coconut = c(Luckin_coconutmilk = 225+25),
  water = 185-25#,
  #date = as.Date('2025-01-28'),
  #pros = c('I like this sweetness')
)




if (FALSE) {
  # to salvage a failed experiment
  
  caffeCoconut_try2 <- function() new(
    Class = 'caffeCoconut', 
    coffee_Tbsp = c(NescafeGold_espresso_blonde = 1.4), # coffee too strong
    cocoa_tsp = c(KingArthur_Bensdorp = 1),
    coconut = c(Freenow_coconutBarista_0sugar = 225),
    water = 185
  )
  
  (tmp = caffeCoconut_try2()/431.2*334)
  e1 = caffeCoconut_FreeNow0sugar()*4; e2 = tmp
  (e1 - e2)
  
}

