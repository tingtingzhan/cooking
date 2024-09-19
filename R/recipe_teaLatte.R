

#' @title \linkS4class{teaLatte} Recipes
#' 
#' @description
#' Latte from a tea bag.
#' 
# @slot boilingWater 250 grams of boiling water, for a tea mug
#' 
# @slot drymilk 35 grams of dry milk
#' 
# @slot brownSugar_tsp has better color than `sugar`
#' 
#' @examples
#' # I love!
#' EarlGrey_latte_Twinings()
#' Ceylon_latte_Stassen()
#' chai_latte_Twinings()
#' 
#' # I dont love much..
#' Darjeeling_latte_Twinings()
#' 
#' 
#' @name teaLatte
#' @aliases teaLatte-class
#' @export
setClass(Class = 'teaLatte', contains = 'recipe', prototype = prototype(
  alias_class = '\u5976\u8336',
  drymilk = 35, 
  brownSugar_tsp = .25,
  boilingWater = 250, 
  instruction = c(
    'Add half of boiling water to powders, whisk until froth',
    'Add rest of boiling water, whisk',
    'Add tea bag'
  )
))



#' @rdname teaLatte
#' @export
EarlGrey_latte_Twinings <- function() new(Class = 'teaLatte', teabag = c(Twinings_strongEarlGrey = 1), pros = 'I like!')

#' @rdname teaLatte
#' @export
Ceylon_latte_Stassen <- function() new(Class = 'teaLatte', teabag = c(Stassen_Ceylon = 1), pros = 'I like!')

#' @rdname teaLatte
#' @export
chai_latte_Twinings <- function() new(Class = 'teaLatte', teabag = c(Twinings_ultraChai = 1), pros = 'I like!')






#' @title \linkS4class{soytea} Recipes
#' 
#' @description
#' Soymilk with black tea.
#' 
#' Soymilk coagulate in tea.  I don't plan to do this anymore.
#' 
#' Fresh soymilk not hot enough, so need two bag of tea ?
#' 
#' @examples
#' EarlGrey_soytea()
#' Ceylon_soytea()
#' 
#' @name soytea
#' @aliases soytea-class
#' @export
setClass(Class = 'soytea', contains = 'recipe', prototype = prototype(
  alias_class = '\u8c46\u6d46\u8336',
  flavor = c(soymilk = 600),
  brownSugar_Tbsp = 1, # perfect sweetness!!! 2024 Fall
  note = c('Freshly brewed soy milk', 'Soak in Stanley 20oz quencher (covered) for 1hr+')
))

#' @rdname soytea
#' @export
EarlGrey_soytea <- function() new(Class = 'soytea', teabag = c(Twinings_strongEarlGrey = 4), date = as.Date('2024-09-15'), pros = 'I love!')

#' @rdname soytea
#' @export
Ceylon_soytea <- function() new(Class = 'soytea', teabag = c(Stassen_Ceylon = 4), date = as.Date('2024-09-15'), pros = 'I like')




