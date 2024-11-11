
#' @title Other Cornbread Mix
#' 
#' @examples
#' nutrition_(
#'  cornbreadMix,
#'  subtract(TraderJoes_cornbreadMix, sugar = 10.7),
#'  subtract(WholeFoods365_cornbreadMix, sugar = 4.5),
#'  subtract(Krusteaz_southern_cornbreadMix, sugar = 1),
#'  subtract(BobsRedMill_cornbreadMix, sugar = .6),
#'  subtract(Stonewall_cornbreadMix, sugar = 8.5),
#'  subtract(Jiffy_cornMuffinMix, sugar = 7)
#' )
#' @name cornbreadMix_other
#' @keywords internal
#' @export
TraderJoes_cornbreadMix <- function() new(
  Class = 'nutrition',
  traderjoes = '032809', usd = 2.99/9,
  name = 'Cornbread Mix',
  # nutrition info & recipe: https://www.nicegourmet.shop/product/trader-joe-s-cornbread-mix-pack-of-2-15-oz-boxes
  servingGram = 47,
  calorie = 170,
  sodium = .24, carbohydrate = 38, sugar = 15, protein = 3,
  review = paste('Even Americans from', unclass(style_hyperlink(
    text = 'bon app\u00e9tit', 
    url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'
  )), 'think this is too sweet'))

#' @rdname cornbreadMix_other
#' @export
WholeFoods365_cornbreadMix <- function() new(
  Class = 'nutrition', wholefoods = 'b07d7bdyh6',
  name = 'Cornbread Mix', 
  usd = 3.59/12,
  servingGram = 35, servingTbsp = 3, 
  calorie = 120,
  sodium = .39, carbohydrate = 27, addedSugar = 8, protein = 2,
  review = paste(unclass(style_hyperlink(
    text = 'bon app\u00e9tit', 
    url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'
  )), 'loves it'))



#' @rdname cornbreadMix_other
#' @export
Krusteaz_southern_cornbreadMix <- function() new(
  Class = 'nutrition', krusteaz = 'baking-mixes/southern-cornbread-muffin',
  name = 'Southern Cornbread Mix', usd = 19.68/4/12,
  servingGram = 27,
  fat = .5, sodium = .4, carbohydrate = 21, sugar = 4, protein = 2,
  review = paste('A bad review from', unclass(style_hyperlink(text = 'bon app\u00e9tit', url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'))))
  

#' @rdname cornbreadMix_other
#' @export
BobsRedMill_cornbreadMix <- function() new(
  Class = 'nutrition', bobsredmill = 'cornbread-muffin-mix',
  name = 'Cornbread Mix',
  servingGram = 55, servingCup = 1/3, 
  calorie = 200,
  fat = 1.5, sodium = .65, carbohydrate = 41, sugar = 7, addedSugar = 5, protein = 5,
  review = paste('A bad review from', unclass(style_hyperlink(text = 'bon app\u00e9tit', url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'))))


#' @rdname cornbreadMix_other
#' @export
Stonewall_cornbreadMix <- function() new(
  Class = 'nutrition', stonewall = 552594L, usd = 7.95/12,
  name = 'Cornbread Mix',
  servingGram = 38,
  calorie = 140,
  sodium = .18, carbohydrate = 31, addedSugar = 12, protein = 2,
  review = paste(unclass(style_hyperlink(
    text = 'bon app\u00e9tit', 
    url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'
  )), 'loves it'))


#' @rdname cornbreadMix_other
#' @export
Jiffy_cornMuffinMix <- function() new(
  Class = 'nutrition',
  brand = unclass(style_hyperlink(text = 'Jiffy\U1f1fa\U1f1f8', url = 'https://www.jiffymix.com/products/corn-muffin-mix/')),
  name = 'Corn Muffin Mix',
  servingGram = 78, servingCup = 1/2,
  calorie = 320,
  fat = 9, cholesterol = .01, sodium = .69,
  carbohydrate = 56, addedSugar = 15, protein = 4,
  review = paste(unclass(style_hyperlink(
    text = 'bon app\u00e9tit', 
    url = 'https://www.bonappetit.com/story/best-boxed-cornbread-mix'
  )), 'says it\'s just okay'))