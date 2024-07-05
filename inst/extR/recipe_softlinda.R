
# no use.  \linkS4class{noodlelinda} is perfect

# Pastalinda cannot handle this wetness.
# so the name should not be '*linda'


#' @rdname pastalinda
#' @aliases softlinda-class
#' @export
setClass(Class = 'softlinda', contains = 'pastalinda', prototype = prototype(
  alias_class = '\u624b\u5207\u9762',
  key = '\U0001f35e63%',
  portion = c(noodle = 150),
  instruction = c(
    'Work with chilled dough directly', 
    'Easily roll to Thickness 7 with rolling pin',
    'Noodle \u624b\u5207\u9762: finish at Thickness 8. Fold and manually cut'
  ),
  note = 'any wetter, will need to use too much dusting starch!!'
))


#' @rdname pastalinda
#' @export
softlinda <- function() new(
  Class = 'softlinda', 
  water = 315,
  review = 'a hypothetical model')

#' @rdname pastalinda
#' @export
tomato_softlinda <- function() new(Class = 'softlinda', tomato = 420)

#' @rdname pastalinda
#' @export
pumpkin_softlinda <- function() new(Class = 'softlinda', pumpkin = 420, pros = 'I love!')

#' @rdname pastalinda
#' @export
matcha_softlinda <- function() new(
  Class = 'softlinda', softlinda(), matcha_tsp = 8)
#review = 'retry with extra water for matcha')
