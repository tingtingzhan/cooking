
#' @title \linkS4class{powder2milk} Recipes
#' 
#' @description
#' Milk from dry milk powder, according to instructions on the jar.
#' 
#' @details
#' Suggested serving instruction printed on the can of dry milk.
#' 
#' 1/4 (or 1/3) cup dry milk + 1 cup boiling water.
#' 
#' @examples
#' diagnose(
#'  nonfatMilk_Carnation,
#'  bakerMilk_KingArthur,
#'  nonfatMilk_GreatValue,
#'  wholeMilk_Nido,
#'  wholeMilk_KingArthur
#' )
#' 
#' 
#' @name powder2milk
#' @aliases powder2milk-class
#' @export
setClass(Class = 'powder2milk', contains = 'recipe', prototype = prototype(
  alias_class = '\u5373\u51b2\u5976',
  water80 = 236.588
))

#' @rdname powder2milk
#' @export
nonfatMilk_Carnation <- function() new(Class = 'powder2milk', alias_flavor = 'Carnation Nonfat', drymilk = c(Carnation_drymilk = 23))

#' @rdname powder2milk
#' @export
wholeMilk_Nido <- function() new(Class = 'powder2milk', alias_flavor = 'Nido Whole', drymilk = c(Nido_drymilk = 30))

#' @rdname powder2milk
#' @export
wholeMilk_KingArthur <- function() new(Class = 'powder2milk', alias_flavor = 'King Arthur Whole', drymilk = c(KingArthur_drymilk = 6*4))

#' @rdname powder2milk
#' @export
bakerMilk_KingArthur <- function() new(Class = 'powder2milk', alias_flavor = 'King Arthur Baker', drymilk = c(KingArthur_baker_drymilk = 28))

#' @rdname powder2milk
#' @export
nonfatMilk_GreatValue <- function() new(Class = 'powder2milk', alias_flavor = 'Great Value Nonfat', drymilk = c(GreatValue_drymilk = 23))

#' @rdname powder2milk
#' @export
goatMilk_Meyenberg <- function() new(Class = 'powder2milk', alias_flavor = 'Meyenberg Nonfat Goat\U1f410 Milk', drymilk = c(Meyenberg_goat_drymilk = 28))

#' @rdname powder2milk
#' @export
wholeGoatMilk_Meyenberg <- function() new(Class = 'powder2milk', alias_flavor = 'Meyenberg Whole Goat\U1f410 Milk', drymilk = c(Meyenberg_goatWhole = 28))
