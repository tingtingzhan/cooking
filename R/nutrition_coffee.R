
#' @title Instant Coffee
#' 
#' @keywords internal
#' @name nutrition_coffee
NULL


#' @rdname nutrition_coffee
#' @export
NescafeTastersChoice_decaf <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  nescafeUS = 'decaf-house-blend-medium-light-roast-instant-coffee-7-oz-jar/',
  name = '\u901f\u6eb6\u5496\u5561 Taster\'s Choice\u00ae Decaf', #\u2615 
  sams = 'prod22522393', usd = 16.83/397*15, # 2023-11-10
  # no label information on nutrition facts!
  servingGram = 15, servingCup = 1/4, # actual measurement 
  superior = 'NescafeGold_espresso_blonde',
  review = 'too sour!!')

#' @rdname nutrition_coffee
#' @export
NescafeGold_decaf <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafe = 'nescafe-gold-decaf',
  name = '\u901f\u6eb6\u5496\u5561 Gold\u00ae Decaf', #\u2615
  # one bottle 95g
  servingGram = 4, servingTbsp = 1, # actual experiment
  superior = 'NescafeGold_espresso_blonde'
)

# https://www.madewithnestle.ca/nescafe/coffee/gold

#' @rdname nutrition_coffee
#' @export
NescafeGold_espresso_decaf <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafeGoldEspressoCA = 'decaf-gold-espresso-instant-coffee',
  name = '\u901f\u6eb6\u5496\u5561 Decaf', #\u2615
  usd = 13.95/90*2, # one bottle 90g
  servingGram = 2, #servingTsp = 1, # packaging
  servingTsp = 2, # actual experiment: 3g = 1Tbsp
  calorie = 5,
  carbohydrate = 1.8, protein = .2,
  superior = 'NescafeGold_espresso_blonde')

# https://www.nescafe.com/our-coffees/nescafe-gold-espresso


#' @rdname nutrition_coffee
#' @export
NescafeGold_espresso_intense <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafeGoldEspressoUS = 'intense-instant-coffee-35-oz-jar',
  walmart = '5066099258',
  name = '\u901f\u6eb6\u5496\u5561 Intense', #\u2615
  usd = 6.68/100*2,
  servingGram = 2, servingTsp = 2, # using NescafeGold_espresso_decaf() data
  superior = 'NescafeGold_espresso_blonde'
)

#' @rdname nutrition_coffee
#' @export
NescafeGold_espresso_blonde <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafeGoldEspressoUS = 'blonde-instant-coffee-35-oz-jar',
  walmart = '5066099259',
  name = 'Blonde', alias = '\u901f\u6eb6\u5496\u5561', #\u2615
  usd = 6.68/100*2,
  servingGram = 2,
  servingTsp = 2 # using NescafeGold_espresso_decaf() data
)

