

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
#' @name ricemilk-class
#' @export
setClass(Class = 'ricemilk', contains = 'recipe', prototype = prototype(
  class2 = '\u7c73\u7cca',
  tool = list(JoyoungDJ13U(
    program = '\u7c73\u7cca\u7a0b\u5e8f Rice Paste program, 900ml water line',
    waterLost = 20
  ))
))


#' @rdname ricemilk-class
#' @export
black_ricemilk <- \() new(
  Class = 'ricemilk',
  grain = c(HaiTai_blackRice = 105), water = 845,
  pros = 'such distinct and delicate smell!')

#' @rdname ricemilk-class
#' @export
brown_ricemilk <- \() new(
  Class = 'ricemilk',
  grain = c(Nishiki_brownRice = 97),
  water = 845, review = 'to confirm')


setClass(Class = 'ricepaste', contains = 'recipe', prototype = prototype(
  class2 = '\u5976\u9999\u7c73\u7cca',
  # for 600g 'ricemilk'
  #dairy = c(Carnation_drymilk = 15), # 2.5%, a little too much
  dairy_tsp = c(Carnation_drymilk = 5),
  portion = c(
    'Ciroa mug' = 610,
    'Starbucks mug' = 305
  )
))

blackRice_paste <- \() new(
  Class = 'ricepaste',
  homemade = c(black_ricemilk = 600)
)

