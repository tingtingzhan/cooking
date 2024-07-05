

#' @title \linkS4class{niangaoNingbo}
#' 
#' @description
#' ..
#' 
#' @examples
#' diagnose_(
#'  SoupedUp_niangaoNingbo,
#'  niangaoNingbo,
#'  Jenny_niangaoNingbo,
#'  LuLu_niangaoNingbo
#' )
#' 
#' 
#' 
#' @name niangaoNingbo
#' @aliases niangaoNingbo-class
#' @export
setClass(Class = 'niangaoNingbo', contains = 'recipe', prototype = prototype(
  alias_class = '\u5b81\u6ce2\u5e74\u7cd5',
  riceFlour = 200,
  glutinousRiceFlour = 100,
  water = 210,
  oil_Tbsp = c(Wegmans_vegetable = 1)
))

#' @rdname niangaoNingbo
#' @export
niangaoNingbo <- function() new(Class = 'niangaoNingbo')

#' @rdname niangaoNingbo
#' @export
Jenny_niangaoNingbo <- function() new(
  Class = 'recipe', author = 'Jenny', alias_flavor = '\u5b81\u6ce2\u5e74\u7cd5',
  youtube = 'kVsbsJrwLQs',
  riceFlour = 200,
  glutinousRiceFlour = 100,
  water = 200,
  oil_Tbsp = c(Wegmans_vegetable = 1),
  salt_tsp = 1/2)

#' @rdname niangaoNingbo
#' @export
SoupedUp_niangaoNingbo <- function() new(
  Class = 'recipe', author = 'Souped Up', alias_flavor = '\u5b81\u6ce2\u5e74\u7cd5',
  youtube = 'lHR1QohweaA',
  riceFlour = 300,
  glutinousRiceFlour = 100,
  water = 300)

#' @rdname niangaoNingbo
#' @export
LuLu_niangaoNingbo <- function() new(
  Class = 'recipe', author = 'LuLu', alias_flavor = '\u5b81\u6ce2\u5e74\u7cd5',
  youtube = 'KPyIG7Tn64I',
  riceFlour = 200,
  glutinousRiceFlour = 200,
  water = 280,
  salt = 2,
  review = 'watch the video; this is too sticky')
