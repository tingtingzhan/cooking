

#' @title \linkS4class{SodaStream} Recipes
#' 
#' @name SodaStream-class
#' @export
setClass(Class = 'SodaStream', contains = 'recipe', prototype = prototype(
  alias_class = 'SodaStream\u6c7d\u6c34',
  iceWater = 450
))


#' @rdname SodaStream-class
#' @export
limeSoda <- \() new(Class = 'SodaStream', lime_pc = 1.5, pros = 'I love!')

#' @rdname SodaStream-class
#' @export
lemonSoda <- \() new(Class = 'SodaStream', lemon_pc = 1, review = 'try')



lemonadeSoda <- \() new(
  Class = 'SodaStream',
  flavor_Tbsp = c(CountryTime_Lemonade = 1),
  pros = c('Acidity just right', 'Not sweet at all')
)
