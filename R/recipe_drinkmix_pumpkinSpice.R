

#' @title Pumpkin Spice Latte Mix
#' 
#' @examples
#' pumpkinSpiceLatte()
#' 
#' @references
#' \url{https://en.wikipedia.org/wiki/Pumpkin_Spice_Latte}
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
  drymilk = c(Carnation = 40),
  coffee_Tbsp = c(NescafeGold_espresso_blonde = 1.5),
  brownSugar_Tbsp = 1,
  pumpkin = 70,
  pumpkinSpice_tsp = 1/4,
  date = as.Date('2024-12-04'),
  pros = 'I love!!')

