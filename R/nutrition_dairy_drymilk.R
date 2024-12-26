
#' @title Dry Milk
#' 
#' @examples
#' diagnose(
#'  suggested(Carnation_drymilk),
#'  suggested(GreatValue_drymilk),
#'  suggested(MembersMark_drymilk),
#'  suggested(BobsRedMill_drymilk),
#'  suggested(Nido_drymilk),
#'  suggested(Horizon_whole_drymilk)
#' )
#' 
#' diagnose(
#'  suggested(Meyenberg_goat_drymilk),
#'  suggested(Meyenberg_goatWhole_drymilk)
#' )
#' 
#' @keywords internal
#' @name nutrition_drymilk
NULL

#' @rdname nutrition_drymilk
#' @export
Meyenberg_goat_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], meyenberg = 'powdered-nonfat-goat-milk',
  name = 'Nonfat Dry Goat\U1f410 Milk', alias = '\u8131\u8102\u7f8a\u5976\u7c89',
  amazon = 'B08M2RH8P5', usd = 89.99/6/340*28,
  servingGram = 28, #servingCup = 1/4, # packaging
  servingCup = 28/40*(1/4), # actual experiment: 40g = 1/4cup !!!
  calorie = 90,
  cholesterol = .010, sodium = .1, carbohydrate = 12, sugar = 12, protein = 10,
  suggestion = list(water80_cup = 1))


#' @rdname nutrition_drymilk
#' @export
Meyenberg_goatWhole_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], meyenberg = 'powdered-whole-goat-milk',
  name = 'Whole Dry Goat\U1f410 Milk', alias = '\u5168\u8102\u7f8a\u5976\u7c89',
  #amazon = 'B08M2VSQ6N', usd = 89.98/6/340*28,
  walmart = '849003302', usd = 13.94/340*28, # cheaper!!
  servingGram = 28, #servingCup = 1/4, # packaging
  servingCup = 28/30*(1/4), # actual experiment: 1/4cup = 30g
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .085, carbohydrate = 10, sugar = 10, protein = 7,
  suggestion = list(water80_cup = 1))


#' @rdname nutrition_drymilk
#' @export
Carnation_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], #nestle = '12428935',
  brand = c(style_hyperlink(text = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', url = 'https://www.nestleprofessional.us/nestle-carnation-nonfat-dry-milk-4-x-2275-oz')),
  name = 'Nonfat Dry Milk', alias = '\u8131\u8102\u5976\u7c89',
  walmart = '978118310', usd = 4.48/272*23, # April 2024; $4.48 in store
  target = 'A-13898456', #usd = 4.89/272*23, # Feb 2024
  servingGram = 23, 
  # servingCup = 1/4, # packaging
  servingCup = 23/87, # actual experiment: 1 cup = 87 gram
  calorie = 80,
  cholesterol = .005, sodium = .095, carbohydrate = 12, sugar = 12, protein = 8,
  suggestion = list(water80_cup = 1))





#' @rdname nutrition_drymilk
#' @export
Carnation_whole_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], nestle = '12550835',
  brand = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', 
  name = 'Whole Milk Powder', alias = '\u5168\u8102\u5976\u7c89',
  servingGram = 30, servingCup = 1/4, # website does not have servingGram!!
  fat = 8, sodium = .105, sugar = 10, protein = 7)

#' @rdname nutrition_drymilk
#' @export
Nido_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Dry Whole Milk', alias = '\u5168\u8102\u5976\u7c89',
  nido = 'fortificada-dry-whole-milk-beverage-564-oz/',
  walmart = '14869811', usd = 19.98/1600*30, # 2023-11-11
  servingGram = 30, servingCup = 1/4,
  fat = 8, sodium = .105, carbohydrate = 11, sugar = 11, protein = 8,
  suggestion = list(water80_cup = 1))

#' @rdname nutrition_drymilk
#' @export
KingArthur_baker_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 213100L,
  name = 'Baker\'s Special Dry Milk', alias = '\u8131\u8102\u5976\u7c89',
  usd = 12.95/454*28, # 2023-11-11
  servingGram = 28, 
  servingCup = 1/4, # packaging
  calorie = 100,
  # no suggestion on package!
  cholesterol = .01, sodium = .11, carbohydrate = 14, sugar = 13, protein = 10)

#' @rdname nutrition_drymilk
#' @export
KingArthur_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 211706L,
  name = 'Dried Whole Milk', alias = '\u5168\u8102\u5976\u7c89',
  usd = 12.95/397*6, # 2023-11-11
  servingGram = 6, 
  servingTbsp = 1, # packaging
  calorie = 30,
  # no suggestion on package!!!
  fat = 1.5, cholesterol = .005, sodium = .02, carbohydrate = 2, sugar = 2, protein = 2)

#' @rdname nutrition_drymilk
#' @export
GreatValue_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], walmart = '10415475',
  name = 'Nonfat Dry Milk', alias = '\u8131\u8102\u5976\u7c89',
  usd = 19.67/1810*23,
  servingGram = 23,
  servingCup = 1/3,
  calorie = 80,
  cholesterol = .005, sodium = .125, carbohydrate = 12, sugar = 12, protein = 8,
  suggestion = list(water80_cup = 7/8))

#' @rdname nutrition_drymilk
#' @export
MembersMark_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  sams = 'prod21366487', 
  name = 'Nonfat Dry Milk', alias = '\u8131\u8102\u5976\u7c89',
  usd = 18.48/1990*23,
  servingGram = 23,
  servingCup = 1/3, # packaging
  calorie = 80,
  cholesterol = .005, sodium = .125, carbohydrate = 12, sugar = 12, protein = 8,
  suggestion = list(water80_cup = 7/8))

#' @rdname nutrition_drymilk
#' @export
BobsRedMill_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], bobsredmill = 'non-fat-dry-milk-powder',
  name = 'Nonfat Dry Milk', alias = '\u8131\u8102\u5976\u7c89',
  # usd =
  servingGram = 24,
  servingTbsp = 3, # packaging
  calorie = 90,
  sodium = .1, carbohydrate = 13, sugar = 11, protein = 8,
  suggestion = list(water_cup = 1))


#' @rdname nutrition_drymilk
#' @export
Horizon_whole_drymilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  horizon = 'organic-milk/organic-dry-whole-milk',
  name = 'Dry Whole Milk', alias = '\u5168\u8102\u5976\u7c89',
  sams = 'prod25791985', usd = 23.22/(30.6*28.35)*29,
  walmart = '548381598', # usd = 26.94/(30.6*28.35)*29,
  costcoBiz = '100390940',
  servingGram = 29, servingCup = 1/4, # packaging
  calorie = 140,
  fat = 8, cholesterol = .030, sodium = .105, carbohydrate = 11, sugar = 10, protein = 8,
  suggestion = list(water80_cup = 1))


# skim
# https://www.yotsuba-shop.com/Form/Product/ProductDetail.aspx?shop=0&pid=11060&cat=000006134

# whole
# https://www.yotsuba-shop.com/Form/Product/ProductDetail.aspx?shop=0&pid=10159&cat=000006135

# ??
# https://www.yotsuba-shop.com/Form/Product/ProductDetail.aspx?shop=0&pid=12714&cat=000006136

# unsalted butter
# https://www.yotsuba-shop.com/Form/Product/ProductDetail.aspx?shop=0&pid=10425&cat=000002104
