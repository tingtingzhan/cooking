


# https://www.barry-callebaut.com/en/manufacturers/product-filter?topic_groups%5B0%5D=6&categories_level_1%5B0%5D=4&categories_level_2%5B0%5D=6&brands%5B0%5D=201

if (FALSE) {
  nutrition_(
    KingArthur_blackCocoa,
    KingArthur_Burgundy,
    KingArthur_Bensdorp, 
    Ghirardelli_sunrise,
    Ghirardelli_majestic,
    Navitas_cacao
  )
}


Navitas_cacao <- function() new(
  Class = 'nutrition', navitas = 'cacao-powder',
  # bought at Costco once, but didn't see any more
  name = '\u53ef\u53ef\u7c89 Cacao Powder',
  extra = new(Class = 'extra', water = 1), # tested with bao()
  usd = 7/680*6, # price not sure
  servingGram = 6, 
  #servingTbsp = 1, # on package 
  servingTbsp = 6/7*1, # actual measure: 1tbsp=7g
  calorie = 25,
  fat = .5, carbohydrate = 3, protein = 2)


KingArthur_blackCocoa <- function() new(
  Class = 'nutrition', kingarthur = 211821L, 
  name = '\u78b1\u5316\u9ed1\u53ef\u53ef\u7c89 Black Cocoa',
  usd = 14.95/397*5, # 2023-11-12
  servingGram = 5, 
  # servingTbsp = 1, # on package
  servingTbsp = 5/7, # actual experiment: 1tbsp = 7g
  calorie = 15,
  fat = .5, carbohydrate = 2, protein = 1,
  review = c(
    'I don\'t like it for hot chocolate'
  ))

KingArthur_Bensdorp <- function() new(
  Class = 'nutrition', kingarthur = 211698L,
  name = '\u78b1\u5316\u53ef\u53ef\u7c89 Bensdorp Cocoa',
  usd = 14.95/397*6, # 2023-11-12
  servingGram = 6, 
  #servingTbsp = 1, # on package
  servingTbsp = 6/9, # actual experiment, 1tbsp = 9g
  calorie = 20,
  fat = 1.5, carbohydrate = 3, protein = 1)

KingArthur_Burgundy <- function() new(
  Class = 'nutrition', kingarthur = 211822L,
  name = '\u78b1\u5316\u53ef\u53ef\u7c89 Burgundy Cocoa',
  usd = 14.95/397*5, # 2023-11-12
  servingGram = 5, 
  #servingTbsp = 1, # on package
  servingTbsp = 5/(24/8*3), # actual experiment 24g = 8tsp
  calorie = 20,
  # no Carbohydrate!!
  fat = 1, protein = 1)

Ghirardelli_cocoa <- function() new(
  Class = 'nutrition', 
  ghirardelli = 'premium-baking-cocoa-100-unsweetened-cocoa-powder-6-bags-61703cs',
  name = 'Ground Cocoa',
  usd = 39.95/(6*227)*6, 
  servingGram = 6, servingTbsp = 1,
  calorie = 15,
  fat = 1, protein = 1)



Ghirardelli_sunrise <- function() new(
  Class = 'nutrition', webstaurant = '40869069',
  name = 'Sunrise, 15-17% Cocoa Butter',
  ghirardelli = 'cocoa-powders-information',
  servingGram = 100, servingTbsp = 100/6, # packaging
  calorie = 234, 
  fat = 15.3, sodium = .03, carbohydrate = 49.7, sugar = .6, protein = 21.3)

Ghirardelli_majestic <- function() new(
  Class = 'nutrition', webstaurant = '40869096',
  ghirardelli = 'cocoa-powders-information',
  name = 'Majestic, 20-22% Cocoa Butter',
  servingGram = 100, servingTbsp = 100/6, # packaging
  calorie = 368,
  fat = 20.7, sodium = .03, carbohydrate = 41.2, sugar = .3, protein = 20.8)

Ghirardelli_superior <- function() new(
  Class = 'nutrition', webstaurant = '40869072',
  ghirardelli = 'cocoa-powders-information',
  name = 'Superior, 10-12% Cocoa Butter',
  servingGram = 100, servingTbsp = 100/6, # packaging
  calorie = 220,
  fat = 13.1, sodium = .019, carbohydrate = 58.3, sugar = 1.76, protein = 18.1)

#Ghirardelli_merritas ??

