


DaoXiangCun_corn <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = '\u7a3b\u9999\u6751', name = 'Cornmeal\U1f33d \u7389\u7c73\u9762',
  servingGram = 50, servingCup = 1/2, # volume not accurate!!!
  fat = 1.5)

#' @title Corn Meal
#' 
#' @name cornmeal
#' @export
Albertsons_yellowCorn <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  #name = '\u9ec4\u7389\u7c73\u9762 Yellow Cornmeal\U1f33d',
  name = 'Yellow Cornmeal\U1f33d', alias = '\u9ec4\u7389\u7c73\u9762',
  acme = 117010060L, usd = 4.29/2270*30,
  servingGram = 30, 
  # servingCup = 1/4, # packaging
  servingCup = 30/150, # actual experiment, 1cup = 150g, 2024-10-29
  calorie = 110,
  fat = 1, carbohydrate = 23, sugar = 1, protein = 2)

#' @rdname cornmeal
#' @export
IndianHead_whiteCorn <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Indian Head\U1f1fa\U1f1f8', url = 'https://www.wrmills.com/products/consumer-products/')),
  name = 'White Cornmeal\U1f33d',  
  wegmans = 19868L, usd = 1.79/907*30,
  servingGram = 30, servingCup = 1/4,
  calorie = 110,
  fat = 1, protein = 2, 
  review = 'Extremely coarse, do not buy!')

#' @rdname cornmeal
#' @export
IndianHead_yellowCorn <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Indian Head\U1f1fa\U1f1f8', url = 'https://www.wrmills.com/products/consumer-products/')),
  name = 'Yellow Cornmeal\U1f33d',
  wegmans = 19981L, usd = 1.79/907*30,
  servingGram = 30, servingCup = 1/4,
  calorie = 110,
  fat = 1, carbohydrate = 23, sugar = .5, protein = 2, 
  superior = 'Albertsons_yellowCorn',
  review = 'Extremely coarse')

#' @rdname cornmeal
#' @export
Quaker_yellowCorn <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], quakeroats = 'more-products-from-quaker/specialty-items/corn-meal/yellow-corn-meal',
  name = 'Yellow Cornmeal\U1f33d', alias = '\u9ec4\u7389\u7c73\u9762',
  wegmans = 16686L, usd = 2.99/680*27,
  servingGram = 27, servingTbsp = 3, 
  calorie = 90,
  carbohydrate = 21, protein = 2)

#' @rdname cornmeal
#' @export
Quaker_whiteCorn <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], quakeroats = 'more-products-from-quaker/specialty-items/corn-meal/white-corn-meal',
  name = '\u9ec4\u7389\u7c73\u9762 White Cornmeal\U1f33d',
  servingGram = 27, servingTbsp = 3, 
  calorie = 90,
  fat = .5, carbohydrate = 21, protein = 2)


Wegmans_creamCorn <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  wegmans = 16741L, usd = .69/418*125,
  name = 'Cream Style Corn\U1f33d',
  servingGram = 125, servingCup = 1/2,
  calorie = 80,
  fat = .5, sodium = .3, carbohydrate = 16, sugar = 8, addedSugar = 4, protein = 2)


