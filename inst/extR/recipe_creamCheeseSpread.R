

# use \linkS4class{cheesecake} instead!

#' @title \linkS4class{creamCheeseSpread} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' date_creamCheeseSpread()
#' plum_creamCheeseSpread()
#' fig_creamCheeseSpread()
#' 
#' 
#' @name creamCheeseSpread
#' @aliases creamCheeseSpread-class
#' @export
setClass(Class = 'creamCheeseSpread', contains = 'recipe', prototype = prototype(
  creamCheese = c(Nancys = 227),
  instruction = c(
    'Soak dried fruit in water, overnight in fridge',
    'Whip everything (chilled). Careful not to splash',
    'Do not freeze'
  )
))




#' @rdname creamCheeseSpread
#' @export
date_creamCheeseSpread <- function() new(
  Class = 'creamCheeseSpread', flavor = c(SunnyFruit_date = 50),
  water = 50,
  review = 'retry')


#' @rdname creamCheeseSpread
#' @export
plum_creamCheeseSpread <- function() new(
  'creamCheeseSpread', flavor = c(Kirkland_plum_dried = 75), 
  water = 50, 
  review = 'try') # try!

#' @rdname creamCheeseSpread
#' @export
fig_creamCheeseSpread <- function() new(
  'creamCheeseSpread', flavor = c(SunnyFruit_fig = 65), 
  water = 50, review = 'try') # try!


