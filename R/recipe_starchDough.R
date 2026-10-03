

#' @title Starch Dough
#' 
#' @description ..
#' 
#' @examples
#' sweetPotato_Noodle_step1()
#' sweetPotato_Noodle_step2()
#' 
#' @export
setClass(Class = 'starchDough', contains = 'recipe', prototype = prototype(
  class2 = 'Starch Dough'
))



#' @rdname starchDough-class
#' @export
sweetPotato_Noodle_step1 <- \() new(
  Class = 'starchDough',
  youtube = 'enleTlAvjCY',
  starch = c(sweetPotato_starch = 20), water = 40
)

#' @rdname starchDough-class
#' @export
sweetPotato_Noodle_step2 <- \() new(
  Class = 'starchDough',
  youtube = 'enleTlAvjCY',
  Na2CO3_tsp = .125, starch = c(sweetPotato_starch = 100), water = 40
)


