

#' @title \linkS4class{mandaka} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' pumpkin_mandaka()
#' 
#' 
#' @name mandaka
#' @aliases mandaka-class
#' @export
setClass(Class = 'mandaka', contains = 'recipe', prototype = prototype(
  alias_class = '\u98de\u997c',
  flour = c(Wegmans_bread = 250),
  condensedMilk = 10,
  salt = 2.5,
  oil = c(Wegmans_vegetable = 10),
  youtube = 'SO0UqnklxxM'
))



mandaka <- function() new(Class = 'mandaka', water = 140, review = 'only as reference')

#' @rdname mandaka
#' @export
pumpkin_mandaka <- function() new(
  Class = 'mandaka',
  pumpkin = 170,
  review = 'try'
)
