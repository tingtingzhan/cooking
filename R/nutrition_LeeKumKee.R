
#' @title Lee Kum Kee
#' 
#' @keywords internal
#' @name nutrition_LeeKumKee
NULL

#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_chickenBouillon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'premium-bouillon-powder-flavored-with-chicken-no-msg-added',
  name = 'Chicken Bouillon', alias = '\u7279\u7d1a\u8abf\u5473\u96de\u7c89',
  servingGram = 5, servingTsp = 1, sodium = .81)

#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_5spiceMarinade <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'selected-five-spices-marinade',
  name = 'Five Spice Marinade', alias = '\u4e94\u9999\u9e75\u6c34\u6c41',
  usd = 4/410*15,
  servingGram = 15, servingTbsp = 1, sodium = .71, sugar = 6)

#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_brownBraising <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'brown-braising-sauce',
  name = 'Brown Braising Sauce', alias = '\u79d8\u88fd\u7d05\u71d2\u6c41',
  servingGram = 15, servingTbsp = 1, sodium = .59, sugar = 6, protein = 1)

#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_garlic <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'minced-garlic',
  name = 'Minced Garlic\U1f9c4', alias = '\u849c\u84c9',
  usd = 5.69/326*6,
  servingGram = 6, servingTsp = 1,
  calorie = 15,
  fat = 1.5, sodium = .085, carbohydrate = 1)


#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_premium_oyster <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'premium-oyster-flavored-sauce',
  name = 'Oyster Sauce', alias = '\u820a\u5e84\u7279\u7d1a\u8814\u6cb9',
  costcoBiz = '11941145',
  servingGram = 19, servingTbsp = 1, # weight and volumn on bottle
  calorie = 30, 
  sodium = .83, carbohydrate = 6, addedSugar = 4, protein = 1,
  review = 'MSG flavor too strong, I do not like')

#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_oyster <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'panda-brand-oyster-flavored-sauce',
  name = '\u718a\u8c93\u724c\u9bae\u5473\u8814\u6cb9 Panda\u00ae Oyster Sauce',
  webstaurant = '999LKK0074', # source of nutrition info
  servingGram = 19, # my guess
  servingTbsp = 1,
  calorie = 20,
  fat = 10, sodium = .87, carbohydrate = 5, addedSugar = 4, protein = 3)

#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_KoreanBBQ <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'korean-barbecue-sauce',
  name = 'Korean BBQ Sauce', alias = '\u97d3\u570b\u71d2\u70e4\u91ac',
  servingGram = 36, servingTbsp = 2, calorie = 60,
  fat = .5, sodium = 1.06, addedSugar = 11)

#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_blackPepper <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'black-pepper-sauce',
  name = 'Black Pepper Sauce', alias = '\u9ed1\u6912\u6c41',
  usd = 4.29/350*18,
  servingGram = 18, 
  servingTbsp = 1, 
  calorie = 25, sodium = .6, carbohydrate = 5, addedSugar = 3)

#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_coconutCurry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'coconut-flavored-curry-sauce',
  name = 'Coconut Curry Sauce', alias = '\u8461\u570b\u96de\u6c41',
  usd = 4.29/235*18,
  servingGram = 18, 
  servingTbsp = 1, 
  calorie = 60, fat = 3.5, sodium = .64, addedSugar = 4)

#' @rdname nutrition_LeeKumKee
#' @export
LeeKumKee_satay <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], leekumkee = 'satay-sauce',
  name = 'Satay Sauce', alias = '\u6c99\u7239\u9171',
  servingGram = 16, servingTbsp = 1, calorie = 110,
  fat = 9, sodium = .18, addedSugar = 3, protein = 2)
