
Baileys_chocolatLuxe <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'baileys-chocolat-luxe',
  name = '\u5de7\u514b\u529b\u9152 Chocolat Luxe',
  servingGram = 50, # my guess
  serving_ml = 50,
  AbV = .157,
  alcohol = 6.5,
  calorie = 171,
  fat = 7, carbohydrate = 14, sugar = 11, protein = 2)


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

Baileys_smores <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'baileys-s-mores',
  name = 'S\'mores',
  servingGram = 100,
  serving_ml = 100,
  totalwine = '351020750', usd = 27.99/750*100,
  AbV = .17,
  calorie = 314,
  protein = 3,
  carbohydrate = 21.6, # sugar = 19, fat = 14 # website left out
  alcohol = 12.5
)

  
Baileys_icedCoffeeLatte <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  baileys = 'baileys-iced-coffee-latte',
  name = 'Iced Coffee Latte',
  servingGram = 100, # my guess
  serving_ml = 100,
  AbV = .04,
  calorie = 110,
  protein = 2, carbohydrate = 15, sugar = 9.9, fat = 2.2, alcohol = 3.5) #, caffeine = .006)
