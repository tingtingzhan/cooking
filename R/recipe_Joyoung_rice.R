

#' @title \linkS4class{brownrice} Recipe
#' 
#' @description
#' Use JoyoungDJ13U's Porridge program to cook brown rice.
#' 
#' 
#' @name brownrice
#' @aliases brownrice-class
#' @export
setClass(Class = 'brownrice', contains = 'recipe', prototype = prototype(
  alias_class = '\u7cd9\u7c73\u996d', alias_flavor = '',
  water = 700, # weight confirmed!
  JoyoungDJ13U = JoyoungDJ13U(
    program = '\u852c\u83dc\u7ca5\u7a0b\u5e8f Porridge program, 900ml water line', 
    note = '3 cups of rice',
    cooling = 'Unplug from power, let stand for 2hr+'
    # waterLost = ? # confirm next time!
  )
))

# @rdname brownrice
# @export
brownrice <- function() new(
  Class = 'brownrice', 
  brownRice = c(Nishiki_brownRice = 270), 
  #pros = 'perfect wetness, brown rice fluffy and soft',
  #date = as.Date('2024-10-15')
  review = 'to confirm')







brownrice_a <- function() new(
  Class = 'brownrice', 
  brownRice = c(Dynasty_brownRice = 270), 
  pros = 'perfect wetness, brown rice fluffy and soft',
  date = as.Date('2024-10-15'))





