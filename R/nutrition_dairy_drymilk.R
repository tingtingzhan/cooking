
Meyenberg_goat_drymilk <- function() new(
  Class = 'nutrition', meyenberg = 'powdered-nonfat-goat-milk',
  name = '\u8131\u8102\u7f8a\u5976\u7c89 Nonfat Dry Goat\U1f410 Milk', 
  amazon = 'B08M2RH8P5', usd = 89.99/6/340*28,
  servingGram = 28, #servingCup = 1/4, # packaging
  servingCup = 28/40*(1/4), # actual experiment: 40g = 1/4cup !!!
  calorie = 90,
  cholesterol = .010, sodium = .1, carbohydrate = 12, sugar = 12, protein = 10)


Meyenberg_goatWhole_drymilk <- function() new(
  Class = 'nutrition', meyenberg = 'powdered-whole-goat-milk',
  name = '\u5168\u8102\u7f8a\u5976\u7c89 Whole Dry Goat\U1f410 Milk', 
  #amazon = 'B08M2VSQ6N', usd = 89.98/6/340*28,
  walmart = '849003302', usd = 13.94/340*28, # cheaper!!
  servingGram = 28, #servingCup = 1/4, # packaging
  servingCup = 28/30*(1/4), # actual experiment: 1/4cup = 30g
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .085, carbohydrate = 10, sugar = 10, protein = 7)



Carnation_drymilk <- function() new(
  Class = 'nutrition', #nestle = '12428935',
  brand = styleURL(text_ = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', url_ = 'www.nestleprofessional.us/nestle-carnation-nonfat-dry-milk-4-x-2275-oz'),
  name = '\u8131\u8102\u5976\u7c89 Nonfat Dry Milk',
  walmart = '978118310', usd = 4.48/272*23, # April 2024; $4.48 in store
  target = 'A-13898456', #usd = 4.89/272*23, # Feb 2024
  servingGram = 23, 
  # servingCup = 1/4, # packaging
  servingCup = 23/87, # actual experiment: 1 cup = 87 gram
  calorie = 80,
  cholesterol = .005, sodium = .095, carbohydrate = 12, sugar = 12, protein = 8)

Carnation_whole_drymilk <- function() new(
  Class = 'nutrition', nestle = '12550835',
  brand = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', 
  name = '\u5168\u8102\u5976\u7c89 Whole Milk Powder',
  servingGram = 30, servingCup = 1/4, # website does not have servingGram!!
  fat = 8, sodium = .105, sugar = 10, protein = 7)

Nido_drymilk <- function() new(
  Class = 'nutrition', 
  name = '\u5168\u8102\u5976\u7c89 Dry Whole Milk',
  nido = 'fortificada-dry-whole-milk-beverage-564-oz/',
  walmart = '14869811', usd = 19.98/1600*30, # 2023-11-11
  servingGram = 30, servingCup = 1/4,
  fat = 8, sodium = .105, sugar = 11, protein = 8)

KingArthur_baker_drymilk <- function() new(
  Class = 'nutrition', kingarthur = 213100L,
  name = '\u8131\u8102\u5976\u7c89 Baker\'s Special Dry Milk',
  usd = 12.95/454*28, # 2023-11-11
  servingGram = 28, 
  servingCup = 1/4, # packaging
  calorie = 100,
  cholesterol = .01, sodium = .11, carbohydrate = 14, sugar = 13, protein = 10)

KingArthur_drymilk <- function() new(
  Class = 'nutrition', kingarthur = 211706L,
  name = '\u5168\u8102\u5976\u7c89 Dried Whole Milk',
  usd = 12.95/397*6, # 2023-11-11
  servingGram = 6, 
  servingTbsp = 1, # packaging
  calorie = 30,
  fat = 1.5, cholesterol = .005, sodium = .02, carbohydrate = 2, sugar = 2, protein = 2)

GreatValue_drymilk <- function() new(
  Class = 'nutrition', walmart = '10415475',
  name = '\u8131\u8102\u5976\u7c89 Nonfat Dry Milk',
  usd = 19.67/1810*23,
  servingGram = 23,
  servingCup = 1/3,
  calorie = 80,
  cholesterol = .005, sodium = .125, carbohydrate = 12, sugar = 12, protein = 8)

MembersMark_drymilk <- function() new(
  Class = 'nutrition',
  sams = 'prod21366487', name = '\u8131\u8102\u5976\u7c89 Nonfat Dry Milk',
  usd = 18.48/1990*23,
  servingGram = 23,
  servingCup = 1/3, # packaging
  calorie = 80,
  cholesterol = .005, sodium = .125, carbohydrate = 12, sugar = 12, protein = 8)

BobsRedMill_drymilk <- function() new(
  Class = 'nutrition', bobsredmill = 'non-fat-dry-milk-powder',
  name = '\u8131\u8102\u5976\u7c89 Nonfat Dry Milk',
  # usd =
  servingGram = 24,
  servingTbsp = 3, # packaging
  calorie = 90,
  sodium = .1, carbohydrate = 13, sugar = 11, protein = 8)


Horizon_whole_drymilk <- function() new(
  Class = 'nutrition', 
  brand = styleURL(text_ = 'Horizon\U1f1fa\U1f1f8', url_ = 'horizon.com/organic-dairy-products/organic-milk/organic-dry-whole-milk/'),
  name = '\u5168\u8102\u5976\u7c89 Dry Whole Milk',
  sams = 'prod25791985', usd = 23.22/(30.6*28.35)*29,
  walmart = '548381598', # usd = 26.94/(30.6*28.35)*29,
  costcoBiz = '100390940',
  servingGram = 29, servingCup = 1/4, # packaging
  calorie = 140,
  fat = 8, cholesterol = .030, sodium = .105, carbohydrate = 11, sugar = 10, protein = 8)
