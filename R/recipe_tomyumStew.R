
#' @title Seafood Stew \linkS4class{tomyumStew} Recipes
#' 
#' @description
#' ..
#' 
#' @name tomyumStew
#' @aliases tomyumStew-class
#' @export
setClass(Class = 'tomyumStew', contains = 'recipe', prototype = prototype(
  alias_class = '\u94f8\u94c1\u9505\u7116\u6d77\u9c9c',
  sauce = c(
    Siam_tomyum = 16,
    LeeKumKee_coconutCurry = 4,
    LeeKumKee_5spiceMarinade = 15
  )
))


#' @rdname tomyumStew
#' @export
tomyumStew <- function() new(
  Class = 'tomyumStew',
  liqueur = c(Wegmans_Marsala = 25),
  water = 20,
  date = as.Date('2024-08-13'),
  pros = 'I love!!')





tomyumStew_Sherry <- function() new(
  Class = 'tomyumStew',
  liqueur = c(Wegmans_Sherry = 20),
  water = 25,
  date = as.Date('2024-05-26'),
  pros = 'also nice')






tomyumStew_redWegmans <- function() new(
  Class = 'tomyumStew',
  liqueur = c(Wegmans_redCookingWine = 30),
  sugar_tsp = 1.5,
  water = 20,
  review = 'try')
  #date = as.Date('2024-05-26'),
  #pros = 'also nice')

tomyumStew_whiteWegmans <- function() new(
  Class = 'tomyumStew',
  liqueur = c(Wegmans_whiteCookingWine = 25),
  water = 20,
  sugar_tsp = 1,
  review = 'try')
