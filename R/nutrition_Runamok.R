

Runamok_Bourbon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], runamok = 'bourbon-barrel-aged-maple-syrup',
  name = 'Bourbon Barrel-Aged Maple\U1f341 Syrup', alias = '\u9152\u6876\u67ab\u7cd6',
  servingGram = 40, serving_ml = 30,
  sodium = .005, addedSugar = 24,
  usd = 18.95/250*30) # 2023-11-09


Runamok_rum_syrup <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], runamok = 'rum-barrel-aged-maple-syrup',
  name = 'Rum Barrel-Aged Maple\U1f341 Syrup', alias = '\u9152\u6876\u67ab\u7cd6',
  # full bottle 690g
  servingGram = 80, serving_ml = 60,
  sodium = .007, addedSugar = 53, water = 80-53,
  usd = 18.95/250*60) # 2023-11-09

Runamok_ryeWhisky_syrup <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  runamok = 'whistlepig-rye-whiskey-barrel-aged-maple-syrup',
  whistlepigwhiskey = 'barrel-aged-maple-syrup',
  name = 'Rye Whiskey Barrel-Aged Maple\U1f341 Syrup', alias = '\u9152\u6876\u67ab\u7cd6',
  # full bottle 948g
  servingGram = 40, # my guess, yet
  serving_ml = 30,
  calorie = 100,
  sodium = .005, carbohydrate = 27, addedSugar = 24, water = 40-27,
  usd = 24.95/375*30) # 2023-11-09

Runamok_appleBrandy_syrup <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], runamok = 'apple-brandy-barrel-aged-organic-maple-syrup',
  name = 'Apple Brandy Barrel-Aged Maple\U1f341 Syrup', alias = '\u9152\u6876\u67ab\u7cd6',
  # full bottle 675g; 
  servingGram = 40, serving_ml = 30,
  sodium = .005, addedSugar = 24, water = 40-24,
  usd = 18.95/250*30) # 2023-11-09
