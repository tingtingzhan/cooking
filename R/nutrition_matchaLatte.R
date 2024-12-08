
#' @title Matcha Latte, Commercial or Other People's Recipe
#' 
#' @examples
#' diagnose(
#'  matchaLatte,
#'  Ippodo_uji_shimizu,
#'  Starbucks_matchaLatteMix,
#'  TraderJoes_matchaLatte
#' ) # compare dry powder
#' 
#' diagnose(
#'  hotdrink(matchaLatte),
#'  Ippodo_sayakaLatte,
#'  Starbucks_matchaLatte,
#'  hotdrink(Starbucks_matchaLatteMix, water80 = 180),
#'  hotdrink(Ippodo_uji_shimizu, water80 = 150),
#'  hotdrink(ItoEn_sweet_matcha, water80 = 120)
#' ) # compare hot drink
#' 
#' diagnose(
#'  frappe(matchaLatte),
#'  Starbucks_matchaFrappuccino
#' ) # compare frappe
#' @name matchaLatte_other
#' @keywords internal 
#' @export
TraderJoes_matchaLatte <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], traderjoes = '052512',
  name = 'Matcha\U1f375 Latte Mix',
  servingGram = 45, servingTbsp = 5, fat = 9, sodium = .07, sugar = 17, addedSugar = 16, protein = 2)

#' @rdname matchaLatte_other
#' @export
Starbucks_matchaLatte <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], starbucks_hot = 468L,
  name = 'Matcha\U1f375 Latte',
  servingGram = 450, serving_floz = 16, # 473.176 ml. not sure about weight..
  usd = 4.95, # Spring 2024
  calorie = 240,
  fat = 7, cholesterol = .025, sodium = .16, sugar = 32, protein = 12)

#' @rdname matchaLatte_other
#' @export
Starbucks_matchaFrappuccino <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], starbucks_iced = 439L,
  name = 'Matcha\U1f375 Frappuccino',
  servingGram = 450, 
  serving_floz = 16, # 473.176 ml. not sure about weight..
  usd = 5.45, # Spring 2024
  calorie = 420,
  fat = 16, cholesterol = .050, sodium = .240, carbohydrate = 62, sugar = 61, protein = 6)

#' @rdname matchaLatte_other
#' @export
Starbucks_matchaLatteMix <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Starbucks\U1f1fa\U1f1f8', url = 'https://www.yamibuy.com/en/p/premium-mixes-matcha-latte-instant-coffee-powder-96g/3156004631')),
  name = 'Matcha\U1f375 Latte Mix',
  usd = 10.99/4,
  servingGram = 24, 
  calorie = 103,
  protein = 3.4, fat = 2.8, carbohydrate = 16, sugar = 16, sodium = .13)





#' @rdname matchaLatte_other
#' @export
Ippodo_sayakaLatte <- function() new(
  Class = 'recipe',
  alias_flavor = 'Sayaka Latte', 
  ippodotea = 'sayaka-100g',
  matcha = c(Ippodo_sayaka = 3), # matcha 1.5%
  water80 = 100, milk = 96)



#' @rdname matchaLatte_other
#' @export
Ippodo_uji_shimizu <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  ippodousa = 'uji-shimizu-sticks', ippodoglobal = 'matcha642402',
  name = '\u5b87\u6cbb\u6e05\u6c34 Uji Shimizu\U1f375',
  usd = 18/12, jpy = 700/400*15,
  servingGram = 15, servingTbsp = 1.5,
  calorie = 60,
  carbohydrate = 15, addedSugar = 14)

#' @rdname matchaLatte_other
#' @export
ItoEn_sweet_matcha <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  itoen = 'ito-en-matcha-green-tea-sweet-powder-sticks', jfc = '45783',
  name = 'Sweet Matcha',
  servingGram = 12, sugar = 11)



