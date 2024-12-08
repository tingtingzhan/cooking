
#' @title Baileys Liqueur
#' 
#' @name nutrition_Baileys
NULL


#' @rdname nutrition_Baileys
#' @export
Baileys_espresso <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  baileys = 'baileys-espresso-creme',
  #url = 'www.baileys.com/en-us/products/baileys-espresso-creme' # no nutrition info
  name = 'Espresso Cre\u0300me', alias = '\u5496\u5561\u5976\u6cb9\u9152',
  totalwine = '151853750', usd = 28.99/750*100, # 750ml
  servingGram = 100, # my guess
  serving_ml = 100,
  AbV = .17, 
  alcohol = 13.5,
  calorie = 313,
  fat = 14, carbohydrate = 22, sugar = 19, protein = 3
)


#' @rdname nutrition_Baileys
#' @export
Baileys_chocolatLuxe <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'baileys-chocolat-luxe',
  name = 'Chocolat Luxe', alias = '\u5de7\u514b\u529b\u9152',
  servingGram = 50, # my guess
  serving_ml = 50,
  AbV = .157,
  alcohol = 6.5,
  calorie = 171,
  fat = 7, carbohydrate = 14, sugar = 11, protein = 2)


#' @rdname nutrition_Baileys
#' @export
Baileys_colada <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'baileys-colada',
  # creamy coconut and sweet, juicy pineapples.
  name = 'Colada',
  totalwine = '235736750', usd = 30.99/750*100,
  servingGram = 100,
  serving_ml = 100,
  AbV = .17,
  calorie = 313,
  protein = 3, carbohydrate = 21, sugar = 18, fat = 14, alcohol = 13.5)


#' @rdname nutrition_Baileys
#' @export
Baileys_tiramisu <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'baileys-tiramisu-cocktail',
  # mascarpone, espresso with hints of chocolate.
  name = 'Tiramisu Cocktail',
  servingGram = 100,
  serving_ml = 100,
  AbV = .17,
  calorie = 315,
  protein = 6, # ??
  carbohydrate = 22, sugar = 19, fat = 14
)

#' @rdname nutrition_Baileys
#' @export
Baileys_smores <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'baileys-s-mores',
  name = 'S\'mores', alias = '\u5de7\u514b\u529b\u68c9\u82b1\u7cd6\u9152',
  servingGram = 100,
  serving_ml = 100,
  totalwine = '351020750', usd = 27.99/750*100,
  AbV = .17,
  calorie = 314,
  protein = 3,
  carbohydrate = 21.6, # sugar = 19, fat = 14 # website left out
  alcohol = 12.5
)

  
#' @rdname nutrition_Baileys
#' @export
Baileys_icedCoffeeLatte <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'baileys-iced-coffee-latte',
  name = 'Iced Coffee Latte',
  servingGram = 100, # my guess
  serving_ml = 100,
  AbV = .04,
  calorie = 110,
  protein = 2, carbohydrate = 15, sugar = 9.9, fat = 2.2, alcohol = 3.5) #, caffeine = .006)
