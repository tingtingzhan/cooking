

#' @title \linkS4class{eggnog} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' 
#' eggnog()
#' 
#' diagnose(
#'  eggnog,
#'  subtract(JeanPierre_eggnog, sugar = 25),
#'  subtract(PreppyKitchen_eggnog, sugar = 130)
#' )
#' 
#' @name eggnog
#' @aliases eggnog-class
#' @export
setClass(Class = 'eggnog', contains = 'recipe', prototype = prototype(
  alias_class = '\u86cb\u5976\u9152'
))

#' @rdname eggnog
#' @export
eggnog <- function() new(
  Class = 'eggnog', 
  water = 110, drymilk = 15, # milk = 160,
  heavyCream = 80,
  egg_pc = 2,
  sugar = 25,
  # cinnamon_tsp = 1/4/3,
  # nutmeg_tsp = 1/4/3, # not written yet
  # salt_tsp = 1/8/3,
  vanilla_tsp = 1,
  liqueur_tsp = c(Kahlua_coffee = 8),
  # 2 ounces Bourbon
  # 2 ounces Rum
  review = 'try'
)



#' @rdname eggnog
#' @export
JeanPierre_eggnog <- function() new(
  Class = 'recipe',
  author = 'Chef Jean-Pierre', alias_flavor = 'Eggnog',
  milk_cup = 2,
  heavyCream_cup = 1,
  egg_pc = 6,
  sugar_cup = c(Domino_granulated = 2/3),
  cinnamon_tsp = 1/4,
  # nutmeg_tsp = 1/4, # not written yet
  salt_tsp = 1/8, # 1 pinch of Salt
  vanilla_Tbsp = 1, # Tahitian Vanilla
  liqueur_Tbsp = c(Kahlua_coffee = 8),
  # 2 ounces Bourbon
  # 2 ounces Rum
  youtube = 'N_2vR1bBUdE',
  url = 'https://chefjeanpierre.com/recipes/eggnog/')


#' @rdname eggnog
#' @export
PreppyKitchen_eggnog <- function() new(
  Class = 'recipe', alias_flavor = 'Eggnog',
  egg_pc = 6,
  sugar = 200, # 1 cup granulated sugar (200g)
  milk_cup = 1.5, # 1 to 2 cups whole milk (240-480ml)
  heavyCream_cup = 1,
  # nutmeg_tsp = 1/4, # not written yet
  vanilla_Tbsp = 1, 
  liqueur_cup = c(Kahlua_coffee = 1), # 1 cup bourbon (brandy and rum work as well) (240ml)
  #▢ Cinnamon for serving
  preppykitchen = c('dUZ7tX8WIL8' = 'eggnog-cocktail')
)
