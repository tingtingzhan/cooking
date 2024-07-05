

#' @title \linkS4class{grainMeal} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' oatMeal()
#' 
#' @name grainMeal
#' @aliases grainMeal-class
#' @export
setClass(Class = 'grainMeal', contains = 'recipe', prototype = prototype(
))



#' @rdname grainMeal
#' @export
oatMeal <- function() new(
  Class = 'grainMeal', 
  grain = c(Quaker_oat = 75), water = 300,
  instruction = c(
    'Instant Pot, 2min, natural release',
    'Scrape the bottom as soon as opening',
    'Mix with evaporated milk, coconut milk, jam, etc.'
  ),
  note = c(
    'If using mechanical pressure cooker, must rinse thoroughly and use minimum heat, otherwise oat dust will clog the vent!!',
    'Cook fresh, do not cook in batch'
  )
)
