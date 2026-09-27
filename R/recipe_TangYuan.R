


#' @title \linkS4class{TangYuan} Wrapper Recipes
#' 
#' @description ..
#' 
#' @details 
#' 
#' 6g dough + 5g filling
#' 
#' @examples 
#' # TangYuan() # why error???
#' date_TangYuan()
#' pumpkin_TangYuan()
#' mango_TangYuan()
#' 
#' @name TangYuan-class
#' @export
setClass(Class = 'TangYuan', contains = 'recipe', prototype = prototype(
  class2 = '\u6c64\u5706\u76ae',
  flour = c(Erawan_glutinousRiceFlr = 100), 
  dairy = c(Kerrygold_butter = 3),
  portion = 5#,
  # instruction (legacy) = 'Boil 7% of the dough (1min after floats up)',
  # note (legacy) = 'Do not use powdered flavoring and/or coloring, will be cooked into the soup'
))

# write down these original recipes
#youtube = c(
#  ref1 = 'Ypm36U8LGzA', 
#  ref2 = '1P1Jf-sbcFM', 
#  ref3 = 't-pop_dGsgc')



#' @rdname TangYuan-class
#' @export
TangYuan <- \() new(
  Class = 'TangYuan', flavor = 'abc',
  water = 86, 
  pros = 'I love!')


#' @rdname TangYuan-class
#' @export
pumpkin_TangYuan <- \() new(
  Class = 'TangYuan', 
  puree = c(Libbys_pumpkin = 140), 
  pros = 'I love!')

#' @rdname TangYuan-class
#' @export
mango_TangYuan <- \() new(
  Class = 'TangYuan', 
  puree = c(UltraOrganics_mango = 100), 
  pros = 'I love!')

#' @rdname TangYuan-class
#' @export
date_TangYuan <- \() new(
  Class = 'TangYuan', flavor = '\u7ea2\u67a3',
  misc = c(SunnyFruit_date = 93), water = 107,
  # note (legacy) = 'Soak ground date in water for 4hr+',
  pros = 'Effie\'s Signature')









