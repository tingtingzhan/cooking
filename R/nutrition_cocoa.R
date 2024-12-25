
# https://www.barry-callebaut.com/en/manufacturers/product-filter?topic_groups%5B0%5D=6&categories_level_1%5B0%5D=4&categories_level_2%5B0%5D=6&brands%5B0%5D=201

#' @title Cocoa Powder
#' 
#' @examples
#' diagnose(
#'  KingArthur_blackCocoa,
#'  KingArthur_Burgundy,
#'  KingArthur_Bensdorp, 
#'  Ghirardelli_sunrise,
#'  Ghirardelli_majestic,
#'  Navitas_cacao
#' )
#' @keywords internal
#' @name nutrition_cocoa
NULL

#' @rdname nutrition_cocoa
#' @export
Navitas_cacao <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], navitas = 'cacao-powder',
  # bought at Costco once, but didn't see any more
  name = 'Cacao Powder', alias = '\u53ef\u53ef\u7c89',
  extra = new(Class = 'extra', water = 1), # tested with bao()
  usd = 7/680*6, # price not sure
  servingGram = 6, 
  #servingTbsp = 1, # on package 
  servingTbsp = 6/7*1, # actual measure: 1tbsp=7g
  calorie = 25,
  fat = .5, carbohydrate = 3, protein = 2)


#' @rdname nutrition_cocoa
#' @export
KingArthur_blackCocoa <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 211821L, 
  name = 'Black Cocoa', alias = '\u78b1\u5316\u9ed1\u53ef\u53ef\u7c89',
  usd = 14.95/397*5, # 2023-11-12
  servingGram = 5, 
  # servingTbsp = 1, # on package
  servingTbsp = 5/7, # actual experiment: 1tbsp = 7g
  calorie = 15,
  fat = .5, carbohydrate = 2, protein = 1,
  review = c(
    'I don\'t like it for hot chocolate'
  ))

#' @rdname nutrition_cocoa
#' @export
KingArthur_Bensdorp <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 211698L,
  name = 'Bensdorp Cocoa', alias = '\u78b1\u5316\u53ef\u53ef\u7c89',
  usd = 14.95/397*6, # 2023-11-12
  servingGram = 6, 
  #servingTbsp = 1, # on package
  servingTbsp = 6/9, # actual experiment, 1tbsp = 9g
  calorie = 20,
  fat = 1.5, carbohydrate = 3, protein = 1)

#' @rdname nutrition_cocoa
#' @export
KingArthur_Burgundy <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 211822L,
  name = 'Burgundy Cocoa', alias = '\u78b1\u5316\u53ef\u53ef\u7c89',
  usd = 14.95/397*5, # 2023-11-12
  servingGram = 5, 
  #servingTbsp = 1, # on package
  servingTbsp = 5/(24/8*3), # actual experiment 24g = 8tsp
  calorie = 20,
  # no Carbohydrate!!
  fat = 1, protein = 1,
  superior = 'KingArthur_Bensdorp')

#' @rdname nutrition_cocoa
#' @export
Ghirardelli_cocoa <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  ghirardelli = 'premium-baking-cocoa-100-unsweetened-cocoa-powder-6-bags-61703cs',
  name = 'Ground Cocoa',
  usd = 39.95/(6*227)*6, 
  servingGram = 6, servingTbsp = 1,
  calorie = 15,
  fat = 1, protein = 1)


#' @rdname nutrition_cocoa
#' @export
Ghirardelli_bittersweet <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  ghirardelli = '60-cacao-bittersweet-chocolate-premium-baking-chips-12-bags-61274cs',
  name = 'Bittersweet, Chips, 60% Cacao', alias = '\u70d8\u57f9\u5de7\u514b\u529b',
  webstaurant = '40842319', usd = 248.49/(35*454)*100,
  servingGram = 100,
  calorie = 503.884,
  fat = 37.731, cholesterol = 2.586e-3, 
  carbohydrate = 54.621, fiber = 8.914, sugar = 37.793, addedSugar = 37.424, protein = 5.788)

#' @rdname nutrition_cocoa
#' @export
Ghirardelli_semisweet_bar <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  ghirardelli = 'semi-sweet-chocolate-baking-bar-case-of-12',
  name = 'Semi-Sweet\U1f36b', alias = '\u70d8\u57f9\u5de7\u514b\u529b',
  usd = 42.95/12/8,
  servingGram = 14,
  calorie = 70,
  fat = 4.5, carbohydrate = 9, fiber = 1, sugar = 7, addedSugar = 7)

#' @rdname nutrition_cocoa
#' @export
Ghirardelli_semisweet_chip <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  ghirardelli = 'semisweet-chocolate-premium-baking-chips-chocolate-chips-for-baking-12-bags-64015cs',
  name = 'Semi-Sweet, Chips', alias = '\u70d8\u57f9\u5de7\u514b\u529b',
  webstaurant = '40842246', usd = 196.49/(35*454)*100,
  servingGram = 100,
  calorie = 472.512,
  fat = 26.557, cholesterol = .599e-3, carbohydrate = 67.799, fiber = 6.301, sugar = 55.839, addedSugar = 55.342, protein = 4.230)


#' @rdname nutrition_cocoa
#' @export
Ghirardelli_sunrise <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Sunrise, 15-17%\U1f9c8', alias = '\u53ef\u53ef\u7c89',
  ghirardelli = 'cocoa-powders-information',
  servingGram = 100, servingTbsp = 100/6, # packaging
  webstaurant = '40869069', usd = 176.49/(25*454)*100,
  calorie = 233.14, 
  fat = 15.3, sodium = .03, carbohydrate = 49.7, sugar = .6, protein = 21.3)

#' @rdname nutrition_cocoa
#' @export
Ghirardelli_majestic <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  ghirardelli = 'cocoa-powders-information', alias = '\u53ef\u53ef\u7c89',
  name = 'Majestic, 20-22%\U1f9c8',
  webstaurant = c('40869096', '40862100'), usd = 212.99/(25*454)*100,
  servingGram = 100, servingTbsp = 100/6, # packaging
  calorie = 295.311,
  fat = 23.71, sodium = .02, carbohydrate = 49.71, fiber = 33.9, sugar = 1.53, protein = 16.8)

#' @rdname nutrition_cocoa
#' @export
Ghirardelli_superior <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  ghirardelli = 'cocoa-powders-information',
  name = 'Superior, 10-12%\U1f9c8', alias = '\u53ef\u53ef\u7c89',
  servingGram = 100, servingTbsp = 100/6, # packaging
  webstaurant = '40869072', usd = 188.99/(25*454)*100,
  calorie = 220,
  fat = 13.1, sodium = .019, carbohydrate = 58.3, fiber = 29.8, sugar = 1.76, protein = 18.1)

#Ghirardelli_merritas ??

