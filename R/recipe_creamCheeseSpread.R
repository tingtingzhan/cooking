

#' @title \linkS4class{creamCheeseSpread} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' pumpkin_creamCheeseSpread()
#' 
#' diagnose(
#'  pumpkin_creamCheeseSpread,
#'  pumpkin_creamCheeseSpread_GoodLifeEats,
#'  pumpkin_creamCheeseSpread_Lynn
#' )
#' @name creamCheeseSpread
#' @aliases creamCheeseSpread-class
#' @export
setClass(Class = 'creamCheeseSpread', contains = 'recipe', prototype = prototype(
  #alias_class = '\u5976\u6cb9\u5976\u916a\u62b9\u6599',
  alias_class = 'Spread\U1f96f', # 'Cream Cheese Spread',
  creamCheese_brick = c(Nancys = 1),
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
  pumpkin = 122,
  brownSugar = 16,
  pumpkinSpice_tsp = 1/4+1/8, # 2024 Dec
  review = 'retry',
  pros = 'Effie\'s Signature'
)





#' @title Other People's Cream Cheese Spread
#' 
#' @keywords internal
#' @name creamCheeseSpread_other
#' @export
pumpkin_creamCheeseSpread_GoodLifeEats <- function() new(
  Class = 'recipe',
  alias_class = 'Spread\U1f96f', # 'Cream Cheese Spread',
  author = 'Good Life Eats',
  creamCheese_brick = 1,
  pumpkin_cup = 2/3,
  pumpkinSpice_tsp = 1.5,
  brownSugar_Tbsp = 2,
  url = 'https://www.goodlifeeats.com/whipped-pumpkin-cream-cheese-and-8-ways-to-use-leftover-pumpkin/'
)


#' @rdname creamCheeseSpread_other
#' @export
pumpkin_creamCheeseSpread_Lynn <- function() new(
  Class = 'recipe',
  alias_class = 'Spread\U1f96f', # 'Cream Cheese Spread',
  author = 'Lynn',
  creamCheese_brick = 1,
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
  Class = 'creamCheeseSpread', flavor = c(Kirkland_plum_dried = 75), 
  water = 50, 
  review = 'try') # try!

fig_creamCheeseSpread <- function() new(
  Class = 'creamCheeseSpread', flavor = c(SunnyFruit_fig = 65), 
  water = 50, review = 'try') # try!


