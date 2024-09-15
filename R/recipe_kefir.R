

#' @title Sweetened \linkS4class{kefir} and \linkS4class{goatKefir} Recipes
#' 
#' @details
#' Do not add alcohol or liqueur 
#' (stronger than barrel-aged syrup) to (goat) kefir.  
#' Kefir has substantial alcohol already.
#' 
#' 
#' 
#' @name kefir
#' @aliases kefir-class
#' @export
setClass(Class = 'kefir', contains = 'recipe', prototype = prototype(
  alias_class = 'Kefir',
  kefir = c(GreenValley_kefir = 200)
))

#' @rdname kefir
#' @export
raspberry_kefir <- function() new(Class = 'kefir', syrup = c(Stonewall_raspberrySyrup = 15), pros = 'Effie', date = as.Date('2024-04-16'))

#' @rdname kefir
#' @export
ryeWhisky_kefir <- function() new(Class = 'kefir', syrup = c(Runamok_ryeWhisky = 10), pros = 'I love!', date = as.Date('2024-05-12'))

#' @rdname kefir
#' @export
figWalnut_kefir <- function() new(Class = 'kefir', syrup = c(Stonewall_figWalnut = 13), pros = 'super nice!', date = as.Date('2024-05-16'))

#' @rdname kefir
#' @export
blueberry_kefir <- function() new(Class = 'kefir', syrup = c(Stonewall_blueberrySyrup = 15), pros = 'I like', date = as.Date('2024-05-19'))



#' @rdname kefir
#' @aliases goatKefir-class
#' @export
setClass(Class = 'goatKefir', contains = 'recipe', prototype = prototype(
  alias_class = '\u7f8a\u5976Kefir',
  kefir = c(TraderJoes_goat = 200)
))

#' @rdname kefir
#' @export
ryeWhisky_goatKefir <- function() new(Class = 'goatKefir', syrup = c(Runamok_ryeWhisky = 21), pros = 'Effie', date = as.Date('2024-04-02'))

#' @rdname kefir
#' @export
mocaccino_goatKefir <- function() new(Class = 'goatKefir', coffee_tsp = c(NescafeGold_espresso_blonde = 2), cocoaDutch_tsp = c(KingArthur_Bensdorp = 3.25), sugar_tsp = 4.5, pros = 'strong alcohol flavor, interesting!', date = as.Date('2024-05-14'))

#' @rdname kefir
#' @export
raspberry_goatKefir <- function() new(Class = 'goatKefir', syrup = c(Stonewall_raspberrySyrup = 30), pros = 'I like', date = as.Date('2024-05-13'))

#' @rdname kefir
#' @export
blueberry_goatKefir <- function() new(Class = 'goatKefir', syrup = c(Stonewall_blueberrySyrup = 30), pros = 'super nice!', date = as.Date('2024-05-15'))

#' @rdname kefir
#' @export
figWalnut_goatKefir <- function() new(Class = 'goatKefir', alias_flavor = 'Fig & Walnut', flavor = c(Stonewall_figWalnut = 25), pros = 'super nice!', date = as.Date('2024-05-16'))











#' @title Sweetened \linkS4class{filmjolk} Recipes
#' 
#' @name filmjolk
#' @aliases filmjolk-class
#' @export
setClass(Class = 'filmjolk', contains = 'recipe', prototype = prototype(
  alias_class = 'Filmj\u00f6lk',
  filmjolk = c(Siggis = 200)
))



Kahlua_filmjolk_FAIL <- function() new(
  Class = 'filmjolk',
  liqueur_Tbsp = c(Kahlua_coffee = 1),
  cons = 'alcohol too heavy', date = as.Date('2024-04-05'))

#' @rdname filmjolk
#' @export
ryeWhisky_filmjolk <- function() new(
  Class = 'filmjolk',
  syrup = c(Runamok_ryeWhisky = 14),
  pros = 'Effie loves!',
  date = as.Date('2024-04-14'))

