
#' @title \linkS4class{tiramisuMix} Recipes
#' 
#' @name tiramisuMix
#' @aliases tiramisuMix-class
#' @export
setClass(Class = 'tiramisuMix', contains = 'recipe', prototype = prototype(
  alias_class = '\u901f\u6eb6\u7c89',
  
  # old base
  #coffee_tsp = c(NescafeGold_espresso_blonde = 2)
  
  # new base!!!
  coffee_tsp = c(NescafeGold_espresso_blonde = 2.5),
  cocoaDutch_tsp = c(KingArthur_Bensdorp = .375)
))


#' @rdname tiramisuMix
#' @export
tiramisuMix <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Baileys_espresso = 2.25), 
  pros = 'Wow!! Use as default!', date = as.Date('2024-06-10'))


tiramisuMix_Baileys <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Baileys_tiramisu = 2.25), 
  review = 'hypothetical model')



#' @rdname tiramisuMix
#' @export
tiramisuMix_Kahlua <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Kahlua_coffee = 2), 
  date = as.Date('2024-05-13'), 
  pros = 'Old base: alcohol just right; I cannot take more', 
  cons = 'Old base: a little too sweet',
  review = 'try new base!!')

#' @rdname tiramisuMix
#' @export
tiramisuMix_FratelliVincenzi <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(FratelliVincenzi_espresso = 1.25), 
  pros = 'Old base: I like', date = as.Date('2024-05-15'),
  review = 'try new base!!')

#' @rdname tiramisuMix
#' @export
tiramisuMix_CaffeBorghetti <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(CaffeBorghetti = 1.5), 
  pros = 'Old base: sweetness just right', date = as.Date('2024-05-13'))

#' @rdname tiramisuMix
#' @export
tiramisuMix_Grind <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Grind_espresso = 1.25), 
  pros = 'Old base: I love!!', date = as.Date('2024-05-18'))

#' @rdname tiramisuMix
#' @export
tiramisuMix_Sabroso <- function() new(
  Class = 'tiramisuMix', 
  liqueur_tsp = c(Sabroso_coffee = 1+5/8),
  pros = 'Old base: I like', date = as.Date('2024-05-18'))







tiramisuMix_CafeGranita <- function() new(
  Class = 'tiramisuMix',
  liqueur_tsp = c(CafeGranita_coffee = 1+3/4),
  review = 'try')


tiramisuMix_Kikisi <- function() new(
  Class = 'tiramisuMix',
  liqueur_tsp = c(Kikisi_coffee = 1.875),
  review = 'try'
)



#' @export
frappe.tiramisuMix <- function(x) {
  x@drymilk <- c(Carnation_drymilk = 25)
  new_(Class = 'frappe', x*2)
}

#' @export
hotdrink.tiramisuMix <- function(x, water80 = new(Class = 'hotdrink')@water80) {
  x@drymilk <- c(Carnation_drymilk = 25)
  x@water80 <- water80
  new_(Class = 'hotdrink', x)
}








ryeWhisky_latte_FAIL <- function() new(
  Class = 'tiramisuMix', syrup_tsp = c(Runamok_ryeWhisky = 1.5), coffee_tsp = 1.5, 
  cons = c('too sweet', 'not enough alcohol'))







#' @title Show \linkS4class{tiramisuMix}
#' 
#' @description
#' ..
#' 
#' @param object \linkS4class{tiramisuMix} object
#' 
#' @export
setMethod(f = show, signature(object = 'tiramisuMix'), definition = function(object) {
  
  callNextMethod(object)
  
  hot <- hotdrink.tiramisuMix(object)
  hot_nutri <- nutrition(hot)
  
  icy <- frappe.tiramisuMix(object)
  icy_nutri <- nutrition(icy)
  
  hotFlavor <- attr(hot_nutri, which = 'cookedFlavor', exact = TRUE)
  hotFlavor@per <- sprintf(fmt = '%s hotdrink(), US\U1f4b5 %.2f', hotFlavor@per, hot_nutri@usd)
  print(hotFlavor)
  
  icyFlavor <- attr(icy_nutri, which = 'cookedFlavor', exact = TRUE)
  icyFlavor@per <- sprintf(fmt = '%s frappe(), US\U1f4b5 %.2f', icyFlavor@per, icy_nutri@usd)
  print(icyFlavor)
  
  cat('\n')
  
})

