

#' @title Starch Dough
#' 
#' @description ..
#' 
#' @examples
#' sweetPotato_Noodle_step1()
#' sweetPotato_Noodle_step2()
#' 
#' @name starchDough
#' @aliases starchDough-class
#' @export
setClass(Class = 'starchDough', contains = 'recipe', prototype = prototype(
  alias_class = 'Starch Dough'
))



#' @rdname starchDough
#' @export
sweetPotato_Noodle_step1 <- function() new(
  Class = 'starchDough',
  youtube = 'enleTlAvjCY',
  starch = c(sweetPotato = 20), water = 40
)

#' @rdname starchDough
#' @export
sweetPotato_Noodle_step2 <- function() new(
  Class = 'starchDough',
  youtube = 'enleTlAvjCY',
  Na2CO3_tsp = .125, starch = c(sweetPotato = 100), water = 40
)


