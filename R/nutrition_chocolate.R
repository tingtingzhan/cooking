

#' @title Guittard Chocolate Bars
#' 
#' @description
#' ..
#' 
#' @note
#' only 'case' page!!  ingredients more accurate!
#' 
#' @examples
#'  
#' nutrition_(
#'  Guittard_bittersweet63,
#'  Guittard_eclipse50,
#'  Guittard_solitaire54,
#'  Guittard_vanilla54,
#'  Guittard_solitaire52,
#'  Guittard_heritage39,
#'  Guittard_Dutch34milk,
#'  Guittard_31milk,
#'  Guittard_heritage32milk,
#'  Guittard_highSierra28white
#' )
#' 
#' @name Guittard
#' @export
Guittard_31milk <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = '31% Milk',
  webstaurant = '409G0390C50CS',
  usd = 292.49 / 5 / (10*454) * 100,
  # does not have accurate nutrition info
  servingGram = 100,
  calorie = 540,
  water = .7, fat = 32, cholesterol = .02, sodium = .065, sugar = 53, protein = 7)
 
#' @rdname Guittard
#' @export
Guittard_Dutch34milk <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = 'Old Dutch 34% Milk',
  webstaurant = '409G0311C50CS',
  usd = 306.49 / 5 / (10*454) * 100,
  servingGram = 100,
  calorie = 521.2,
  water = .7, fat = 31.2, cholesterol = .015, sodium = .073, sugar = 52.8, addedSugar = 45.5, protein = 6.7)

#' @rdname Guittard
#' @export
Guittard_bittersweet63 <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = '63% Bittersweet',
  webstaurant = '409G0502C50CS',
  usd = 322.49 / 5 / (10*454) * 100,
  servingGram = 100,
  calorie = 475,
  water = .7, fat = 35, cholesterol = .0066, sodium = .047, sugar = 34.3, addedSugar = 33.9, protein = 7.3)

#' @rdname Guittard
#' @export
Guittard_heritage39 <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = 'Molding Heritage 39%',
  webstaurant = '409G0354C50CS',
  usd = 302.49 / 5 / (10*454) * 100,
  servingGram = 100,
  calorie = 549.1,
  water = .7, fat = 33.9, cholesterol = .0197, sodium = .066, sugar = 52.4, addedSugar = 45, protein = 7.1)

#' @rdname Guittard
#' @export
Guittard_heritage32milk <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = 'Heritage 32% Milk',
  webstaurant = '409G0355C50CS',
  usd = 304.49 / 5 / (10*454) * 100,
  servingGram = 100,
  calorie = 541.86,
  water = .7, fat = 32.4, cholesterol = .0202, sodium = .067, sugar = 53.6, addedSugar = 46, protein = 7.2)

#' @rdname Guittard
#' @export
Guittard_vanilla54 <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = 'French Vanilla 54% Dark',
  webstaurant = '409G0411C50CS',
  usd = 286.99 / 5 / (10*454) * 100,
  servingGram = 100,
  calorie = 487.1,
  water = .7, fat = 32.9, cholesterol = numeric(), sodium = .035, sugar = 44.9, addedSugar = 44.6, protein = 5.1)

#' @rdname Guittard
#' @export
Guittard_highSierra28white <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = 'High Sierra 28% White',
  webstaurant = '409G9201C50CS',
  usd = 364.49 / 5 / (10*454) * 100,
  # does not have accurate nutrition info
  servingGram = 100,
  calorie = 540,
  water = .7, fat = 32, cholesterol = .015, sodium = .1, sugar = 59, protein = 6)

#' @rdname Guittard
#' @export
Guittard_eclipse50 <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = 'Eclipse 50% Dark',
  webstaurant = '409G0431C50CS',
  usd = 296.99 / 5 / (10*454) * 100,
  servingGram = 100,
  calorie = 499.4,
  water = .7, fat = 34.3, cholesterol = .0051, sodium = .059, sugar = 43.3, addedSugar = 43, protein = 5.3)

#' @rdname Guittard
#' @export
Guittard_lustrous55 <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = 'Lustrous 55% Dark',
  webstaurant = '409G0407C50CS',
  usd = 389.99 / 5 / (10*454) * 100,
  # does not have accurate nutrition info
  servingGram = 100,
  calorie = 540,
  water = .7, fat = 32, cholesterol = .005, sodium = .050, sugar = 43, protein = 8)

#' @rdname Guittard
#' @export
Guittard_solitaire54 <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = 'Molding Solitaire 54% Dark',
  webstaurant = '409G0412C50CS',
  usd = 429.99 / 5 / (10*454) * 100,
  servingGram = 100,
  calorie = 512.6,
  water = .7, fat = 36.3, cholesterol = numeric(), sodium = .025, sugar = 43.7, addedSugar = 43.4, protein = 4.4)

#' @rdname Guittard
#' @export
Guittard_solitaire52 <- function() new(
  Class = 'nutrition',
  brand = 'Guittard\U1f1fa\U1f1f8', name = 'Solitaire 52% Dark',
  webstaurant = '409G0413C50CS',
  usd = 418.99 / 5 / (10*454) * 100,
  servingGram = 100,
  calorie = 533.1,
  water = .7, fat = 31.6, cholesterol = numeric(), sodium = .035, sugar = 47.0, addedSugar = 46.8, protein = 6.1)


# https://www.guittard.com/our-chocolate/detail/bake_bittersweet-baking-bars
# https://www.guittard.com/our-chocolate/detail/bake_semisweet-baking-bars
# https://www.guittard.com/our-chocolate/detail/bake_unsweetened-baking-bars




# https://www.guittard.com/our-chocolate/detail/pro_kokoleka-milk
# https://www.guittard.com/our-chocolate/detail/pro_kokoleka-semisweet


Bouchard_dark72 <- function() new(
  Class = 'nutrition',
  name = 'Dark Chocolate Napolitains (72% Cacao)',
  bouchard = 'dark-chocolate-napolitains',
  costco = '100661366',
  review = 'Quite sour, after I get to know Dutch-processed cocoa!',
  usd = 29.99/910*30,
  servingGram = 30,
  calorie = 140,
  fat = 12, sugar = 8, protein = 3)

CopperKettleCandy_darkChocolateTruffle <- function() new(
  Class = 'nutrition',
  brand = 'Copper Kettle Candy Co.', name = 'Dark Chocolate Truffles',
  # no url ??
  # my ideal sugar content
  servingGram = 28,
  calorie = 150,
  fat = 12, sodium = .055, sugar = 10, protein = 2)


Ghirardelli_whiteChocolate <- function() new(
  Class = 'nutrition',
  name = 'White Chocolate Bar',
  ghirardelli = 'premium-baking-bar-white-chocolate-12-bars-61829cs',
  amazon = 'B01IRFB7CO', usd = 34.44/12/113.5*14,
  servingGram = 14, 
  calorie = 80,
  fat = 4.5, sodium = .01, carbohydrate = 9, sugar = 9, addedSugar = 7)






