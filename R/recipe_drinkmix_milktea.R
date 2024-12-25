


#' @title \linkS4class{milktea} Recipes
#' 
#' @description
#' Milk tea (from tea bags).
#' 
#' @examples
#' EarlGrey_milktea()
#' Ceylon_milktea()
#' chai_milktea()
#' 
#' @name milktea
#' @aliases milktea-class
#' @export
setClass(Class = 'milktea', contains = 'drinkmix', prototype = prototype(
  alias_class = '\u5976\u8336',
  drymilk = 40, 
  brownSugar_tsp = 2 # 1tsp too bland; 1Tbsp too sweet
))



#' @rdname milktea
#' @export
EarlGrey_milktea <- function() new(
  Class = 'milktea', 
  alias_flavor = 'Earl Grey', 
  teabag = c(Twinings_strongEarlGrey = 1, Twinings_EarlGrey = 3), 
  review = 'try')


#' @rdname milktea
#' @export
Ceylon_milktea <- function() new(
  Class = 'milktea', 
  teabag = c(Stassen_Ceylon = 4), 
  date = as.Date('2024-10-06'),
  pros = 'I like!')



#' @rdname milktea
#' @export
chai_milktea <- function() new(
  Class = 'milktea', 
  teabag = c(Twinings_ultraChai = 4), 
  review = 're-try')






