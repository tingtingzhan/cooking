

#' @title \linkS4class{steamWheatGluten} Recipes
#' 
#' @description
#' ..
#' 
#' @name wheatGluten
#' @aliases steamWheatGluten-class
#' @export
setClass(Class = 'steamWheatGluten', contains = 'recipe', prototype = prototype(
  alias_class = '\u84b8\u9762\u7b4b',
  wheatGluten = 120,
  yeast_tsp = 1,
  sugar_tsp = 1,
  instruction = c(
    'MUST whisk together dry powder',
    'Ferment until double size',
    'Steam 20min',
    'Slice',
    'Stew with other meat and vegetable for 30-40min'
  )
))


steamWheatGluten <- function() new(
  Class = 'steamWheatGluten', 
  water = 120,
  youtube = 'f3lUVR6hJ6Q'
)


