

#' @title \linkS4class{soaked} Recipes
#' 
#' @name soaked
#' @aliases soaked-class
#' @export
setClass(Class = 'soaked', contains = 'recipe', prototype = prototype(
  alias_class = '\u6ce1\u53d1'
))


#' @rdname soaked
#' @export
sweetPotatoNoodle_soaked <- function() new(
  Class = 'soaked',
  alias_flavor = '\u7ea2\u85af\u7c89', 
  grain = c(JayOne_sweetPotato = 300), # weighed
  boilingWater = 1060 - 300, # confirmed!!
  instruction = c(
    'prepare 1.2x boiling water',
    'remove from heat as long as noodle softens',
    'cool down on countertop, then chill over night'
  )
)


#sweetPotatoNoodle <- function() new(
#  Class = 'recipe',
#  homemade = c(sweetPotatoNoodle_soaked = 150),
#  boilingWater = 50
#)