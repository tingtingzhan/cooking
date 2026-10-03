

#' @title \linkS4class{pizzaDough} Recipes
#' 
#' @export
setClass(Class = 'pizzaDough', contains = 'recipe', prototype = prototype(
  flour = c(Wegmans_breadFlr = 250),
  water = 150,
  oil = c(Wegmans_olive_oil = 45),
  yeast_tsp = c(Fleischmanns_instant = .5),
  salt_tsp = .25,
  sugar_tsp = .5,
  youtube = 'WqolY3XZeGU',
  url = 'https://www.kitchenaid.co.uk/recipes/perfect-pizza-dough/vip'
))



#' @rdname pizzaDough-class
#' @export
pizzaDough <- \() new(Class = 'pizzaDough')
