

#' @title \linkS4class{ricemilk} Recipes
#' 
#' @description ..
#' 
#' @details
#' Brown rice, I have tried Japanese (Nishiki) and Thai (\url{shop.wegmans.com/product/42848})
#' 
#' @examples
#' black_ricemilk()
#' # blackRice_paste() # not exported yet
#' 
#' 
#' @name ricemilk
#' @aliases ricemilk-class
#' @export
setClass(Class = 'ricemilk', contains = 'recipe', prototype = prototype(
  alias_class = '\u7c73\u7cca',
  JoyoungDJ13U = JoyoungDJ13U(
    program = '\u7c73\u7cca\u7a0b\u5e8f Rice Paste program, 900ml water line',
    waterLost = 20
  )
))


#' @rdname ricemilk
#' @export
black_ricemilk <- function() new(
  Class = 'ricemilk', alias = '\u9ed1\u7c73\u7cca',
  blackRice = 105, water = 845,
  pros = 'such distinct and delicate smell!')

#' @rdname ricemilk
#' @export
brown_ricemilk <- function() new(
  Class = 'ricemilk', alias = '\u7cd9\u7c73\u7cca',
  brownRice = 97,
  water = 845, review = 'to confirm')


setClass(Class = 'ricepaste', contains = 'recipe', prototype = prototype(
  alias_class = '\u5976\u9999\u7c73\u7cca',
  # for 600g 'ricemilk'
  #drymilk = c(Carnation_drymilk = 15), # 2.5%, a little too much
  drymilk_tsp = c(Carnation_drymilk = 5),
  portion = c(
    'Ciroa mug' = 610,
    'Starbucks mug' = 305
  )
))

blackRice_paste <- function() new(
  Class = 'ricepaste',
  homemade = c(black_ricemilk = 600)
)

