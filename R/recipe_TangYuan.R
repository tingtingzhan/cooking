


#' @title \linkS4class{TangYuan} Wrapper Recipes
#' 
#' @description ..
#' 
#' @details 
#' 
#' 6g dough + 5g filling
#' 
#' @examples 
#' TangYuan()
#' date_TangYuan()
#' pumpkin_TangYuan()
#' mango_TangYuan()
#' 
#' @name TangYuan
#' @aliases TangYuan-class
#' @export
setClass(Class = 'TangYuan', contains = 'recipe', prototype = prototype(
  alias_class = '\u6c64\u5706\u76ae',
  glutinousRiceFlour = 100, 
  butter = 3,
  portion = 5,
  instruction = 'Boil 7% of the dough (1min after floats up)',
  note = 'Do not use powdered flavoring and/or coloring, will be cooked into the soup',
  youtube = c(
    ref1 = 'Ypm36U8LGzA', 
    ref2 = '1P1Jf-sbcFM', 
    ref3 = 't-pop_dGsgc')
))




#' @rdname TangYuan
#' @export
TangYuan <- function() new(Class = 'TangYuan', water = 86, pros = 'I love!')


#' @rdname TangYuan
#' @export
pumpkin_TangYuan <- function() new(Class = 'TangYuan', pumpkin = 140, pros = 'I love!')

#' @rdname TangYuan
#' @export
mango_TangYuan <- function() new(Class = 'TangYuan', mango = 100, pros = 'I love!')

#' @rdname TangYuan
#' @export
date_TangYuan <- function() new(
  Class = 'TangYuan', alias_flavor = '\u7ea2\u67a3',
  flavor = c(SunnyFruit_date = 93), water = 107,
  note = 'Soak ground date in water for 4hr+',
  pros = 'Effie\'s Signature')









