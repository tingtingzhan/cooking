
# glutinousRiceFlour too filling for me..


#' @title \linkS4class{stickyTortilla} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' stickyTortilla()
#' matcha_stickyTortilla()
#' 
#' @name stickyTortilla
#' @aliases stickyTortilla-class
#' @export
setClass(Class = 'stickyTortilla', contains = 'recipe', prototype = prototype(
  alias_class = '\u7cef\u7c73\u997c', 
  glutinousRiceFlour = 50, 
  starch = c(Wegmans_corn = 8), water = 80,
  sugar_tsp = 1, drymilk = 4, butter = 2,
  portion = 150,
  machine = list('Le Creuset crepe pan' = 'Grease with butter. Mid to High (1/2), uncovered.'),
  note = c('Cook one (1) recipe at a time in Le Creuset crepe pan'),
  youtube = 'R74IGzJQUu0'
))


#' @rdname stickyTortilla
#' @export
stickyTortilla <- function() new(Class = 'stickyTortilla', review = 'Nice!')

#' @rdname stickyTortilla
#' @export
matcha_stickyTortilla <- function() new(
  Class = 'stickyTortilla',
  matcha_tsp = 1.25,
  review = 'try')

