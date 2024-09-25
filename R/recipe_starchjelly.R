
# not tried yet


#' @title \linkS4class{starchjelly} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' xiaogaojie_mungjelly()
#' 
#' @name starchjelly
#' @aliases starchjelly-class
#' @export
setClass(Class = 'starchjelly', contains = 'recipe', prototype = prototype(
  alias_class = '\u51c9\u7c89'
))



#' @rdname starchjelly
#' @export
xiaogaojie_mungjelly <- function() new(
  Class = 'recipe', alias_flavor = '\u7eff\u8c46\u51c9\u7c89',
  starch = c(mung = 135),
  water = 250,
  water40 = 1000,
  Na2CO3_tsp = 1/4,
  # waterLost ??
  xiaogaojie = 'BStgIeNQrRk')

