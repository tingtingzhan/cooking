

Erawan_riceFlour <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = 'Erawan\u4e09\u8c61\U1f1f9\U1f1ed', url = 'https://www.erawanbrand.com/flours')),
  name = 'Rice\U1f33e Flour', alias = '\u6c34\u78e8\u7c98\u7c73\u7c89',
  servingGram = 30, 
  calorie = 110,
  servingTbsp = 3, # https://www.traditionaloven.com/culinary-arts/flours/rice-flour/convert-gram-to-table-spoon.html
  carbohydrate = 24, sodium = .01, protein = 2)



Erawan_glutinousRiceFlour <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = 'Erawan\u4e09\u8c61\U1f1f9\U1f1ed', url = 'https://www.erawanbrand.com/flours')),
  name = 'Glutinous Rice\U1f33e Flour', alias = '\u6c34\u78e8\u7cef\u7c73\u7c89',
  servingGram = 30, 
  calorie = 110,
  servingTbsp = 3, # https://www.traditionaloven.com/culinary-arts/flours/rice-flour/convert-gram-to-table-spoon.html
  carbohydrate = 24, protein = 2)


KingArthur_M4M <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 200725L,
  name = '\u6742\u7cae\u7c89 No-Gluten Measure4Measure', # 
  usd = 10.95/(3*454) * 31,
  servingGram = 31, 
  servingTbsp = 4, # packaging
  calorie = 100,
  sodium = .015, carbohydrate = 25, protein = 1,
  review = 'dont buy in future!',
  contain = c('rice flour, whole grain brown rice flour, whole sorghum flour, tapioca starch, potato starch, cellulose, xanthan gum, vitamin and mineral blend [calcium carbonate, niacinamide (vitamin b3), reduced iron, thiamin hydrochloride (vitamin b1), riboflavin (vitamin b2)]'))

