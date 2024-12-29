

# Must use Dutch-processed cocoa powder'
# https://www.seriouseats.com/difference-dutch-process-natural-cocoa-powder-substitute
# Since Dutch process cocoa isn't acidic, it doesn't react with alkaline leaveners like baking soda to produce carbon dioxide. That's why recipes that use Dutch process cocoa are usually leavened by baking powder, which has a neutral pH.


#' @title \linkS4class{drinkmix} Recipes
#' 
#' @description ..
#' 
#' @name drink
#' @aliases drinkmix-class
#' @export
setClass(Class = 'drinkmix', contains = 'recipe', prototype = prototype(
  alias_class = 'Mix' # '\u901f\u6eb6\u7c89'
))

setValidity(Class = 'drinkmix', method = function(object) {
  if (length(object@boilingWater) || length(object@iceWater) ||
      length(object@water95) || length(object@water90) || length(object@water80) || length(object@water70)) # all kind of water
    stop('`drinkmix` cannot have water')
})


#' @rdname drink
#' @aliases drink-class
#' @export
setClass(Class = 'drink', contains = 'recipe')
setClass(Class = 'caffeLatte_', contains = 'drink')
setClass(Class = 'cocoa_', contains = 'drink')
setClass(Class = 'matchaGoatLatte_', contains = 'drink')
setClass(Class = 'matchaLatte_', contains = 'drink')
setClass(Class = 'mocaccino_', contains = 'drink')
setClass(Class = 'tiramisu_', contains = 'drink')
setClass(Class = 'pumpkinSpiceLatte_', contains = 'drink')
setClass(Class = 'milktea_', contains = 'drink')




#' @rdname drink
#' 
#' @param x \linkS4class{drinkmix} object
#' 
#' @param water,water80,water90 \link[base]{numeric} scalars, for [hotdrink]
#' 
#' @param ice,iceWater \link[base]{numeric} scalars, for [frappe]
#' 
#' @param ... ..
#' 
#' @details
#' Function [hotdrink] adds hot water (70-80C) to \linkS4class{drinkmix},
#' fitting in 20oz mug.
#' 
#' 
#' @returns
#' Function [hotdrink] returns a \linkS4class{drink} object, 
#' except for that function [hotdrink.nutrition] returns a \linkS4class{nutrition} object.
#' 
#' @export
hotdrink <- function(x, ...) UseMethod(generic = 'hotdrink') 

#' @rdname drink
#' @export hotdrink.function
#' @export
hotdrink.function <- function(x, ...) hotdrink(x = x(), ...)
# `x()` may evaluate to \linkS4class{recipe} or \linkS4class{nutrition}


#' @rdname drink
#' @export hotdrink.drinkmix
#' @export
hotdrink.drinkmix <- function(
    x, 
    water = 70,
    water90 = 560 - 70 - sum(x@pumpkin, x@liqueur, x@heavyCream), 
    ...
) {
  x@water <- water
  x@water90 <- water90
  x@alias <- character(); x@alias_class <- '' # '\u70ed\u996e'
  x@Stanley20 <- Stanley20(treatment = c(
    'add room-temperature water',
    paste('add powders,', col_red('sweep cup bottom with a square scoop,'), 'whisk until smooth'),
    'add hot water, whisk until froth',
    paste(col_green('optional'), 'add liqueur', col_red('which curdles dry milk')),
    paste(col_green('optional'), 'add tea bags, soak (covered) for 1hr+')
  ))
  cls <- class(x) # ?devtools::check warns on `if (class(x) == '.')`
  new(Class = if (cls == 'drinkmix') {
    'drink' # undefined 'drinkmix'
  } else if (endsWith(cls, suffix = 'Mix')) {
    gsub('Mix$', replacement = '_', x = cls)
  } else {
    paste0(cls, '_')
  }, x)
}

#' @rdname drink
#' @export hotdrink.nutrition
#' @export
hotdrink.nutrition <- function(x, water80 = stop('Find suggested hot water on packaging'), ...) {
  x@cost_ <- character()
  x@usd <- sum(x@usd, Wegmans_water()@usd/Wegmans_water()@servingGram * water80)
  x@jpy <- numeric()
  x@water <- sum(x@water, water80)
  x@servingGram <- sum(x@servingGram, water80)
  x@servingTsp <- numeric()
  return(new(Class = 'nutrition', x))
}


#' @rdname drink
#' 
#' @details
#' Function [frappe] adds 16 fl oz (1.97 US cup, 473 ml) of ice water + shaved ice to \linkS4class{drinkmix}.
#' Up to 250g ice cubs, plus 230g ice water, can be used in Nutribullet Ultra 20oz cup.
#' 320g ice cubs (one OXO tray), plus 150g ice water, is too dry for Nutribullet Ultra 24oz cup, 
#' also too dry for drinking.
#' 
#' @returns
#' Function [frappe] returns a \linkS4class{drink} object.
#' 
#' @export
frappe <- function(x, ...) UseMethod(generic = 'frappe')

#' @rdname drink
#' @export frappe.function
#' @export
frappe.function <- function(x, ...) frappe(x = x(), ...)
# `x()` may evaluate to \linkS4class{recipe} or \linkS4class{nutrition}

#' @rdname drink
#' @export frappe.drinkmix
#' @export
frappe.drinkmix <- function(
    x, 
    ice = 560/2 - sum(x@pumpkin, x@liqueur, x@heavyCream)/2, # 1 US cup, Nutribullet can handle!!
    iceWater = ice,
    ...
) {
  x@ice <- ice
  x@iceWater <- if (length(x@milk)) numeric() else iceWater
  x@alias <- character(); x@alias_class <- 'Frapp\u00e9'
  x@nutribullet24 <- nutribullet24(treatment = c(
    'put in ice cubes \u21d2 powders \u21d2 non-alcoholic liquid',
    'blend',
    'add alcohol last'
  ))
  cls <- class(x) # ?devtools::check warns on `if (class(x) == '.')`
  new(Class = if (cls == 'drinkmix') {
    'drink' # undefined 'drinkmix'
  } else if (endsWith(cls, suffix = 'Mix')) {
    gsub('Mix$', replacement = '_', x = cls)
  } else {
    paste0(cls, '_')
  }, x)
}









#' @title Show \linkS4class{drinkmix}
#' 
#' @description
#' ..
#' 
#' @param object \linkS4class{drinkmix} object
#' 
#' @export
setMethod(f = show, signature = 'drinkmix', definition = function(object) {
  callNextMethod(object)

  hot <- hotdrink(object) # 2-cup hot water, or shaved ice
  nutri_ <- nutrition(hot)
  flavor_ <- attr(nutri_, which = 'cookedFlavor', exact = TRUE)
  flavor_@per <- sprintf(
    fmt = '%s + %.0fg Water, US\U1f4b5 %.2f', 
    flavor_@per, 
    sum(hot@water, hot@water80, hot@water90, hot@water95),
    nutri_@usd)
  print(flavor_)
})






# @rdname drink
# @export
#lemonade <- function() new(
#  Class = 'recipe', alias_flavor = 
# ### that lemonade mix ???  into an iceDrink
#)









