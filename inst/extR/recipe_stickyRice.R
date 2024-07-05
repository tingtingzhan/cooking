

# stop trying

#' @title \linkS4class{stickyRice} Pudding Recipes
#' 
#' @description ..
#' 
#' @examples
#' pumpkin_stickyRice()
#' mango_stickyRice()
#' pineapple_stickyRice()
#' 
#' 
#' @name stickyRice
#' @aliases stickyRice-class
#' @export
setClass(Class = 'stickyRice', contains = 'recipe', prototype = prototype(
  alias_class = '\u7cef\u7c73\u7c91',
  glutinousRiceFlour = 50, 
  drymilk = 15, 
  machine = list('Robam CT763' = 'Steam 250\u00b0F, 20 min'),
  note = c('Knead manually.  Dough extremely sticky, impossible to shape.',
           'I like the very-glutinous texture, but not ready to present')
))






#' @rdname stickyRice
#' @export
pumpkin_stickyRice <- function() new(
  Class = 'stickyRice',
  pumpkin = 70, sugar = 5, review = 'Nice!')


#' @rdname stickyRice
#' @export
mango_stickyRice <- function() new(
  Class = 'stickyRice',
  # mango = 75, # too thin
  mango = 65,
  review = 'try again.  Sweetness holds well when hot')


#' @rdname stickyRice
#' @export
pineapple_stickyRice <- function() new(
  Class = 'stickyRice',
  pineapple = 75, review = 'try')

