

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


setAs(from = 'recipe', to = 'guacamole', def = \(from) {
  x <- from; from <- NULL
  if (length(x@avocado_pc)) stop()
  x@avocado_pc <- 1
  x@alias_class <- '\U0001f951\U0001f963'
  x@review <- character()
  new(Class = 'guacamole', x)
})