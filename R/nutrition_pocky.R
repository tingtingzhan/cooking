

Pocky_matcha <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = style_hyperlink(text = 'Ezaki\u6c5f\u5d0eGlico\U1f1ef\U1f1f5', url = 'https://www.pocky.com/products/') |> c(),
  name = 'Matcha Pocky',
  servingGram = 40,
  calorie = 200,
  fat = 9, sodium = .08, sugar = 13, addedSugar = 11, protein = 3)

Pocky_double_matcha <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = 'Ezaki\u6c5f\u5d0eGlico\U1f1ef\U1f1f5', name = 'Double Rich Matcha Pocky',
  # url = 'https://www.pocky.com/products/', #  cannot find online
  servingGram = 29,
  calorie = 150,
  fat = 6, sodium = .035, sugar = 9, addedSugar = 8, protein = 2)



# https://pocky.glico.com/global/products/ja/matcha.html

if (FALSE) {
  diagnose(
    Pocky_matcha,
    Pocky_double_matcha
  )
}
