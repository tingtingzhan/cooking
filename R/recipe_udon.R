

# too much sodium

#' @title \linkS4class{udon} Recipes
#' 
#' @description ..
#' 
#' @examples
#' diagnose(
#'  Leo_udon,
#'  JustOne_udon,
#'  amanda_udon)
#' @name udon
#' @aliases udon-class
#' @export
setClass(Class = 'udon', contains = 'recipe', prototype = prototype(
  alias_class = '\u9942\u98e9\u3046\u3069\u3093',
  note = 'Melt salt in water.  Knead the dough by stepping on it'
))


#' @rdname udon
#' @export
amanda_udon <- function() new(
  Class = 'recipe', author = '\u66fc\u98df\u6162\u8bed', alias_flavor = 'Udon', 
  youtube = 'q0gNH9vxiYY',
  flour = 300,
  water = 130, salt = 15)


#' @rdname udon
#' @export
JustOne_udon <- function() new(
  Class = 'recipe', alias_flavor = 'Udon', 
  just1cookbook = c('luljUScGJm4' = 'udon-noodles'),
  flour = 200, # 7 oz
  water = 90, # 6tbsp, 89g
  salt = 10) # 0.35 oz
  



#' @rdname udon
#' @export
Leo_udon <- function() new(
  Class = 'recipe', author = 'Leo', alias_flavor = 'Udon', 
  youtube = 'wgj51q9Hlq8',
  flour = 500, # 17.6 oz
  salt = 23, # 0.8 oz
  water = 205 # 7.2 oz
  # Leo said https://youtu.be/wgj51q9Hlq8?feature=shared&t=60
  # (water + salt) / flour = 45%
  # salt / water = 10%
)






