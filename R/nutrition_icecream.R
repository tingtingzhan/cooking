

maeda_matcha_icecream <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  maeda = 'green-tea-cup',
  alias = '\u62b9\u8336\U1f375\U1f368', name = 'Matcha Ice Cream',
  servingCup = 2/3, servingGram = 90,
  fat = 9, cholesterol = .035, sodium = .07, sugar = 16, addedSugar = 10, protein = 3)


maeda_adzukiBean_icecream <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  maeda = 'azuki-cup',
  alias = '\u7ea2\u8c46\U1f368', name = 'Azuki Ice Cream',
  servingCup = 2/3, servingGram = 94,
  fat = 6, cholesterol = .035, sodium = .07, sugar = 20, addedSugar = 15, protein = 3)



maeda_blackSesame_icecream <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  maeda = 'black-sesame-copy', 
  alias = '\u9ed1\u829d\u9ebb\U1f368', name = 'Black Sesame Ice Cream',
  servingCup = 2/3, servingGram = 90,
  fat = 10, cholesterol = .035, sodium = .07, sugar = 16, addedSugar = 10, protein = 3)



HaagenDazs_matcha <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  alias = '\u62b9\u8336\U1f375', name = 'Matcha Ice Cream',
  haagendazs = 'green-tea',
  servingCup = 2/3, servingGram = 128,
  fat = 21, cholesterol = .095, sodium = .065, sugar = 24, addedSugar = 18, protein = 5)


HaagenDazs_pistachio <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Pistachio Ice Cream', haagendazs = 'pistachio',
  servingCup = 2/3, servingGram = 131,
  fat = 23, cholesterol = .09, sodium = .1, sugar = 23, addedSugar = 19, protein = 7)


HaagenDazs_coffee <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  alias = '\u5496\u5561', name = 'Coffee Ice Cream',
  haagendazs = 'coffee',
  servingCup = 2/3, servingGram = 128,
  fat = 21, cholesterol = .095, sodium = .065, sugar = 24, addedSugar = 18, protein = 5)



Bassetts_coffee <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  bassetts = '0e1be7_e571839fafff4f22833ede48fa3c99f1',
  alias = '\u5496\u5561', name = 'Coffee',
  servingCup = 2/3, servingGram = 102,
  calorie = 270,
  fat = 17, cholesterol = .065, sodium = .07, sugar = 19, addedSugar = 11, protein = 4)


Bassetts_matcha <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  alias = '\u62b9\u8336\U1f375', name = 'Matcha Ice Cream',
  bassetts = '0e1be7_c899e8de8e894370b2d5e557af518ad6',
  servingCup = 2/3, servingGram = 102,
  calorie = 270,
  fat = 17, cholesterol = .065, sodium = .07, sugar = 19, addedSugar = 11, protein = 4)


Bassetts_pumpkin <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  alias = '\u5357\u74dc\U1f383', name = 'Pumpkin Ice Cream',
  bassetts = '0e1be7_028f7e40097b416cb7b5999b2145cbae',
  servingCup = 1/2, servingGram = 77,
  calorie = 200,
  fat = 11, cholesterol = .045, sodium = .065, sugar = 18, protein = 3)

WholeFoods_berryGelato <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], wholefoods = 'b07yhcpnpv',
  name = 'Sweet Wild Berry Italian Gelato',
  servingGram = 100, servingCup = 2/3,
  calorie = 210,
  fat = 9, cholesterol = .005/3, sodium = .05, carbohydrate = 30, sugar = 80/3, addedSugar = 41/3, protein = 7/3)




# https://www.icecream.com/us/en/brands/haagen-dazs/products/mango-ice-cream

# https://www.icecream.com/us/en/brands/haagen-dazs/products/pineapple-coconut-ice-cream

# https://www.icecream.com/us/en/brands/haagen-dazs/products/spirits-rum-tres-leches-ice-cream

# where is Haagen-Dazs® Spirits collection on the official website??


# https://www.icecream.com/us/en/brands/haagen-dazs/about/faq
#Q: Are there stabilizers in Häagen-Dazs® products?
#A: In keeping with our philosophy of using only the purest raw, we only use eggs to stablize Häagen-Dazs® products that are made with dairy milk. All our eggs are completely pasteurized.
