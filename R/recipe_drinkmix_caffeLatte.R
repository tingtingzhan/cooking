
#' @title Caffe Latte
#' 
#' @description
#' ..
#' 
#' @examples
#' caffeLatte()
#' 
#' @name caffeLatte
#' @aliases caffeLatte-class
#' @export
setClass(Class = 'caffeLatte', contains = 'drinkmix', prototype = prototype(
  drymilk = c(Carnation = 40),
  coffee_tsp = c(NescafeGold_espresso_blonde = 4*2), # perfect, do not add more!
  cocoa_tsp = c(KingArthur_Bensdorp = 1*2),
  sugar_tsp = 1
))


#' @rdname caffeLatte
#' @export
caffeLatte <- function() new(
  Class = 'caffeLatte', 
  date = as.Date('2024-10-27'),
  pros = 'my favorite so far')


caffeGoatLatte_blonde <- function() new(
  Class = 'recipe', 
  alias_flavor = 'Caff\u00e8 Goat Latte',
  drymilk = c(Meyenberg_goatWhole_drymilk = 25*2),
  coffee_tsp = c(NescafeGold_espresso_blonde = 4.5*2), 
  pros = 'I love')


