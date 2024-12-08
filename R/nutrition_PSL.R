

#' @title Pumpkin Spice Latte, Commercial or Other People's Recipe
#' 
#' @examples
#' diagnose(
#'  hotdrink(pumpkinSpiceLatte()),
#'  Starbucks_pumpkinSpiceLatte,
#'  Starbucks_pumpkinSpiceFrappuccino
#' )
#' @name PSL_other
NULL




#' @rdname PSL_other
#' @export
Starbucks_pumpkinSpiceLatte <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], starbucks_hot = 418L,
  name = 'Pumpkin Spice Latte',
  servingGram = 470, serving_floz = 16, # 473.176ml
  #caffeine 150 mg*
  calorie = 390, 
  fat = 14, cholesterol = .05, sodium = .23, carbohydrate = 52, sugar = 50, protein = 14)


#' @rdname PSL_other
#' @export
Starbucks_pumpkinSpiceFrappuccino <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], starbucks_iced = 427L,
  name = 'Pumpkin Spice Frappuccino',
  servingGram = 470, serving_floz = 16, # 473.176ml
  #caffeine 100 mg*
  calorie = 420, 
  fat = 15, cholesterol = .05, sodium = .28, carbohydrate = 66, sugar = 65, protein = 6)


