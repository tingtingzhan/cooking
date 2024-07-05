
# in future, don't buy any coffee liqueur with AbV <30%

Kahlua_coffee <- function() new(
  Class = 'nutrition', 
  kahlua = 'original-coffee-liqueur',
  name = '\u5496\u5561\u9152 Rum & Coffee Liqueur',
  totalwine = '1804750', usd = 23.99/750*74, # 750ml
  servingGram = 74, servingTsp = 15, # 74ml
  calorie = 200,
  AbV = .2,
  water = 74 - 11.68 - 29.7,
  carbohydrate = 29.7, sugar = 29.7)


Kahlua_especial <- function() new(
  Class = 'nutrition', 
  kahlua = 'kahlua-especial',
  name = '\u5496\u5561\u9152 Especial Rum & Coffee Liqueur',
  totalwine = '94488750', usd = 23.99/750*44, # 750ml
  servingGram = 44, servingTsp = 9, # 44ml
  calorie = 143,
  water = 44 - 12.15 - 14.4,
  AbV = .35,
  carbohydrate = 14.4, sugar = 14.4)



CafeGranita_coffee <- function() new(
  Class = 'nutrition', 
  #url = 
  brand = 'Cafe Granita\U0001f1fa\U0001f1f8', 
  # bottled by the Cafe Granita Brand Company, Princeton, MN
  name = '\u5496\u5561\u9152 Coffee Liqueur',
  totalwine = '100834750', usd = 14.99/750*44, # 750ml
  servingGram = 44, servingTsp = 9,
  AbV = .21
)

FratelliVincenzi_espresso <- function() new(
  Class = 'nutrition',
  brand = styleURL(text_ = 'Fratelli Vincenzi\U0001f1ee\U0001f1f9',
                   url_ = 'www.distillerievincenzi.com/liquori/'),
  name = '\u5496\u5561\u9152 Espresso Liqueur',
  totalwine = '348072750', usd = 21.99/750*44,
  servingGram = 44, servingTsp = 9, # `servingTsp` my guess
  AbV = .3
)

Kikisi_coffee <- function() new(
  Class = 'nutrition',
  brand = 'Kikisi\U0001f1f2\U0001f1fd',
  name = '\u5496\u5561\u9152 Coffee Liqueur',
  totalwine = '243193750', usd = 18.99/750*44,
  servingGram = 44, servingTsp = 9, # `servingTsp` my guess
  AbV = .2
)

CaffeBorghetti <- function() new(
  Class = 'nutrition',
  brand = styleURL(text_ = 'Caff\u00e8 Borghetti\U0001f1ee\U0001f1f9',
                   url_ = 'www.brancausa.com/brands/caffe-borghetti'),
  name = '\u5496\u5561\u9152 di Vero Caff\u00e8 Espresso Liqueur',
  totalwine = '130512750', usd = 33.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .25
)

Grind_espresso <- function() new(
  Class = 'nutrition',
  brand = styleURL(text_ = 'Grind\U0001f1fa\U0001f1f8',
                   url_ = 'grindespressoshot.com/home.html'),
  name = '\u5496\u5561\u9152 Espresso Shot',
  totalwine = '159626750', usd = 18.49/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .3
)

Baileys_espresso <- function() new(
  Class = 'nutrition',
  baileys = 'baileys-espresso-creme',
  #url_ = 'www.baileys.com/en-us/products/baileys-espresso-creme'), # no nutrition info
  name = '\u5496\u5561\u5976\u6cb9\u9152 Espresso Cre\u0300me',
  totalwine = '151853750', usd = 28.99/750*100, # 750ml
  servingGram = 100, # my guess
  serving_ml = 100,
  AbV = .17, 
  alcohol = 13.5,
  calorie = 313,
  fat = 14, carbohydrate = 22, sugar = 19, protein = 3
)

Sabroso_coffee <- function() new(
  Class = 'nutrition',
  brand = 'Sabroso\U0001f1f2\U0001f1fd',
  name = '\u5496\u5561\u9152 Licor de Caf\u00e9',
  totalwine = '704750', usd = 9.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .24
)


Patron_XO <- function() new(
  Class = 'nutrition',
  brand = styleURL(text_ = 'Patr\u00f3n\U0001f1f2\U0001f1fd',
                   url_ = 'www.patrontequila.com/products/patron-xo-cafe-coffee-liquor.html'),
  name = '\u5496\u5561\u9152 XO Cafe',
  totalwine = '96430750', usd = 43.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .35)


elPadrino_coffee <- function() new(
  Class = 'nutrition',
  brand = 'El Padrino\U0001f1f2\U0001f1fd',
  name = '\u5496\u5561\u9152 Caf\u00e9',
  totalwine = '243336750', usd = 27.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .35)

Amigos3_mocha <- function() new(
  Class = 'nutrition',
  brand = styleURL(text_ = '3 Amigos\U0001f1f2\U0001f1fd',
                   url_ = '3amigostequila.com/cafe-mocha/'),
  name = '\u5496\u5561\u9152 Cafe Mocha',
  totalwine = '244117750', usd = 28.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .32)


# https://www.totalwine.com/spirits/liqueurscordialsschnapps/coffee/grind-mocha-rum/p/2126224648?s=301&igrules=true
