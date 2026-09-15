
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
#' @name cornjuice-class
#' @export
setClass(Class = 'cornjuice', contains = 'recipe', prototype = prototype(
  class2 = '\u7389\u7c73\U1f33d\u6c41'
))



#' @rdname cornjuice-class
#' @export
cornjuice <- \() new(
  Class = 'cornjuice', flavor = '',
  yellowCorn = 367, water = 560,
  tool = list(JoyoungDJ13U_cornjuice(
    waterLost = 90  # confirmed!!
  ))) # Perfect thickness for making pastry

#' @rdname cornjuice-class
#' @export
cornVeggiePaste <- \() new(
  Class = 'cornjuice', flavor = '\u852c\u83dc\U1f955\U1fadb',
  yellowCorn = 246,
  puree = c(Kirkland_mixedVeggies = 123), water = 560,
  tool = list(JoyoungDJ13U_cornjuice(
    waterLost = 90  # to confirm
  )),
  note = c('2 cups of frozen corn + 1 cup of diced fresh carrots (Nutribullet)'),
  review = 'Good to drink directly')
