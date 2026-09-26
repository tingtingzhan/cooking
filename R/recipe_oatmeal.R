

#' @title \linkS4class{oatmeal} Recipes
#' 
#' @description
#' Oatmeal by microwave.
#' 
#' @note
#' Do not use Instant Pot; too mushy.
#' 
#' @examples 
#' coconut_oatmeal()
#' soymilk_oatmeal()
#' 
#' @name oatmeal-class
#' @export
setClass(Class = 'oatmeal', contains = 'recipe', prototype = prototype(
  class2 = 'Oatmeal',
  grain = c(Quaker_oat = 40),
  tool = list(SamsungME21R706BAT(
    treatment = c('Soak in fridge overnight'),
    program = 'Microwave (with chilled mug)',
    minute = 2,
    note = '(optional) serve with an ice cube'
  ))
))



#' @rdname oatmeal-class
#' @export
coconut_oatmeal <- \() new(
  Class = 'oatmeal',
  beverage = c(Freenow_coconutBar = 40),
  water = 100,
  # date = as.Date('2026-09-26'),
  review = 'to try')

coconut_oatmeal_OLD <- \() new(
  Class = 'oatmeal',
  beverage = c(Freenow_coconutBar = 60),
  water = 80,
  date = as.Date('2025-07-06'),
  review = 'a little too sweet')

if (FALSE) {
  nutritionlist(
    coconut_oatmeal(),
    coconut_oatmeal_OLD()
  )
}


#' @rdname oatmeal-class
#' @export
soymilk_oatmeal <- \() new(
  Class = 'oatmeal',
  homemade = c(soymilk_DJ13U = 140),
  syrup = c(Runamok_ryeWhisky_syrup = 5),
  date = as.Date('2025-07-06'),
  review = 'nice!'
)


