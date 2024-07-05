




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
#' @name syrupDough
#' @aliases syrupDough-class
#' @export
setClass(Class = 'syrupDough', contains = 'recipe')


# @details 
# Always sprinkle with corn starch, not with flour!
#' @rdname syrupDough
#' @export
CantoneseMooncakeShell <- function() new(
  Class = 'syrupDough',
  pastryFlour = 150, invertSugar = 75,
  water = 10, butter = 30,
  youtube = 'rtL8TVynNyg',
  review = 'do NOT reduce invert sugar syrup!  But really sweet...'
)


