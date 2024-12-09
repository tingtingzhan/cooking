
#' @title Caffe Latte, Commercial or Other People's Recipe
#' 
#' @examples
#' diagnose(
#'  hotdrink(caffeLatte),
#'  Starbucks_caffeLatte,
#'  Starbucks_coffeeFrappuccino_bottle
#' ) # compare hot/frappe drink
#' @name caffeLatte_other
#' @keywords internal 
#' @export
Starbucks_caffeLatte <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], starbucks_hot = 407L,
  name = 'Caff\u00e8 Latte',
  servingGram = 470, serving_floz = 16,
  #caffeine 150 mg*
  calorie = 190, 
  fat = 7, cholesterol = .030, sodium = .170, carbohydrate = 19, sugar = 18, protein = 13)


#' @rdname caffeLatte_other
#' @export
Starbucks_coffeeFrappuccino_bottle <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Coffee Frappuccino',
  brand = 'Starbucks (Bottled)',
  walmart = '14532479', target = 'A-12959301',
  serving_floz = 13.7, servingGram = 405, # use water density
  calorie = 300,
  fat = 4.5, cholesterol = .02, sodium = .14, carbohydrate = 54, sugar = 47, addedSugar = 34, protein = 9)


# how is this website different from https://athome.starbucks.com ?
# https://www.starbucksathome.com/products/starbucks-caffe-latte-premium-instant-coffees
# https://www.starbucksathome.com/products/starbucks-vanilla-latte-premium-instant-coffees
