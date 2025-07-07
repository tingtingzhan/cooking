

#' @title \linkS4class{oatmeal} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' coconut_oatmeal()
#' soymilk_oatmeal()
#' 
#' @name oatmeal
#' @aliases oatmeal-class
#' @export
setClass(Class = 'oatmeal', contains = 'recipe', prototype = prototype(
  alias_class = 'Microwave Oatmeal',
  grain = c(Quaker_oat = 40),
  instruction = c(
    'must soak overnight',
    'microwave 2min (with chilled mug)',
    '(optional) serve with an ice cube'
  )
))



#' @rdname oatmeal
#' @export
coconut_oatmeal <- function() new(
  Class = 'oatmeal',
  coconut = c(Freenow_coconutBarista = 60),
  water = 80,
  date = as.Date('2025-07-06'),
  review = 'nice!'
)

#' @rdname oatmeal
#' @export
soymilk_oatmeal <- function() new(
  Class = 'oatmeal',
  homemade = c(soymilk_DJ13U = 140),
  syrup = c(Runamok_ryeWhisky = 5),
  date = as.Date('2025-07-06'),
  review = 'nice!'
)






oatmeal_InstantPot <- function() new(
  Class = 'oatmeal', 
  grain = c(Quaker_oat = 75), water = 300,
  instruction = c(
    'Instant Pot, 2min, natural release',
    'Scrape the bottom as soon as opening',
    'Mix with evaporated milk, coconut milk, jam, etc.'
  ),
  review = c(
    # 'If using mechanical pressure cooker, must rinse thoroughly and use minimum heat, otherwise oat dust will clog the vent!!',
    # 'Cook fresh, do not cook in batch'
    'too mushy!!!'
  )
)





