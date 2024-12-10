

#' @title \linkS4class{creamCheeseSpread} and \linkS4class{creamCheeseDip} Recipes
#' 
#' @description
#' \linkS4class{creamCheeseDip} contains much more water than 
#' \linkS4class{creamCheeseSpread}, thus cannot be *spread*ed.
#' \linkS4class{creamCheeseDip} is perfect for dressing.
#' 
#' @examples 
#' pumpkin_creamCheeseDip()
#' pumpkin_creamCheeseSpread()
#' 
#' diagnose(
#'  pumpkin_creamCheeseSpread,
#'  pumpkin_cheesecake,
#'  pumpkin_creamCheeseDip
#' ) # from dry to wet!
#' @name creamCheese
#' @aliases creamCheeseSpread-class
#' @export
setClass(Class = 'creamCheeseSpread', contains = 'recipe', prototype = prototype(
  #alias_class = '\u5976\u6cb9\u5976\u916a\u62b9\u6599',
  alias_class = 'Cream Cheese\U1f96f', # 'Cream Cheese Spread\U1f96f',
  creamCheese_brick = c(Nancys = 1),
  instruction = c(
    'Soak dried fruit in water, overnight in fridge',
    'Whip everything (chilled). Careful not to splash',
    'Do not freeze'
  )
))


#' @rdname creamCheese
#' @aliases creamCheeseDip-class
#' @export
setClass(Class = 'creamCheeseDip', contains = 'recipe', prototype = prototype(
  # alias_class = '\u5976\u6cb9\u5976\u916a\u8638\u6599',
  alias_class = 'Cream Cheese\U1fad5', # 'Cream Cheese Dip\U1fad5',
  creamCheese_brick = c(Nancys = 1),
  instruction = c(
    'Whip everything (chilled). Careful not to splash',
    'Do not freeze'
  )
))



#' @rdname creamCheese
#' @export
pumpkin_creamCheeseSpread <- function() new(
  Class = 'creamCheeseSpread', 
  #pumpkin = 122, brownSugar = 16, # was; too watery
  pumpkin = 100, brownSugar = 31, # 2024 Dec
  pumpkinSpice_tsp = 1/4+1/8, # added 2024 Dec 
  review = 'retry with higher sugar and pumpkin spice',
  pros = 'Effie\'s Signature'
)


#' @rdname creamCheese
#' @export
pumpkin_creamCheeseDip <- function() new(
  Class = 'creamCheeseDip', 
  pumpkin = 300,
  brownSugar = 50,
  pumpkinSpice_tsp = 1/2 + 1/8,
  review = 'try'
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


