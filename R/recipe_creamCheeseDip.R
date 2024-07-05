


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
#' 
#' @name creamCheeseDip
#' @aliases creamCheeseDip-class
#' @export
setClass(Class = 'creamCheeseDip', contains = 'recipe', prototype = prototype(
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
  pumpkin = 122,
  sugar = 16,
  url = 'www.goodlifeeats.com/whipped-pumpkin-cream-cheese-and-8-ways-to-use-leftover-pumpkin/',
  youtube = c(
    ref1 = 'G87HfZjdDwI', 
    ref2 = 'ktyuI7JHQ_Q', 
    ref3 = 'OxmE0JeiWLo'),
  pros = 'Effie\'s Signature'
)

