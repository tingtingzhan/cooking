
#' @title Yuen Yeung Latte and Coconut Latte
#' 
#' @examples
#' diagnose(
#'  caffeCoconut,
#'  caffeCoconut_Luckin,
#'  caffeCoconut_FreeNow0sugar 
#' )
#' @name yuenyeung
#' @aliases yuenyeungCoconut-class
#' @export
setClass(Class = 'yuenyeungCoconut', contains = 'recipe', prototype = prototype(
  #alias_class = '\u751f\u6930\u9e33\u9e2f'
))


#' @rdname yuenyeung
#' @export
yuenyeungCoconut <- function() new(
  Class = 'yuenyeungCoconut', 
  #alias_flavor = 'FreeNow',
  coconut = c(Freenow_coconutBarista = 225),
  boilingWater = 210,
  drymilk = c(Carnation = 10),
  coffee_tsp = c(NescafeGold_espresso_blonde = 1),
  cocoa_tsp = c(KingArthur_Bensdorp = .25),
  teabag = c(Twinings_EnglishBreakfast = 2),
  Stanley14 = Stanley14(treatment = c(
    'add teabags and boiling water',
    'add all powders, whisk smooth',
    'add barista coconut'
  )),
  date = as.Date('2025-03-15'))

#' @rdname yuenyeung
#' @export
yuenyeungCoconut_summer <- function() new(
  Class = 'yuenyeungCoconut', 
  #alias_flavor = 'FreeNow',
  coconut = c(Freenow_coconutBarista = 560),
  #total water = 210*2.5,
  boilingWater = 200,
  ice = 330,
  drymilk = c(Carnation = 25),
  coffee_tsp = c(NescafeGold_espresso_decaf = 2.5),
  cocoa_tsp = c(KingArthur_Bensdorp = .625),
  teabag = c(Twinings_EnglishBreakfast = 4), # only x2, not x2.5 !!!
  Stanley40 = Stanley40(treatment = c(
    'add teabags, instant coffee and cocoa powder',
    'add boiling water. Cover and soak for 1hr',
    'add dry milk, shake in circle',
    'add barista coconut',
    'add ice-rings'
  )),
  date = as.Date('2025-05-01'))





yuenyeungLatte_try2 <- function() new(
  Class = 'recipe',
  drymilk = c(Carnation = 30),
  heavyCream = 10,
  brownSugar = 5,
  coffee_tsp = c(NescafeGold_espresso_blonde = 1.5),
  cocoa_tsp = c(KingArthur_Bensdorp = .5),
  teabag = c(Twinings_EnglishBreakfast = 3),
  boilingWater = 400
)

yuenyeungLatte_try1 <- function() new(
  Class = 'recipe',
  drymilk = c(Carnation = 30),
  heavyCream = 10,
  brownSugar = 5,
  coffee_tsp = c(NescafeGold_espresso_blonde = 1),
  cocoa_tsp = c(KingArthur_Bensdorp = .25),
  teabag = c(Twinings_EnglishBreakfast = 2),
  boilingWater = 400,
  cons = c('add flavor')
)
