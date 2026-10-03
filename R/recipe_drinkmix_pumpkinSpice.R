

#' @title Pumpkin Spice Latte Mix
#' 
#' @examples
#' pumpkinSpiceLatte()
#' 
#' nutritionlist(
#'  hotdrink(pumpkinSpiceLatte()),
#'  cooking:::Starbucks_pumpkinSpiceLatte(),
#'  cooking:::Starbucks_pumpkinSpiceFrappuccino()
#' )
#' 
#' @references
#' \url{https://en.wikipedia.org/wiki/Pumpkin_Spice_Latte}
#' 
#' @name pumpkinSpiceLatte
#' @aliases pumpkinSpiceLatteMix-class
#' @export
setClass(Class = 'pumpkinSpiceLatteMix', contains = 'drinkmix', prototype = prototype(
  flavor = 'Pumpkin\U1f383 Spice Latte'
))

#' @rdname pumpkinSpiceLatte
#' @export
pumpkinSpiceLatte <- \() new(
  Class = 'pumpkinSpiceLatteMix',
  dairy = c(Carnation_drymilk = 40),
  coffee_Tbsp = c(NescafeGold_blonde = 1.5),
  sugar_Tbsp = c(Domino_darkBrown = 1),
  puree = c(Libbys_pumpkin = 70),
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1/4),
  date = as.Date('2024-12-04'),
  pros = 'I love!!')

