

#' @title \linkS4class{plantGelato} Recipes
#' 
#' @description
#' Gelato with plant/nut-based fat 
#' 
#' 
#' @name plantGelato
#' @aliases plantGelato-class
#' @export
setClass(Class = 'plantGelato', contains = 'recipe', prototype = prototype(
  starch = c(Wegmans_corn = 12),
  water = 400,
  drymilk = 50,
  eggYolk = 4
))

# write into individual recipes
#url = c(
#  'www.goodlifeeats.com/pistachio-gelato-2/',
#  'www.davidlebovitz.com/pistachio-gelat/'
#)

almond_gelato <- function() new(
  Class = 'plantGelato', 
  nut = c(Kirkland_almondButter = 125), sugar = 17,
  review = 'try')


peanut_gelato <- function() new(
  Class = 'plantGelato',
  nut = c(Wegmans_peanutButter = 125), sugar = 12,
  review = 'try')

mixedNut_gelato <- function() new(
  Class = 'plantGelato', 
  nut = c(Kirkland_mixedNutButter = 125), sugar = 17,
  review = 'try')

# coconut_gelato # dog diarrhea on coconut cream..

pistachio_gelato <- function() new(
  Class = 'plantGelato', 
  nut = c(pistachio = 150), sugar = 10, # find a commercial pistachio butter ?
  review = 'try')


if (FALSE) {
  pistachio_gelato_goodlifeeats <- function() new(
    Class = 'recipe',
    # sugar = 200, # original
    sugar = 20,
    nut = c(pistachio = 153),
    milk = 245 * 3,
    starch = c(Wegmans_corn = 8*2)
  )
  pistachio_gelato_goodlifeeats() * .75
}