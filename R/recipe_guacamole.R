

#' @title Guacamole
#' 
#' @examples
#' srirachaBBQ_meatDip() |> as('guacamole') # not that great
#' 
#' @name guacamole-class
#' @export
setClass(Class = 'guacamole', contains = 'recipe', prototype = prototype(
  fruit_pc = c(avocado = 1)
))






allrecipes_guacamole <- \() new(
  Class = 'guacamole', 
  fruit_pc = c(avocado = 3, lime = 1/2),
  salt_tsp = 1/4,
  sauce_tsp = c(Raos_sensitive = 1),
  spice_tsp = c(Chinata_paprika = 3/8),
  allrecipes = '14231/guacamole/',
  review = 'not bad!'
)
