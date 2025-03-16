
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
  name = 'Taster\'s Choice\u00ae Decaf', alias = '\u901f\u6eb6\u5496\u5561',
  sams = 'prod22522393', usd = 16.83/397*15, # 2023-11-10
  # no label information on nutrition facts!
  servingGram = 15, servingCup = 1/4, # actual measurement 
  superior = 'NescafeGold_espresso_blonde',
  review = 'too sour!!')

#' @rdname nutrition_coffee
#' @export
NescafeGold_decaf <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafe = 'decaf',
  name = 'Gold\u00ae Decaf', alias = '\u901f\u6eb6\u5496\u5561',
  # one bottle 95g
  servingGram = 4, servingTbsp = 1, # actual experiment
  superior = 'NescafeGold_espresso_blonde'
)

# https://www.madewithnestle.ca/nescafe/coffee/gold

#' @rdname nutrition_coffee
#' @export
NescafeGold_espresso_decaf_Canada <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafeGoldEspressoCA = 'decaf-gold-espresso-instant-coffee',
  name = paste('Decaf, Rich Crema', bg_br_white('\U1f1e8\U1f1e6 Market')), 
  alias = '\u901f\u6eb6\u5496\u5561',
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
  nescafeGoldEspressoUS = 'gold-espresso-intense-instant-coffee-35-oz-jar',
  walmart = '5066099258',
  name = 'Intense, Velvety Crema', alias = '\u901f\u6eb6\u5496\u5561',
  usd = 6.68/100*2,
  servingGram = 2, servingTsp = 2, # using NescafeGold_espresso_decaf_Canada() data
  superior = 'NescafeGold_espresso_blonde'
)

#' @rdname nutrition_coffee
#' @export
NescafeGold_espresso_decaf <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafeGoldEspressoUS = 'gold-decaf-espresso-instant-coffee',
  walmart = '12273958388',
  name = 'Decaf, Velvety Crema', alias = '\u901f\u6eb6\u5496\u5561',
  usd = 8.58/100*2,
  servingGram = 2, servingTsp = 2#, # using NescafeGold_espresso_decaf_Canada() data
  #superior = 'NescafeGold_espresso_blonde'
)

#' @rdname nutrition_coffee
#' @export
NescafeGold_espresso_blonde <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafeGoldEspressoUS = 'gold-espresso-blonde-instant-coffee-35-oz-jar',
  walmart = '5066099259',
  name = 'Blonde, Velvety Crema', alias = '\u901f\u6eb6\u5496\u5561',
  usd = 6.68/100*2,
  servingGram = 2,
  servingTsp = 2 # using NescafeGold_espresso_decaf_Canada() data
)

