

#' @title Guacamole
#' 
#' @examples
#' srirachaBBQ_meatDip() |> as('guacamole')
#' 
#' @name guacamole-class
#' @export
setClass(Class = 'guacamole', contains = 'recipe', prototype = prototype(
  avocado_pc = 1
))


