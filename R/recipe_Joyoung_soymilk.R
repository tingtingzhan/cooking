
#' @title \linkS4class{soymilk} Recipes
#' 
#' @description
#' Plant-based milk made by Joyoung DJ13U soymilk maker, 
#' using program Classic Soymilk at 1300ml water line
#' 
#' @examples 
#' soymilk()
#' chickpeaMilk()
#' cashewMilk()
#' cornSoymilk()
#' veggieSoymilk()
#' 
#' @name soymilk
#' @aliases soymilk-class
#' @export
setClass(Class = 'soymilk', contains = 'recipe', prototype = prototype(
  alias_class = '\u9c9c\u69a8\u8c46\u6d46'
))

#' @rdname soymilk
#' @export
soymilk_DJ13U <- function() new(
  Class = 'soymilk',
  soybean = 45, # my favorite is 1 Joyoung small cup
  water = 1300 - 45, # confirmed!!
  JoyoungDJ13U = JoyoungDJ13U_soymilk(),
  date = as.Date('2024-09-15'))


#' @rdname soymilk
#' @export
soymilk <- function() new(
  Class = 'soymilk',
  soybean = 22, # my favorite is 1/2 Joyoung small cup
  water = 588, # confirmed 2024-10-08
  JoyoungDJ06M = JoyoungDJ06M_soymilk(), 
  date = as.Date('2024-10-08'))

#' @rdname soymilk
#' @export
thick_soymilk <- function() new(
  Class = 'soymilk',
  alias = '\u9c9c\u69a8\u6d53\u8c46\u6d46',
  soybean = 22, 
  glutinousRiceFlour = c(Erawan_glutinousRiceFlour = 5), # 11g too much, I can taste rice
  water = 588 - 5, # to confirm
  JoyoungDJ06M = JoyoungDJ06M_soymilk(), 
  # pros = 'perfect thickness!', # not yet :)
  date = as.Date('2024-11-29'))



#' @rdname soymilk
#' @export
chickpeaMilk <- function() new(
  Class = 'soymilk',
  soybean = 45, # 1 Joyoung small cup
  chickpea = 45/2, # 1/2 Joyoung small cup
  water = 1300 - 45 - 22.5, 
  JoyoungDJ13U = JoyoungDJ13U_soymilk())

#' @rdname soymilk
#' @export
cashewMilk <- function() new(
  Class = 'soymilk',
  soybean = 45, # 1 Joyoung small cup
  cashew = 80, # confirmed!
  water = 1300-45-80, # confirmed!
  JoyoungDJ13U = JoyoungDJ13U_soymilk(),
  pros = 'thick and nice!')


#' @rdname soymilk
#' @export
mungMilk_thick <- function() new(
  Class = 'soymilk',
  mungbean = 130, # soaked mung bean (skin removed): 213
  soybean = 45,
  water = 1330 - 130 - 45,
  JoyoungDJ13U = JoyoungDJ13U_soymilk(waterLost = 25)) # (4169+30) - 4176






#' @rdname soymilk
#' @export
cornSoymilk <- function() new(
  Class = 'soymilk', 
  soybean = 100, # weigh and confirm
  yellowCorn = c(Kirkland_yellowCorn = 100), # weigh and confirm
  water = 1100, # weigh and confirm
  note = c('One (1) measure cup of soy bean',
           'One (1) US cup of frozen corn'),
  review = 'Super nice to drink!')

#' @rdname soymilk
#' @export
veggieSoymilk <- function() new(
  Class = 'soymilk', alias = '\u852c\u83dc\u8c46\u6d46',
  soybean = 100, # weigh and confirm
  puree = c(Kirkland_mixedVeggies = 123), # weigh and confirm
  water = 1100, # weigh and confirm
  pros = 'Nice!')

