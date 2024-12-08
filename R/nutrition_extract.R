
#' @title Vanilla Extract
#' 
#' @keywords internal
#' @name nutrition_vanilla
#' @aliases vanilla-class
#' @export
setClass(Class = 'vanilla', contains = 'nutrition', prototype = prototype(
  alias = '\u9999\u8349\u7cbe',
  fdc = 173471L,
  servingGram = 100,
  servingCup = 100/208, # see tab 'Measures' on fdc website
  water = 52.6, fat = .06, sugar = 12.6, sodium = .009, protein = .06
))



#' @rdname nutrition_vanilla
#' @export
NielsenMassey_vanilla <- function() new(
  Class = 'vanilla', call = match.call()[[1L]],
  nielsenmassey = 'pure-vanilla-extract',
  name = 'Vanilla')

#' @rdname nutrition_vanilla
#' @export
NielsenMassey_Madagascar <- function() new(
  Class = 'vanilla', call = match.call()[[1L]], 
  nielsenmassey = 'madagascar-bourbon-pure-vanilla-extract',
  name = 'Madagascar\U0001f1f2\U0001f1ec Bourbon Vanilla',
  costco = '100854905')

#' @rdname nutrition_vanilla
#' @export
NielsenMassey_Indonesian <- function() new(
  Class = 'vanilla', call = match.call()[[1L]], 
  nielsenmassey = 'indonesian-pure-vanilla-extract',
  name = 'Indonesian\U0001f1ee\U0001f1e9 Bourbon Vanilla')

#' @rdname nutrition_vanilla
#' @export
NielsenMassey_Tahitian <- function() new(
  Class = 'vanilla', call = match.call()[[1L]], 
  nielsenmassey = 'tahitian-pure-vanilla-extract',
  name = 'Tahitian\U0001f1f5\U0001f1eb Bourbon Vanilla')

#' @rdname nutrition_vanilla
#' @export
NielsenMassey_Ugandan <- function() new(
  Class = 'vanilla', call = match.call()[[1L]], 
  nielsenmassey = 'ugandan-pure-vanilla-extract',
  name = 'Ugandan\U0001f1fa\U0001f1ec Bourbon Vanilla')


# https://www.mccormick.com/spices-and-flavors/extracts-and-food-colors/extracts/pure-vanilla-extract
