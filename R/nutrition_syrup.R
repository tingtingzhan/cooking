

#' @title Sugar Syrup
#' 
#' @name nutrition_syrup
NULL


#' @rdname nutrition_syrup
#' @export
TraderJoes_date_syrup <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = 'Trader Joe\'s', name = 'Date Syrup', alias = '\u7ea2\u67a3\u7cd6\u6d46',
  servingGram = 35, # to be confirmed
  servingTbsp = 2,
  calorie = 100,
  sodium = .01,
  carbohydrate = 28, sugar = 26)

#' @rdname nutrition_syrup
#' @export
TraderJoes_blueAgave_syrup <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  servingGram = 44.4, sugar = 30)

