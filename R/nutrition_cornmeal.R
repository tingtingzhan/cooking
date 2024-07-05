


DaoXiangCun_corn <- function() new(
  Class = 'nutrition', 
  brand = '\u7a3b\u9999\u6751', name = 'Cornmeal\U0001f33d \u7389\u7c73\u9762',
  servingGram = 50, servingCup = 1/2, # volume not accurate!!!
  fat = 1.5)

Albertsons_yellowCorn <- function() new(
  Class = 'nutrition',
  acme = 117010060L, usd = 3.49/2270*30,
  name = '\u9ec4\u7389\u7c73\u9762 Yellow Cornmeal\U0001f33d',
  servingGram = 30, 
  # servingCup = 1/4, # packaging
  servingCup = 30/167, # actual experiment, 1cup = 167g
  calorie = 110,
  fat = 1, carbohydrate = 23, sugar = 1, protein = 2)


IndianHead_whiteCorn <- function() new(
  Class = 'nutrition', 
  brand = styleURL(
    text_ = 'Indian Head\U0001f1fa\U0001f1f8', 
    url_ = 'www.wrmills.com/products/consumer-products/'
  ),
  name = 'White Cornmeal\U0001f33d',  
  walmart = '10311206', usd = 1.56/907*30,
  servingGram = 30, servingCup = 1/4,
  calorie = 110,
  fat = 1, protein = 2, review = 'Extremely coarse, do not buy!')

IndianHead_yellowCorn <- function() new(
  Class = 'nutrition', 
  brand = styleURL(
    text_ = 'Indian Head\U0001f1fa\U0001f1f8', 
    url_ = 'www.wrmills.com/products/consumer-products/'
  ),
  name = 'Yellow Cornmeal\U0001f33d',
  walmart = '10311207', usd = 1.56/907*30,
  servingGram = 30, servingCup = 1/4,
  calorie = 110,
  fat = 1, sugar = .5, protein = 2, review = 'Extremely coarse, do not buy!')

