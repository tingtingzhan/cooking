

Runamok_Bourbon <- function() new(
  Class = 'nutrition', runamok = 'bourbon-barrel-aged-maple-syrup',
  name = '\u9152\u6876\u67ab\u7cd6\u6d46 Bourbon Barrel-Aged Maple\U1f341 Syrup',
  servingGram = 40, serving_ml = 30,
  sodium = .005, addedSugar = 24,
  usd = 18.95/250*30) # 2023-11-09


Runamok_rum <- function() new(
  Class = 'nutrition', runamok = 'rum-barrel-aged-maple-syrup',
  name = '\u9152\u6876\u67ab\u7cd6\u6d46 Rum Barrel-Aged Maple\U1f341 Syrup',
  # full bottle 690g
  servingGram = 80, serving_ml = 60,
  sodium = .007, addedSugar = 53, water = 80-53,
  usd = 18.95/250*60) # 2023-11-09

Runamok_ryeWhisky <- function() new(
  Class = 'nutrition', runamok = 'whistlepig-rye-whiskey-barrel-aged-maple-syrup',
  url = 'shop.whistlepigwhiskey.com/products/barrel-aged-maple-syrup',
  name = '\u9152\u6876\u67ab\u7cd6\u6d46 WhistlePig Rye Whiskey Barrel-Aged Maple\U1f341 Syrup',
  # full bottle 948g
  servingGram = 40, # my guess, yet
  serving_ml = 30,
  calorie = 100,
  sodium = .005, carbohydrate = 27, addedSugar = 24, water = 40-27,
  usd = 24.95/375*30) # 2023-11-09

Runamok_brandy <- function() new(
  Class = 'nutrition', runamok = 'apple-brandy-barrel-aged-organic-maple-syrup',
  name = '\u9152\u6876\u67ab\u7cd6\u6d46 Apple Brandy Barrel-Aged Maple\U1f341 Syrup',
  # full bottle 675g; 
  servingGram = 40, serving_ml = 30,
  sodium = .005, addedSugar = 24, water = 40-24,
  usd = 18.95/250*30) # 2023-11-09
