
Quaker_oat <- function() new(
  Class = 'nutrition', 
  brand = styleURL(text_ = 'Quaker\U1f1fa\U1f1f8', url_ = 'www.quakeroats.com/products/hot-cereals/old-fashioned-oats'),
  name = '\u719f\u538b\u71d5\u9ea6 Old Fashioned Oats',
  servingGram = 40, servingCup = 1/2, 
  calorie = 150,
  fat = 3, carbohydrate = 27, sugar = 1, protein = 5)


HaiTai_blackRice <- function() new(
  Class = 'nutrition', url = 'www.yamibuy.com/zh/p/haitai-black-rice-910g/1021027741',
  brand = 'HaiTai\U1f1f0\U1f1f7', name = '\u9ed1\u7c73 Black Rice',
  servingGram = 45, servingCup = 1/4, 
  calorie = 160, usd = 6.99/910*45,
  fat = 2, carbohydrate = 33, sugar = 1, protein = 3)


Nishiki_brownRice <- function() new(
  Class = 'nutrition', amazon = 'B006SFAS6C',
  brand = 'Nishiki\u9326\U1f1fa\U1f1f8', name = '\u7384\u7c73 Premium Brown Rice',
  jfc = '69969',
  servingGram = 39, servingCup = 1/4, fat = 1, protein = 3)


Dynasty_brownRice <- function() new(
  Class = 'nutrition',
  brand = 'Dynasty\U1f1fa\U1f1f8', 
  name = '\u6cf0\u570b\u9999\u7cd9\u7c73 Brown Rice, Jasmine',
  jfc = '15682',
  wegmans = 42848L,
  usd = 3.99/907*45,
  servingGram = 45, servingCup = 1/4, 
  carbohydrate = 37, protein = 2)
