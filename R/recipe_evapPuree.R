


#' @title \linkS4class{evap}orated Fruit Puree
#' 
#' @examples
#' pineapple_evap()
#' 
#' @name evap
#' @aliases evap-class
#' @export
setClass(Class = 'evap', contains = 'recipe', prototype = prototype(
  #alias_class = '\u6d53\u7f29\u679c\u6ce5'
  alias_class = 'Evaporated'
))


#' @rdname evap
#' @export
pineapple_evap <- function() new(
  Class = 'evap',
  pineapple = c(Dole_pineapple = 2070 - 933),
  JoyoungCJA9U = JoyoungCJA9U(
    minute = 20, # confirmed! violently bubbling; must not extend!
    cooling = c(
      'covered, until bubbling quiets down',
      'disassemble machine as early as possible; syrup may stuck'
    ),
    waterLost = 387 # confirmed
  ),
  note = '2x 567g Dole cans'
)

# pot: 933g
# pot + 2can: 2070g, fresh
# pot + cooked: 1683