
#' @title Maeda-En Ice Cream
#' 
#' @description
#' ..
#' 
#' @name maeda
#' @export
maeda_matcha_icecream <- function() new(
  Class = 'nutrition', brand = 'maeda-en\u524d\u7530\u5712\U0001f1ef\U0001f1f5', name = '\u62b9\u8336\U0001f375\U0001f368',
  servingCup = 2/3, servingGram = 90,
  fat = 9, cholesterol = .035, sodium = .07, sugar = 16, addedSugar = 10, protein = 3,
  url = 'maeda-en.com/blogs/ice-cream/ice-cream-collection')

#' @rdname maeda
#' @export
maeda_adzukiBean_icecream <- function() new(
  Class = 'nutrition', brand = 'maeda-en\u524d\u7530\u5712\U0001f1ef\U0001f1f5', name = '\u7ea2\u8c46\U0001f368',
  servingCup = 2/3, servingGram = 94,
  fat = 6, cholesterol = .035, sodium = .07, sugar = 20, addedSugar = 15, protein = 3,
  url = 'maeda-en.com/blogs/ice-cream/ice-cream-collection')


#' @rdname maeda
#' @export
maeda_blackSesame_icecream <- function() new(
  Class = 'nutrition', brand = 'maeda-en\u524d\u7530\u5712\U0001f1ef\U0001f1f5', name = '\u9ed1\u829d\u9ebb\U0001f368',
  servingCup = 2/3, servingGram = 90,
  fat = 10, cholesterol = .035, sodium = .07, sugar = 16, addedSugar = 10, protein = 3,
  url = 'maeda-en.com/blogs/ice-cream/ice-cream-collection')



#' @title Haagen Dazs Ice Cream
#' 
#' @description
#' ..
#' 
#' @name HaagenDazs
#' @export
HaagenDazs_matcha <- function() new(
  Class = 'nutrition', name = '\u62b9\u8336\U0001f375', haagendazs = 'green-tea',
  servingCup = 2/3, servingGram = 128,
  fat = 21, cholesterol = .095, sodium = .065, sugar = 24, addedSugar = 18, protein = 5)


#' @rdname HaagenDazs
#' @export
HaagenDazs_pistachio <- function() new(
  Class = 'nutrition', name = 'Pistachio', haagendazs = 'pistachio',
  servingCup = 2/3, servingGram = 131,
  fat = 23, cholesterol = .09, sodium = .1, sugar = 23, addedSugar = 19, protein = 7)


#' @rdname HaagenDazs
#' @export
HaagenDazs_coffee <- function() new(
  Class = 'nutrition', 
  name = '\u5496\u5561', #\u2615
  haagendazs = 'coffee',
  servingCup = 2/3, servingGram = 128,
  fat = 21, cholesterol = .095, sodium = .065, sugar = 24, addedSugar = 18, protein = 5)


#' @title Bassetts Ice Cream
#' 
#' @description
#' ..
#' 
#' @name Bassetts
#' @export
Bassetts_coffee <- function() new(
  Class = 'nutrition', name = '\u5496\u5561', # \u2615
  bassetts = '0e1be7_e571839fafff4f22833ede48fa3c99f1',
  servingCup = 2/3, servingGram = 102,
  calorie = 270,
  fat = 17, cholesterol = .065, sodium = .07, sugar = 19, addedSugar = 11, protein = 4)

#' @rdname Bassetts
#' @export
Bassetts_matcha <- function() new(
  Class = 'nutrition', name = '\u62b9\u8336\U0001f375',
  bassetts = '0e1be7_c899e8de8e894370b2d5e557af518ad6',
  servingCup = 2/3, servingGram = 102,
  calorie = 270,
  fat = 17, cholesterol = .065, sodium = .07, sugar = 19, addedSugar = 11, protein = 4)

#' @rdname Bassetts
#' @export
Bassetts_pumpkin <- function() new(
  Class = 'nutrition', name = '\u5357\u74dc\U0001f383',
  bassetts = '0e1be7_028f7e40097b416cb7b5999b2145cbae',
  servingCup = 1/2, servingGram = 77,
  calorie = 200,
  fat = 11, cholesterol = .045, sodium = .065, sugar = 18, protein = 3)





# https://www.icecream.com/us/en/brands/haagen-dazs/products/mango-ice-cream

# https://www.icecream.com/us/en/brands/haagen-dazs/products/pineapple-coconut-ice-cream

# https://www.icecream.com/us/en/brands/haagen-dazs/products/spirits-rum-tres-leches-ice-cream

# where is Haagen-Dazs® Spirits collection on the official website??


# https://www.icecream.com/us/en/brands/haagen-dazs/about/faq
#Q: Are there stabilizers in Häagen-Dazs® products?
#A: In keeping with our philosophy of using only the purest ingredients, we only use eggs to stablize Häagen-Dazs® products that are made with dairy milk. All our eggs are completely pasteurized.
