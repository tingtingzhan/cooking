


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
  yellowCorn = 100, # weigh and confirm
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




#' @title \linkS4class{ricemilk} Recipes
#' 
#' @description ..
#' 
#' @details
#' Brown rice, I have tried Japanese (Nishiki) and Thai (\url{shop.wegmans.com/product/42848})
#' 
#' @examples
#' blackRicemilk()
#' # blackRice_paste() # not exported yet
#' 
#' 
#' @name ricemilk
#' @aliases ricemilk-class
#' @export
setClass(Class = 'ricemilk', contains = 'recipe', prototype = prototype(
  alias_class = '\u7c73\u7cca',
  JoyoungDJ13U = JoyoungDJ13U(
    program = '\u7c73\u7cca\u7a0b\u5e8f Rice Paste program, 900ml water line',
    waterLost = 20
  )
))





#' @rdname ricemilk
#' @export
blackRicemilk <- function() new(
  Class = 'ricemilk', blackRice = 105, water = 845,
  #JoyoungDJ13U = JoyoungDJ13U_ricemilk(waterLost = 20), 
  pros = 'such distinct and delicate smell!')


setClass(Class = 'ricepaste', contains = 'recipe', prototype = prototype(
  alias_class = '\u5976\u9999\u7c73\u7cca',
  # for 600g 'ricemilk'
  #drymilk = c(Carnation_drymilk = 15), # 2.5%, a little too much
  drymilk_tsp = c(Carnation_drymilk = 5),
  portion = c(
    'Ciroa mug' = 610,
    'Starbucks mug' = 305
  )
))

blackRice_paste <- function() new(
  Class = 'ricepaste',
  puree = c(blackRicemilk = 600)
)

#' @rdname ricemilk
#' @export
brownRicemilk <- function() new(
  Class = 'ricemilk',
  brownRice = 97,
  water = 845, review = 'to confirm')


brownRice <- function() new(
  Class = 'recipe', alias_class = '\u7c73\u996d', # consider `Class = 'rice'`
  brownRice = c(Dynasty_brownRice = 270), water = 700, # weight confirmed!
  JoyoungDJ13U = JoyoungDJ13U(
    program = '\u852c\u83dc\u7ca5\u7a0b\u5e8f Porridge program, 900ml water line', 
    note = '3 cups of rice',
    cooling = 'Unplug from power, let stand for 2hr+'
    # waterLost = ? # confirm next time!
  ),
  pros = 'perfect wetness, brown rice fluffy and soft',
  date = as.Date('2024-10-15'))





#' @title Veggie Milk
#' 
#' @description
#' ..
#' 
#' @examples
#' cornjuice()
#' cornVeggiePaste()
#' 
#' 
#' @name cornjuice
#' @aliases cornjuice-class
#' @export
setClass(Class = 'cornjuice', contains = 'recipe', prototype = prototype(
  alias_class = '\u7389\u7c73\U1f33d\u6c41'
))



#' @rdname cornjuice
#' @export
cornjuice <- function() new(
  Class = 'cornjuice', 
  yellowCorn = 367, water = 560,
  JoyoungDJ13U = JoyoungDJ13U_cornjuice(
    waterLost = 90  # confirmed!!
  )) # Perfect thickness for making pastry

#' @rdname cornjuice
#' @export
cornVeggiePaste <- function() new(
  Class = 'cornjuice', alias_flavor = '\u852c\u83dc\U1f955\U1fadb',
  yellowCorn = 246,
  puree = c(Kirkland_mixedVeggies = 123), water = 560,
  JoyoungDJ13U = JoyoungDJ13U_cornjuice(
    waterLost = 90  # to confirm
  ),
  note = c('2 cups of frozen corn + 1 cup of diced fresh carrots (Nutribullet)'),
  review = 'Good to drink directly')
