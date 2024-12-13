

#' @title Coffee Liqueur
#' 
#' @examples
#' diagnose(
#'   Baileys_tiramisu,
#'   Baileys_espresso,
#'   Kahlua_coffee,
#'   Kahlua_especial,
#'   CafeGranita_coffee,
#'   FratelliVincenzi_espresso,
#'   Kikisi_coffee,
#'   CaffeBorghetti,
#'   Grind_espresso,
#'   Sabroso_coffee,
#'   Patron_XO,
#'   Padrino_coffee,
#'   Amigos3_mocha
#' )
#' 
#' @keywords internal
#' @name nutrition_coffeeLiqueur
#' @aliases coffeeLiqueur-class
#' @export
setClass(Class = 'coffeeLiqueur', contains = 'nutrition', prototype = prototype(
  alias = '\u5496\u5561\u9152'
))

#' @rdname nutrition_coffeeLiqueur
#' @export
Kahlua_coffee <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]], 
  kahlua = 'original-coffee-liqueur',
  name = 'Rum & Coffee Liqueur',
  totalwine = '1804750', usd = 23.99/750*74, # 750ml
  servingGram = 74, servingTsp = 15, # 74ml
  calorie = 200,
  AbV = .2,
  water = floor(74 - 11.68 - 29.7),
  carbohydrate = 29.7, sugar = 29.7)


#' @rdname nutrition_coffeeLiqueur
#' @export
Kahlua_especial <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]], 
  kahlua = 'kahlua-especial',
  name = 'Especial Rum & Coffee Liqueur',
  totalwine = '94488750', usd = 23.99/750*44, # 750ml
  servingGram = 44, servingTsp = 9, # 44ml
  calorie = 143,
  water = floor(44 - 12.15 - 14.4),
  AbV = .35,
  carbohydrate = 14.4, sugar = 14.4)


#' @rdname nutrition_coffeeLiqueur
#' @export
CafeGranita_coffee <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]], 
  #url = 
  brand = 'Cafe Granita\U1f1fa\U1f1f8', 
  # bottled by the Cafe Granita Brand Company, Princeton, MN
  name = 'Coffee Liqueur',
  totalwine = '100834750', usd = 14.99/750*44, # 750ml
  servingGram = 44, servingTsp = 9,
  AbV = .21
)

#' @rdname nutrition_coffeeLiqueur
#' @export
FratelliVincenzi_espresso <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = 'Fratelli Vincenzi\U1f1ee\U1f1f9', url = 'https://www.distillerievincenzi.com/liquori/')),
  name = 'Espresso Liqueur',
  totalwine = '348072750', usd = 21.99/750*44,
  servingGram = 44, servingTsp = 9, # `servingTsp` my guess
  AbV = .3
)

#' @rdname nutrition_coffeeLiqueur
#' @export
Kikisi_coffee <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  brand = 'Kikisi\U1f1f2\U1f1fd',
  name = 'Coffee Liqueur',
  totalwine = '243193750', usd = 18.99/750*44,
  servingGram = 44, servingTsp = 9, # `servingTsp` my guess
  AbV = .2
)

#' @rdname nutrition_coffeeLiqueur
#' @export
CaffeBorghetti <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = 'Caff\u00e8 Borghetti\U1f1ee\U1f1f9', url = 'https://www.brancausa.com/brands/caffe-borghetti')),
  name = 'di Vero Caff\u00e8 Espresso Liqueur',
  totalwine = '130512750', usd = 33.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .25
)

#' @rdname nutrition_coffeeLiqueur
#' @export
Grind_espresso <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = 'Grind\U1f1fa\U1f1f8', url = 'https://grindespressoshot.com/home.html')),
  name = 'Espresso Shot',
  totalwine = '159626750', usd = 18.49/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .3
)



#' @rdname nutrition_coffeeLiqueur
#' @export
Sabroso_coffee <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  brand = 'Sabroso\U1f1f2\U1f1fd',
  name = 'Licor de Caf\u00e9',
  totalwine = '704750', usd = 9.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .24
)


#' @rdname nutrition_coffeeLiqueur
#' @export
Patron_XO <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = 'Patr\u00f3n\U1f1f2\U1f1fd', url = 'https://www.patrontequila.com/products/patron-xo-cafe-coffee-liquor.html')),
  name = 'XO Cafe',
  totalwine = '96430750', usd = 43.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .35)


#' @rdname nutrition_coffeeLiqueur
#' @export
Padrino_coffee <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  # https://www.tequilapadrino.com/products # cannot find
  brand = 'El Padrino\U1f1f2\U1f1fd',
  name = 'Caf\u00e9',
  totalwine = '243336750', usd = 27.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .35)

#' @rdname nutrition_coffeeLiqueur
#' @export
Amigos3_mocha <- function() new(
  Class = 'coffeeLiqueur', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = '3 Amigos Tequila\U1f1f2\U1f1fd', url = 'https://3amigostequila.com/cafe-mocha/')),
  name = 'Cafe Mocha',
  totalwine = '244117750', usd = 28.99/750*44,
  servingGram = 44, servingTsp = 9,
  AbV = .32)


# https://www.totalwine.com/spirits/liqueurscordialsschnapps/coffee/grind-mocha-rum/p/2126224648?s=301&igrules=true
