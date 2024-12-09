



#' @title \linkS4class{soytea} Recipes
#' 
#' @description
#' Black tea soaked in \linkS4class{soymilk}, slightly sweetened.
#' 
#' @examples
#' EarlGrey_soytea()
#' chai_soytea()
#' Ceylon_soytea()
#' 
#' @name soytea
#' @aliases soytea-class
#' @export
setClass(Class = 'soytea', contains = 'recipe', prototype = prototype(
  alias_class = '\u8c46\u6d46\u8336',
  homemade = c(soymilk = 600), # old
  brownSugar_Tbsp = 1, # perfect sweetness!!! 2024 Fall
  Stanley20 = Stanley20(treatment = c(
    'must use freshly brewed soy milk',
    'soak (covered) for 1hr+'
  ))
))

#' @rdname soytea
#' @export
EarlGrey_soytea <- function() new(Class = 'soytea', teabag = c(Twinings_strongEarlGrey = 1, Twinings_EarlGrey = 3), alias_flavor = 'Earl Grey', date = as.Date('2024-09-15'), pros = 'super flavorful!')

#' @rdname soytea
#' @export
chai_soytea <- function() new(Class = 'soytea', teabag = c(Twinings_ultraChai = 4), date = as.Date('2024-09-15'), pros = 'super flavorful!')

#' @rdname soytea
#' @export
Ceylon_soytea <- function() new(Class = 'soytea', teabag = c(Stassen_Ceylon = 4), date = as.Date('2024-09-15'), pros = 'not bad!')


