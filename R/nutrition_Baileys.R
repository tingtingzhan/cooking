
#' @title Baileys Liqueur
#' 
#' @keywords internal
#' @name nutrition_Baileys
NULL


#' @rdname nutrition_Baileys
#' @export
Baileys_espresso <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  baileys = 'espresso-creme',
  #url = 'www.baileys.com/en-us/products/baileys-espresso-creme' # no nutrition info
  name = 'Espresso Cre\u0300me', alias = '\u5496\u5561\u5976\u6cb9\u9152',
  totalwine = '151853750', usd = 28.99/750*100, # 750ml
  servingGram = 100, # my guess
  serving_ml = 100,
  AbV = .17, 
  alcohol = 13.5,
  calorie = 313,
  fat = 14, salt = .2, carbohydrate = 22, sugar = 19, protein = 3
)


#' @rdname nutrition_Baileys
#' @export
Baileys_chocolatLuxe <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'chocolat-luxe',
  name = 'Chocolat Luxe', alias = '\u5de7\u514b\u529b\u9152',
  servingGram = 100, # my guess
  serving_ml = 100,
  AbV = .157,
  alcohol = 12.5,
  calorie = 342,
  fat = 15, salt = .3, carbohydrate = 27.2, sugar = 23, protein = 3)


#' @rdname nutrition_Baileys
#' @export
Baileys_colada <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'colada',
  # creamy coconut and sweet, juicy pineapples.
  name = 'Colada', alias = '\u6930\u6d46\u83e0\u841d\u9152',
  totalwine = '235736750', usd = 30.99/750*100,
  servingGram = 100,
  serving_ml = 100,
  AbV = .17,
  calorie = 313, salt = .2,
  protein = 3, carbohydrate = 21, sugar = 18, fat = 14, alcohol = 13.5)


#' @rdname nutrition_Baileys
#' @export
Baileys_tiramisu <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'tiramisu-cocktail',
  # mascarpone, espresso with hints of chocolate.
  name = 'Tiramisu Cocktail',
  servingGram = 100,
  serving_ml = 100,
  AbV = .17,
  calorie = 315,
  protein = 3, salt = .2,
  carbohydrate = 22, sugar = 19, fat = 14
)

#' @rdname nutrition_Baileys
#' @export
Baileys_smores <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 's-mores',
  name = 'S\'mores', alias = '\u5de7\u514b\u529b\u68c9\u82b1\u7cd6\u9152',
  servingGram = 100,
  serving_ml = 100,
  totalwine = '351020750', usd = 27.99/750*100,
  AbV = .17,
  calorie = 314,
  protein = 3, salt = .3,
  carbohydrate = 21.6, # sugar = ??, fat = ?? # website left out
  alcohol = 12.5
)


#' @rdname nutrition_Baileys
#' @export
Baileys_pumpkinSpice <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'pumpkin-spice',
  name = 'Pumpkin\U1f383 Spice', alias = '\u5496\u5561\u9152',
  servingGram = 100,
  serving_ml = 100,
  #totalwine = NA_character_, # not carried in totalwine
  AbV = .17,
  calorie = 312,
  protein = 3, salt = .2,
  fat = 14, carbohydrate = 21, sugar = 18, 
  alcohol = 13.5
)



#' @rdname nutrition_Baileys
#' @export
Baileys_icedCoffeeLatte <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'iced-coffee-latte',
  name = 'Iced Coffee Latte',
  servingGram = 100, # my guess
  serving_ml = 100,
  AbV = .04,
  calorie = 110,
  protein = 2, carbohydrate = 15, sugar = 9.9, fat = 2.2, alcohol = 3.5) #, caffeine = .006)
