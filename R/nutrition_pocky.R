

Pocky_matcha <- function() new(
  Class = 'nutrition',
  brand = 'Glico Pocky', name = 'Matcha',
  url = 'www.pocky.com/products/',
  servingGram = 40,
  calorie = 200,
  fat = 9, sodium = .08, sugar = 13, addedSugar = 11, protein = 3)

Pocky_double_matcha <- function() new(
  Class = 'nutrition',
  brand = 'Glico Pocky', name = 'Double Rich Matcha',
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
