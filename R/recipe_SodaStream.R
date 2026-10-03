

#' @title \linkS4class{SodaStream} Recipes
#' 
#' @export
setClass(Class = 'SodaStream', contains = 'recipe', prototype = prototype(
  class2 = 'SodaStream\u6c7d\u6c34',
  iceWater = 450
))


#' @rdname SodaStream-class
#' @export
limeSoda <- \() new(
  Class = 'SodaStream', 
  fruit_pc = c(lime = 1.5), 
  pros = 'I love!')

#' @rdname SodaStream-class
#' @export
lemonSoda <- \() new(
  Class = 'SodaStream', 
  fruit_pc = c(lemon = 1), 
  review = 'try')



lemonadeSoda <- \() new(
  Class = 'SodaStream',
  misc_Tbsp = c(CountryTime_Lemonade = 1),
  pros = c('Acidity just right', 'Not sweet at all')
)
