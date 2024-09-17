

Pocky_matcha <- function() new(
  Class = 'nutrition',
  brand = styleURL(text_ = 'Ezaki\u6c5f\u5d0eGlico\U1f1ef\U1f1f5', url_ = 'www.pocky.com/products/'),
  name = 'Matcha Pocky',
  
  servingGram = 40,
  calorie = 200,
  fat = 9, sodium = .08, sugar = 13, addedSugar = 11, protein = 3)

Pocky_double_matcha <- function() new(
  Class = 'nutrition',
  brand = 'Ezaki\u6c5f\u5d0eGlico\U1f1ef\U1f1f5', name = 'Double Rich Matcha Pocky',
  # url = 'www.pocky.com/products/', #  cannot find online
  servingGram = 29,
  calorie = 150,
  fat = 6, sodium = .035, sugar = 9, addedSugar = 8, protein = 2)



# https://pocky.glico.com/global/products/ja/matcha.html

if (FALSE) {
  nutrition_(
    Pocky_matcha,
    Pocky_double_matcha
  )
}
