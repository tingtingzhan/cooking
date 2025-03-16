

BobsRedMill_tapioca_starch <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], bobsredmill = 'tapioca-flour',
  name = 'Tapioca Flour',
  servingGram = 30, servingCup = 1/4)

BobsRedMill_potato_starch <- function() new( # very coarse!  I don't like!!
  Class = 'nutrition', call = match.call()[[1L]], bobsredmill = 'potato-starch',
  name = 'Potato\U1f954 Starch',
  wegmans = 7551L, usd = 5.19/623*12, # 2023-11-13
  servingGram = 12, servingTbsp = 12)



Wegmans_corn_starch <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  wegmans = 8127L, usd = 1.79/454*8, # 2023-11-11
  name = 'Corn\U1f33d Starch', alias = '\u7389\u7c73\u6dc0\u7c89',
  servingGram = 8, 
  # servingTbsp = 1 # packaging
  servingTbsp = 8/10, # actual experiment 1tbsp = 10g
  calorie = 30,
  carbohydrate = 7)


Argo_corn_starch <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = style_hyperlink(text = 'Argo\U1f1fa\U1f1f8', url = 'https://www.argostarch.com/products.html') |> c(),
  name = 'Corn\U1f33d Starch', alias = '\u7389\u7c73\u6dc0\u7c89',
  wegmans = 34585L, usd = 2.49/454*8,
  servingGram = 8, 
  # servingTbsp = 1 # packaging
  servingTbsp = 8/10, # expected experiment 1tbsp = 10g (based on Wegmans corn starch)
  calorie = 30,
  carbohydrate = 7)

ManSang_wheat_starch <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = 'ManSang\u6c11\u751f\U1f1ed\U1f1f0', 
  name = 'Wheat Starch', alias = '\u98db\u51c0\u6f84\u9eb5',
  servingGram = 10, servingTbsp = 1)



sweetPotato_starch <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = '\u6797\u751f\u8a18', 
  name = 'Sweet Potato\U1f360 Starch', alias = '\u8543\u85af\u7c89',
  servingGram = 10, servingTbsp = 1)

mung_starch <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Mung Bean Starch', alias = '\u7eff\u8c46\u6dc0\u7c89',
  servingGram = 100, 
  servingTbsp = 10, # I guessed from other starch..
  fat = 1, protein = 2)
