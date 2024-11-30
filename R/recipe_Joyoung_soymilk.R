
#' @title \linkS4class{soymilk} Recipes
#' 
#' @description
#' Homemade soymilk with thickener.
#' 
#' @examples 
#' soymilk()
#' soymilk_DJ13U()
#' @name soymilk
#' @aliases soymilk-class
#' @export
setClass(Class = 'soymilk', contains = 'recipe', prototype = prototype(
  alias_class = '\u9c9c\u69a8\u8c46\u6d46'
))

#' @rdname soymilk
#' @export
soymilk <- function() new(
  Class = 'soymilk',
  soybean = 22, # 1/2 Joyoung small cup
  glutinousRiceFlour = c(Erawan_glutinousRiceFlour = 5),
  water = 590 - 22 - 5, # confirmed!!
  JoyoungDJ06M = JoyoungDJ06M_soymilk(), 
  pros = 'perfect thickness!',
  date = as.Date('2024-11-29'))

#' @rdname soymilk
#' @export
soymilk_DJ13U <- function() new(
  Class = 'soymilk',
  soybean = 45, # 1 Joyoung small cup
  water = 1300 - 45, # confirmed!!
  JoyoungDJ13U = JoyoungDJ13U_soymilk(),
  review = 'soymilk without thickener, as my smoothie base',
  date = as.Date('2024-09-15'))





chickpeaMilk <- function() new(
  Class = 'soymilk',
  soybean = 45, # 1 Joyoung small cup
  chickpea = 45/2, # 1/2 Joyoung small cup
  water = 1300 - 45 - 22.5, 
  cons = 'I dont like this taste',
  JoyoungDJ13U = JoyoungDJ13U_soymilk())

cashewMilk <- function() new(
  Class = 'soymilk',
  soybean = 45, # 1 Joyoung small cup
  cashew = 80, # confirmed!
  water = 1300-45-80, # confirmed!
  JoyoungDJ13U = JoyoungDJ13U_soymilk(),
  cons = 'too fat..')


mungMilk_thick <- function() new(
  Class = 'soymilk',
  mungbean = 130, # soaked mung bean (skin removed): 213
  soybean = 45,
  water = 1330 - 130 - 45,
  JoyoungDJ13U = JoyoungDJ13U_soymilk(waterLost = 25)) # (4169+30) - 4176






corn_soymilk <- function() new(
  Class = 'soymilk', 
  soybean = 100, # weigh and confirm
  yellowCorn = c(Kirkland_yellowCorn = 100), # weigh and confirm
  # haven't seen [Kirkland_yellowCorn] at Costco for a while
  water = 1100, # weigh and confirm
  note = c('One (1) measure cup of soy bean',
           'One (1) US cup of frozen corn'),
  review = 'Super nice to drink!')

veggie_soymilk <- function() new(
  Class = 'soymilk', alias = '\u852c\u83dc\u8c46\u6d46',
  soybean = 100, # weigh and confirm
  puree = c(Kirkland_mixedVeggies = 123), # weigh and confirm
  water = 1100, # weigh and confirm
  pros = 'Nice!')

