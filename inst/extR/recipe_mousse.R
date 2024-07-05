


# too fat for me




#' @title \linkS4class{mousse} Recipes
#' 
#' @description
#' ..
#' 
#' @name mousse
#' @aliases mousse-class
#' @export
setClass(Class = 'mousse', contains = 'recipe', prototype = prototype(
  gelatin_leaf = 6,
  heavyCream = 250,
  youtube = 'PdWRr8MsG4A'
))


#' @rdname mousse
#' @export
mango_mousse_Pickd <- function() new(
  Class = 'mousse', 
  mango = 250, # the other 100g is separated
  # sugar = 25, # original
  sugar = 20,
  review = 'try')

#' @rdname mousse
#' @export
pumpkin_mousse <- function() new(
  Class = 'mousse',
  pumpkin = 260,
  sugar = 45,
  review = 'try')


if (FALSE) {
  new(Class = 'recipe',
      strawberry = 200,
      sugar = 50,
      gelatin_leaf = 3, 
      heavyCream = 300,
      youtube = c('EwZcg6teYlw'))  

}
