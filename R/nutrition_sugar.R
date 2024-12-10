
# https://www.thekitchn.com/sugar-substitutes-23023179#

# Avoid powdered sugar, if possible, 
# for recipes that require creaming together the butter and sugar. 
# Cookies made with powdered sugar won’t bake up as crisp.

# whiz 1 cup granulated sugar and 1 tablespoon cornstarch in a food processor 
# for each cup of powdered sugar you need.



Domino_10x <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  domino = 'powdered-sugar', # Ingredients: cane sugar, corn starch
  name = '10x\u7cd6\u7c89 Sugar, Confectioners',
  bjs = 'domino-confectioners-sugar-4-lbs/3000000000000139695', usd = 5.29/(4*454)*30, # 2023-11-11
  wegmans = 54235L,
  servingGram = 30, 
  # servingTsp = 12, # packaging
  servingTsp = 30/(33/12), # actual experiment: 1/4 cup = 33 grams
  # re-experiment with a freshly opened bag!!
  calorie = 120,
  carbohydrate = 30, addedSugar = 29)

Domino_granulated <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  domino = 'granulated-sugar',# Ingredients: cane sugar, 
  name = 'Granulated Sugar', alias = '\u767d\u7802\u7cd6',
  walmart = '219588515', usd = 5.92/1590*8,
  wegmans = 23344L,
  servingGram = 8, servingTsp = 2, # packaging
  calorie = 30,
  carbohydrate = 8, addedSugar = 8)

Domino_golden <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  domino = 'golden-sugar',
  name = '\u7c97\u7802\u7cd6 Golden Sugar',
  wegmans = 26095611L, usd = 1.48/454*8,
  servingGram = 8, servingTsp = 2, # packaging
  calorie = 30,
  carbohydrate = 8, sugar = 8)

US_10x <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  costco = '100436353',
  costcoBiz = '11830701',
  brand = c(style_hyperlink(text = 'U.S.\U1f1fa\U1f1f8', url = 'https://unitedsugarpr.com/product-category/powdered-sugar/')),
  name = 'Sugar, Confectioners', alias = '10x\u7cd6\u7c89',
  usd = 4.99/3180*30,
  servingGram = 30,
  #servingCup = 1/4, # packaging
  servingCup = 30/3/48, # actual experiment: 1tsp = 3g
  calorie = 120,
  carbohydrate = 30, addedSugar = 29)


Wegmans_darkBrown <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 23179103L,
  name = '\u7ea2\u7cd6 Dark Brown Sugar',
  servingGram = 8, servingTsp = 2, 
  calorie = 30,
  carbohydrate = 8, addedSugar = 8)

Domino_darkBrown <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], domino = 'dark-brown-sugar',
  name = 'Dark Brown Sugar', alias = '\u7ea2\u7cd6',
  walmart = '10291798', usd = 3.12/(2*454)*8,
  wegmans = 26106291L,
  servingGram = 8, servingTsp = 2, 
  calorie = 30,
  carbohydrate = 8, addedSugar = 8)

Domino_lightBrown <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], domino = 'light-brown-sugar',
  name = 'Light Brown Sugar', alias = '\u7ea2\u7cd6',
  walmart = '35690427', usd = 5.54/1.81*8, # 4lb
  wegmans = 26106288L,
  servingGram = 8, servingTsp = 2, 
  calorie = 30,
  carbohydrate = 8, addedSugar = 8)
