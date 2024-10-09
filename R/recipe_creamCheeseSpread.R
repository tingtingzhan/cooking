

#' @title \linkS4class{creamCheeseSpread} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' # ..
#' 
#' nutrition_(
#'  pumpkin_creamCheeseSpread,
#'  pumpkin_creamCheeseSpread_GoodLifeEats,
#'  pumpkin_creamCheeseSpread_Lynn
#' )
#' @name creamCheeseSpread
#' @aliases creamCheeseSpread-class
#' @export
setClass(Class = 'creamCheeseSpread', contains = 'recipe', prototype = prototype(
  alias_class = '\u5976\u6cb9\u5976\u916a\u62b9\u6599',
  creamCheese = c(Nancys = 227),
  instruction = c(
    'Soak dried fruit in water, overnight in fridge',
    'Whip everything (chilled). Careful not to splash',
    'Do not freeze'
  )
))



#' @rdname creamCheeseSpread
#' @export
pumpkin_creamCheeseSpread <- function() new(
  Class = 'creamCheeseSpread', 
  #creamCheese = c(Nancys = 227),
  pumpkin = 122,
  sugar = 16,
  pros = 'Effie\'s Signature'
)





#' @rdname creamCheeseSpread
#' @export
pumpkin_creamCheeseSpread_GoodLifeEats <- function() new(
  Class = 'recipe',
  author = 'Good Life Eats',
  creamCheese = c(Nancys = 227),
  pumpkin_cup = 2/3,
  pumpkinSpice_tsp = 1.5,
  brownSugar_Tbsp = 2,
  url = 'https://www.goodlifeeats.com/whipped-pumpkin-cream-cheese-and-8-ways-to-use-leftover-pumpkin/'
)


#' @rdname creamCheeseSpread
#' @export
pumpkin_creamCheeseSpread_Lynn <- function() new(
  Class = 'recipe',
  author = 'Lynn',
  creamCheese = c(Nancys = 227),
  pumpkin_cup = 1/2,
  pumpkinSpice_tsp = 1,
  youtube = 'OxmE0JeiWLo'
)


date_creamCheeseSpread <- function() new(
  Class = 'creamCheeseSpread', 
  flavor = c(SunnyFruit_date = 50),
  water = 50,
  review = 'retry')


plum_creamCheeseSpread <- function() new(
  'creamCheeseSpread', flavor = c(Kirkland_plum_dried = 75), 
  water = 50, 
  review = 'try') # try!

fig_creamCheeseSpread <- function() new(
  'creamCheeseSpread', flavor = c(SunnyFruit_fig = 65), 
  water = 50, review = 'try') # try!


