

#' @title \linkS4class{oatmeal} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' oatmeal()
#' 
#' @name oatmeal
#' @aliases oatmeal-class
#' @export
setClass(Class = 'oatmeal', contains = 'recipe', prototype = prototype(
  alias_class = 'Oatmeal'
))



#' @rdname oatmeal
#' @export
oatmeal <- function() new(
  Class = 'oatmeal', 
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
