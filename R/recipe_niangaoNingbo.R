

#' @title \linkS4class{niangaoNingbo}
#' 
#' @description
#' ..
#' 
#' @examples
#' nutritionlist(
#'  SoupedUp_niangaoNingbo(),
#'  niangaoNingbo(),
#'  Jenny_niangaoNingbo(),
#'  LuLu_niangaoNingbo()
#' )
#' 
#' @name niangaoNingbo-class
#' @export
setClass(Class = 'niangaoNingbo', contains = 'recipe', prototype = prototype(
  class2 = '\u5b81\u6ce2\u5e74\u7cd5',
  flour = c(Erawan_glutinousRiceFlr = 100,
            Erawan_riceFlr = 200),
  water = 210,
  oil_Tbsp = c(Wegmans_vegetable_oil = 1)
))

#' @rdname niangaoNingbo-class
#' @export
niangaoNingbo <- \() new(Class = 'niangaoNingbo')

#' @rdname niangaoNingbo-class
#' @export
Jenny_niangaoNingbo <- \() new(
  Class = 'recipe', author = 'Jenny', flavor = '\u5b81\u6ce2\u5e74\u7cd5',
  youtube = 'kVsbsJrwLQs',
  flour = c(Erawan_glutinousRiceFlr = 100,
            Erawan_riceFlr = 200),
  water = 200,
  oil_Tbsp = c(Wegmans_vegetable_oil = 1),
  salt_tsp = 1/2)

#' @rdname niangaoNingbo-class
#' @export
SoupedUp_niangaoNingbo <- \() new(
  Class = 'recipe', author = 'Souped Up', flavor = '\u5b81\u6ce2\u5e74\u7cd5',
  youtube = 'lHR1QohweaA',
  flour = c(Erawan_glutinousRiceFlr = 100,
            Erawan_riceFlr = 300),
  water = 300)

#' @rdname niangaoNingbo-class
#' @export
LuLu_niangaoNingbo <- \() new(
  Class = 'recipe', author = 'LuLu', flavor = '\u5b81\u6ce2\u5e74\u7cd5',
  youtube = 'KPyIG7Tn64I',
  flour = c(Erawan_glutinousRiceFlr = 200,
            Erawan_riceFlr = 200),
  water = 280,
  salt = 2,
  review = 'watch the video; this is too sticky')
