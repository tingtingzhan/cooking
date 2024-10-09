


#' @title \linkS4class{creamCheeseDip} Recipes
#' 
#' @description
#' \linkS4class{creamCheeseDip} contains much more water than 
# \linkS4class{creamCheeseSpread}, 
#' deprecated `creamCheeseSpread` class,
#' thus cannot be *spread*ed.
#' 
#' \linkS4class{creamCheeseDip} is also perfect for dressing.
#' 
#' @examples
#' pumpkin_creamCheeseDip()
#' 
#' nutrition_(
#'  pumpkin_creamCheeseDip,
#'  subtract(pumpkin_creamCheeseDip_bakethat, sugar = 185),
#'  subtract(pumpkin_creamCheeseDip_Julie, sugar = 245)
#' )
#' 
#' @name creamCheeseDip
#' @aliases creamCheeseDip-class
#' @export
setClass(Class = 'creamCheeseDip', contains = 'recipe', prototype = prototype(
  alias_class = '\u5976\u6cb9\u5976\u916a\u8638\u6599',
  creamCheese = c(Nancys = 227),
  instruction = c(
    'Whip everything (chilled). Careful not to splash',
    'Do not freeze'
  )
))




#' @rdname creamCheeseDip
#' @export
pumpkin_creamCheeseDip <- function() new(
  Class = 'creamCheeseDip', 
  pumpkin = 300,
  brownSugar = 25,
  pumpkinSpice_Tbsp = 1/2,
  cinnamon_tsp = 1/2,
  ginger_tsp = 1/2,
  review = 'try'
)






#' @rdname creamCheeseDip
#' @export
pumpkin_creamCheeseDip_bakethat <- function() new(
  Class = 'recipe',
  author = 'Bake That!',
  creamCheese = c(Nancys = 227),
  sugar_cup = 1.5,
  pumpkin = 425, # 15 oz
  vanilla_tsp = 1,
  pumpkinSpice_Tbsp = 1/2,
  cinnamon_tsp = 1/2,
  youtube = 'G87HfZjdDwI'
)


#' @rdname creamCheeseDip
#' @export
pumpkin_creamCheeseDip_Julie <- function() new(
  Class = 'recipe',
  author = 'Julie\'s Eats & Treats',
  creamCheese = c(Nancys = 227 * 2),
  pumpkin = 425, # 15 oz
  sugar_cup = 2,
  cinnamon_tsp = 2,
  ginger_tsp = 1,
  youtube = 'ktyuI7JHQ_Q',
  url = 'https://www.julieseatsandtreats.com/sweet-pumpkin-dip/'
)
