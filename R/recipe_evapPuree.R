


#' @title \linkS4class{evap}orated Fruit Puree
#' 
#' @examples
#' pineapple_evap()
#' 
#' @export
setClass(Class = 'evap', contains = 'recipe', prototype = prototype(
  #class2 = '\u679c\u6ce5'
  class2 = 'Evaporated'
))


#' @rdname evap-class
#' @export
pineapple_evap <- \() new(
  Class = 'evap',
  puree = c(Dole_pineapple = 2070 - 933),
  tool = list(JoyoungCJA9U_filling(
    minute = 20, # confirmed! violently bubbling; must not extend!
    waterLost = 387, # confirmed
    note = '2x 567g Dole cans'
  ))
)

# pot: 933g
# pot + 2can: 2070g, fresh
# pot + cooked: 1683
