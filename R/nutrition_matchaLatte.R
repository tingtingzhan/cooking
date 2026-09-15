
#' @rdname nutrition-class
#' 
#' @examples
#' diagnose(
#'  matchaLatte(),
#'  cooking:::Ippodo_uji_shimizu(),
#'  cooking:::Starbucks_matchaLatteMix(),
#'  cooking:::TraderJoes_matchaLatte()
#' ) # compare dry powder
#' 
#' diagnose(
#'  hotdrink(matchaLatte),
#'  cooking:::Ippodo_sayakaLatte(),
#'  cooking:::Starbucks_matchaLatte(),
#'  cooking:::Starbucks_matchaLatteMix() |> as('recipe'),
#'  cooking:::Ippodo_uji_shimizu() |> as('recipe'),
#'  cooking:::ItoEn_sweet_matcha() |> as('recipe')
#' ) # compare hot drink
#' 
#' diagnose(
#'  frappe(matchaLatte),
#'  cooking:::Starbucks_matchaFrappuccino()
#' ) # compare frappe




TraderJoes_matchaLatte <- \() new(
  Class = 'nutrition',  traderjoes = '052512',
  name = 'Matcha\U1f375 Latte Mix',
  servingGram = 45, servingTbsp = 5, fat = 9, sodium = .07, sugar = 17, addedSugar = 16, protein = 2)


Starbucks_matchaLatte <- \() new(
  Class = 'nutrition',  starbucks_hot = 468L,
  name = 'Matcha\U1f375 Latte',
  servingGram = 450, serving_floz = 16,
  usd = 4.95, # Spring 2024
  calorie = 240,
  fat = 7, cholesterol = .025, sodium = .16, sugar = 32, protein = 12)


Starbucks_matchaFrappuccino <- \() new(
  Class = 'nutrition',  starbucks_iced = 439L,
  name = 'Matcha\U1f375 Frappuccino',
  servingGram = 450, serving_floz = 16,
  usd = 5.45, # Spring 2024
  calorie = 420,
  fat = 16, cholesterol = .050, sodium = .240, carbohydrate = 62, sugar = 61, protein = 6)


Starbucks_matchaLatteMix <- \() new(
  Class = 'nutrition',  
  brand = 'Starbucks\U1f1fa\U1f1f8', 
  name = 'Matcha\U1f375 Latte Mix',
  usd = 10.99/4, yamibuy = '25775250',
  servingGram = 24, 
  calorie = 103,
  protein = 3.4, fat = 2.8, carbohydrate = 16, sugar = 16, sodium = .13,
  suggestion = list(water80 = 180))



Ippodo_sayakaLatte <- \() new(
  Class = 'recipe',
  flavor = 'Sayaka Latte', 
  ippodotea = 'sayaka-100g',
  matcha = c(Ippodo_sayaka = 3), # matcha 1.5%
  water80 = 100, milk = 96)



Ippodo_uji_shimizu <- \() new(
  Class = 'nutrition', 
  ippodousa = 'uji-shimizu-sticks', ippodoglobal = 'matcha642402',
  name = 'Uji Shimizu\U1f375', alias = '\u5b87\u6cbb\u6e05\u6c34',
  usd = 18/12, jpy = 700/400*15,
  servingGram = 15, servingTbsp = 1.5,
  calorie = 60,
  carbohydrate = 15, addedSugar = 14, 
  suggestion = list(water80 = 150))


ItoEn_sweet_matcha <- \() new(
  Class = 'nutrition', 
  itoen = 'ito-en-matcha-green-tea-sweet-powder-sticks', jfc = '45783',
  name = 'Sweet Matcha',
  servingGram = 12, sugar = 11,
  suggestion = list(water80 = 120))



