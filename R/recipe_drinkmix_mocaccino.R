

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
#' @aliases mocaccino-class
#' @export
setClass(Class = 'mocaccino', contains = 'drinkmix', prototype = prototype(
  drymilk = c(Carnation = 40),
  coffee_tsp = c(NescafeGold_espresso_blonde = 4),
  cocoa_tsp = c(KingArthur_Bensdorp = 8),
  sugar_tsp = 2.5 # well tested!!
))

#' @rdname mocaccino
#' @export
mocaccino <- function() new(Class = 'mocaccino', date = as.Date('2024-11-02'), pros = 'perfected!!!')



