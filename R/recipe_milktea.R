

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
setClass(Class = 'milktea', contains = 'recipe', prototype = prototype(
  alias_class = '\u5976\u8336',
  drymilk = 40, 
  brownSugar_tsp = 2, # 1tsp too bland; 1Tbsp too sweet
  water95 = 560, 
  instruction = c(
    'Stanley 20oz quencher',
    'Add half of boiling water to powders, whisk until froth',
    'Add rest of boiling water, whisk',
    'Add tea bags',
    'Soak (covered) for 1hr+'
  )
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









#' @title \linkS4class{soytea} Recipes
#' 
#' @description
#' Soymilk with black tea.
#' 
#' @examples
#' EarlGrey_soytea()
#' chai_soytea()
#' 
#' @name soytea
#' @aliases soytea-class
#' @export
setClass(Class = 'soytea', contains = 'recipe', prototype = prototype(
  alias_class = '\u8c46\u6d46\u8336',
  #homemade = c(soymilk = 600), # old
  homemade = c(thick_soymilk = 600), # old
  brownSugar_Tbsp = 1, # perfect sweetness!!! 2024 Fall
  note = c(
    'Freshly brewed soy milk', 
    paste('Soak in', style_hyperlink(text = 'Stanley 20oz quencher', url = 'https://www.stanley1913.com/products/adventure-quencher-travel-tumbler-20-oz'), '(covered) for 1hr+')
  )
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


