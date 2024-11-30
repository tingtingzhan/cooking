
Quaker_oat <- function() new(
  Class = 'nutrition', 
  quakeroats = 'hot-cereals/old-fashioned-oats',
  name = '\u719f\u538b\u71d5\u9ea6 Old Fashioned Oats',
  costco = '100381521', usd = 11.99/(10*453.6)*40,
  servingGram = 40, servingCup = 1/2, 
  calorie = 150,
  fat = 3, carbohydrate = 27, sugar = 1, protein = 5)




HaiTai_blackRice <- function() new(
  Class = 'nutrition',
  haitaiusa = 'black-rice-\ud751\ubbf8-2lbs', 
  name = '\u9ed1\u7c73 Black Rice',
  servingGram = 45, servingCup = 1/4, 
  calorie = 160, usd = 6.99/910*45,
  fat = 2, carbohydrate = 33, sugar = 1, protein = 3)


Nishiki_brownRice <- function() new(
  Class = 'nutrition', 
  nishiki = '69969', name = '\u7384\u7c73 Premium Brown Rice',
  wegmans = 10902L, amazon = 'B006SFAS6C',
  servingGram = 45, servingCup = 1/4, # packaging, actual 47.5g
  usd = 2.40/454*45, # Wegmans, 2024 Fall
  calorie = 160,
  fat = 1, carbohydrate = 34, protein = 3)


Dynasty_brownRice <- function() new(
  Class = 'nutrition',
  brand = 'Dynasty\U1f1fa\U1f1f8', 
  name = '\u6cf0\u570b\u9999\u7cd9\u7c73 Brown Rice, Jasmine',
  jfc = '15682',
  wegmans = 42848L,
  usd = 3.99/907*45,
  servingGram = 45, servingCup = 1/4, 
  calorie = 160,
  carbohydrate = 37, protein = 2)
