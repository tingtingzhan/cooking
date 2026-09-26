

#' @title Guacamole
#' 
#' @examples
#' srirachaBBQ_meatDip() |> as('guacamole') # not that great, smoked flavor too heavy
#' 
#' ginger_guacamole()
#' 
#' @name guacamole-class
#' @export
setClass(Class = 'guacamole', contains = 'recipe', prototype = prototype(
  class2 = 'Guacamole\U0001f951\U0001f963',
  fruit_pc = c(avocado = 1)
))


#' @rdname guacamole-class
#' @export
ginger_guacamole <- \() new(
  Class = 'guacamole',
  sauce = c(TraderJoes_ThaiGinger = 26),
  date = as.Date('2026-09-25'),
  review = 'super nice!')




allrecipes_guacamole <- \() new(
  Class = 'guacamole', 
  fruit_pc = c(avocado = 3, lime = 1/2),
  salt_tsp = 1/4,
  sauce_tsp = c(Raos_sensitive = 1),
  spice_tsp = c(Chinata_paprika = 3/8),
  allrecipes = '14231/guacamole/',
  review = 'not bad!'
)
