




#' @title \linkS4class{syrupDough} Recipe
#' 
#' @description ..
#' 
#' 
#' @examples 
#' CantoneseMooncakeShell()
#' 
#' 
#' 
#' @name syrupDough-class
#' @export
setClass(Class = 'syrupDough', contains = 'recipe')


# @details 
# Always sprinkle with corn starch, not with flour!
#' @rdname syrupDough-class
#' @export
CantoneseMooncakeShell <- \() new(
  Class = 'syrupDough',
  flavor = 'Cantonese Mooncake Shell',
  flour = c(Wegmans_pastryFlr = 150), 
  homemade = c(invertSugar = 75),
  water = 10, 
  dairy = c(Kerrygold_butter = 30),
  xiaogaojie = 'rtL8TVynNyg',
  review = 'do NOT reduce invert sugar syrup!  But really sweet...'
)


