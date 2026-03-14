
#' @title \linkS4class{tiramisuMix} Recipes
#' 
#' @name tiramisuMix
#' @aliases tiramisuMix-class
#' @export
setClass(Class = 'tiramisuMix', contains = 'drinkmix', prototype = prototype(
  #alias_class = '\u901f\u6eb6\u7c89',
  drymilk = c(Carnation = 40),
  coffee_tsp = c(NescafeGold_espresso_blonde = 2.5*2),
  cocoa_tsp = c(KingArthur_Bensdorp = .375*2)
))

#' @rdname tiramisuMix
#' @export
tiramisuMix <- \() new(
  Class = 'tiramisuMix', 
  liqueur = c(Baileys_espresso = 30), 
  pros = 'Wow!! Use as default!', 
  date = as.Date('2024-12-01'))


tiramisuMix_Baileys <- \() new(
  Class = 'tiramisuMix', 
  liqueur = c(Baileys_tiramisu = 30), 
  review = 'hypothetical model')



#' @rdname tiramisuMix
#' @export
tiramisuMix_Kahlua <- \() new(
  Class = 'tiramisuMix', 
  liqueur = c(Kahlua_coffee = 20), 
  heavyCream = 10,
  review = 'try')


#' @rdname tiramisuMix
#' @export
tiramisuMix_FratelliVincenzi <- \() new(
  Class = 'tiramisuMix', 
  liqueur = c(FratelliVincenzi_espresso = 17), 
  heavyCream = 10,
  sugar_tsp = 2,
  review = 'try')

#' @rdname tiramisuMix
#' @export
tiramisuMix_CaffeBorghetti <- \() new(
  Class = 'tiramisuMix', 
  liqueur = c(CaffeBorghetti = 20), 
  heavyCream = 10,
  sugar_tsp = 2,
  review = 'try')

#' @rdname tiramisuMix
#' @export
tiramisuMix_Grind <- \() new(
  Class = 'tiramisuMix', 
  liqueur = c(Grind_espresso = 17), 
  heavyCream = 10,
  sugar_tsp = 2,
  pros = 'Old base: I love!!', date = as.Date('2024-05-18'))

#' @rdname tiramisuMix
#' @export
tiramisuMix_Sabroso <- \() new(
  Class = 'tiramisuMix', 
  liqueur = c(Sabroso_coffee = 20),
  heavyCream = 10,
  sugar_tsp = 2,
  pros = 'Old base: I like', date = as.Date('2024-05-18'))



tiramisuMix_CafeGranita <- \() new(
  Class = 'tiramisuMix',
  liqueur = c(CafeGranita_coffee = 23),
  heavyCream = 12,
  sugar_tsp = 2,
  review = 'try')


tiramisuMix_Kikisi <- \() new(
  Class = 'tiramisuMix',
  liqueur = c(Kikisi_coffee = 25),
  heavyCream = 12,
  sugar_tsp = 2,
  review = 'try'
)

ryeWhisky_latte_FAIL <- \() new(
  Class = 'tiramisuMix', syrup_tsp = c(Runamok_ryeWhisky = 1.5), coffee_tsp = 1.5, 
  cons = c('too sweet', 'not enough alcohol'))

