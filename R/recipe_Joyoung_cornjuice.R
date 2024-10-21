
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
  Class = 'cornjuice', alias_flavor = '',
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