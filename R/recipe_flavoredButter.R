


#' @title \linkS4class{flavoredButter} Recipes
#' 
#' @description ..
#' 
#' 
#' @examples 
#' oldBay_butter()
#' oldBay_butter_lowSodium()
#' 
#' @name flavoredButter
#' @aliases flavoredButter-class
#' @export
setClass(Class = 'flavoredButter', contains = 'recipe', prototype = prototype(
  alias_class = '\u98ce\u5473\u9ec4\u6cb9',
  butter = 227
))

#' @rdname flavoredButter
#' @export
oldBay_butter <- function() new(Class = 'flavoredButter', alias_flavor = 'Old Bay', spice_Tbsp = c(McCormick_oldBay = 2), pros = 'Nice for seafood!')

#' @rdname flavoredButter
#' @export
oldBay_butter_lowSodium <- function() new(Class = 'flavoredButter', alias_flavor = 'Old Bay', spice_Tbsp = c(McCormick_oldBay_lowSodium = 3), review = 'try')