

Erawan_riceFlour <- function() new(
  Class = 'nutrition',
  brand = 'Erawan\u4e09\u8c61\U0001f1f9\U0001f1ed', 
  name = '\u7c98\u7c73\u7c89 Rice\U0001f33e Flour', # \u6c34\u78e8
  servingGram = 30, 
  servingTbsp = 3, # https://www.traditionaloven.com/culinary-arts/flours/rice-flour/convert-gram-to-table-spoon.html
  carbohydrate = 24, sodium = .01, protein = 2)



Erawan_glutinousRiceFlour <- function() new(
  Class = 'nutrition',
  brand = 'Erawan\u4e09\u8c61\U0001f1f9\U0001f1ed', 
  name = '\u7cef\u7c73\u7c89 Glutinous Rice\U0001f33e Flour', # \u6c34\u78e8
  servingGram = 30, 
  servingTbsp = 3, # https://www.traditionaloven.com/culinary-arts/flours/rice-flour/convert-gram-to-table-spoon.html
  carbohydrate = 24, protein = 2)


KingArthur_M4M <- function() new(
  Class = 'nutrition', kingarthur = 200725L,
  name = '\u6742\u7cae\u7c89 No-Gluten Measure4Measure', # 
  usd = 10.95/(3*454) * 31,
  servingGram = 31, 
  servingTbsp = 4, # packaging
  calorie = 100,
  sodium = .015, carbohydrate = 25, protein = 1,
  review = 'dont buy in future!',
  contain = c('rice flour, whole grain brown rice flour, whole sorghum flour, tapioca starch, potato starch, cellulose, xanthan gum, vitamin and mineral blend [calcium carbonate, niacinamide (vitamin b3), reduced iron, thiamin hydrochloride (vitamin b1), riboflavin (vitamin b2)]'))

