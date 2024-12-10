


#' @title Other Peoples Cream Cheese Dip Recipes
#' 
#' @examples
#' diagnose(
#'  subtract(pumpkin_creamCheeseDip_bakethat, sugar = 135),
#'  subtract(pumpkin_creamCheeseDip_Julie, sugar = 180)
#' )
#' @keywords internal
#' @name creamCheeseDip_other
NULL


#' @rdname creamCheeseDip_other
#' @export
pumpkin_creamCheeseDip_bakethat <- function() new(
  Class = 'recipe',
  author = 'Bake That!',
  creamCheese_brick = 1,
  sugar_cup = c(Domino_10x = 1.5),
  pumpkin = 425, # 15 oz
  vanilla_tsp = 1,
  pumpkinSpice_Tbsp = 1/2,
  cinnamon_tsp = 1/2,
  youtube = 'G87HfZjdDwI'
)


#' @rdname creamCheeseDip_other
#' @export
pumpkin_creamCheeseDip_Julie <- function() new(
  Class = 'recipe',
  julieseatsandtreats = c('ktyuI7JHQ_Q' = 'sweet-pumpkin-dip'),
  creamCheese_brick = 2,
  pumpkin = 425, # 15 oz
  sugar_cup = c(Domino_10x = 2),
  cinnamon_tsp = 2,
  ginger_tsp = 1
)
