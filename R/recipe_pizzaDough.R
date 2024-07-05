

#' @title \linkS4class{pizzaDough} Recipes
#' 
#' @name pizzaDough
#' @aliases pizzaDough-class
#' @export
setClass(Class = 'pizzaDough', contains = 'recipe', prototype = prototype(
  flour = c(Wegmans_bread = 250),
  water = 150,
  oil = c(Wegmans_olive = 45),
  yeast_tsp = .5,
  salt_tsp = .25,
  sugar_tsp = .5,
  youtube = 'WqolY3XZeGU',
  url = 'www.kitchenaid.co.uk/recipes/perfect-pizza-dough/vip'
))



#' @rdname pizzaDough
#' @export
pizzaDough <- function() new(Class = 'pizzaDough')