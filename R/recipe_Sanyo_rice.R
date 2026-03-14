

# Botan

# 3.5 cup (joyoung big cup)
# 3-cup water line (white rice)
# almost perfect

# Next time try 3.75cup rice


#' @title \linkS4class{rice} Recipe
#' 
#' @description
#' Use JoyoungDJ13U's Porridge program to cook brown rice.
#' 
#' 
#' @name rice
#' @aliases rice-class
#' @export
setClass(Class = 'rice', contains = 'recipe', prototype = prototype(
  alias_class = '\u7c73\u996d', alias_flavor = '',
  SanyoECJS35S = SanyoECJS35S(
    program = '\u852c\u83dc\u7ca5\u7a0b\u5e8f Wite/Mixed program, 3-cup water line', 
    cooling = 'unplug from power, let stand for 2hr+'
    # waterLost = ? # confirm next time!
  )
))

# @rdname rice
# @export
rice_Botan <- \() new(
  Class = 'rice', 
  brownRice = c(Botan_rice = 95*3.75),
  water = 700, # to confirmed!!
  # whole bowl: ??
  #pros = 'perfect wetness, brown rice fluffy and soft',
  #date = as.Date('2024-10-15')
  review = 'to confirm')

