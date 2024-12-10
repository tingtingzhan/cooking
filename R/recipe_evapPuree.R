


#' @title \linkS4class{evap}orated Fruit Puree
#' 
#' @examples
#' pineapple_evap()
#' 
#' @name evap
#' @aliases evap-class
#' @export
setClass(Class = 'evap', contains = 'recipe', prototype = prototype(
  alias_class = '\u6d53\u7f29\u679c\u6ce5'
))


#' @rdname evap
#' @export
pineapple_evap <- function() new(
  Class = 'evap',
  pineapple = c(Dole_pineapple = 567*2),
  JoyoungCJA9U = JoyoungCJA9U(
    minute = 15+6,
    waterLost = 600
  )
)