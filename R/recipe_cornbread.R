
#' @title \linkS4class{cornbread} Recipes
#' 
#' @description
#' ..
#' 
#' @details
#' Do not add dry milk.  I like the very fresh corn flavor.
#' 
#' Fat 11% (cooked). Do not increase.  Trace of fat on plate!
#' 
#' @examples
#' cornbread()
#' 
#' diagnose_(
#'  cornbread,
#'  subtract(PreppyKitchen_cornbread, sugar = 33),
#'  subtract(BethanyWeathersby_cornbread, sugar = 110),
#'  subtract(bluegirl_cornbread, sugar = 110),
#'  subtract(JoshuaWeissman_cornbread, sugar = 64, brownSugar = 29)
#' )
#' @name cornbread
#' @aliases cornbread-class
#' @export
setClass(Class = 'cornbread', contains = 'recipe', prototype = prototype(
  alias_class = 'Cornbread\U1f33d',
  breadFlour = c(KingArthur_bread = 160), # King Arthur confirmed!!
  cornmeal = 320, # perfect!! (flour:cornmeal = 1:3 too crumbly)
  sugar = 50,
  
  #bakingPowder_tsp = 1.5, # cracks like crazy! but tastes super good!
  bakingPowder_tsp = 1, # should be perfect!
  
  egg_pc = 2,
  
  # heavy cream: no longer fresh, after removing clogged butter
  # confirm recipe with fresh!!! heavy cream in future
  heavyCream = 340, water = 270, 
  waterLost = 45, # to confirm
  
  portion = c(
    'Trudeau loaf pan (7.5x3.75, 8.5x4.5)' = 600
  ),
  instruction = c(
    'Whisk everything except baking powder', # NEW practice!!
    'Soak batter, covered in mixing bowl, in fridge 6hr+ or overnight',
    'Whisk baking powder into chilled batter', # NEW practice!!
    'Transfer to mold. Bake chilled batter directly'
  ),
  RobamCT763 = RobamCT763(
    program = 'Steam Bake',
    fahrenheit = 275, 
    minute = c(
      'Trudeau loaf pan (half recipe)' = 40
    )
  )
))


#' @rdname cornbread
#' @export
cornbread <- function() new(Class = 'cornbread', pros = 'I love!!')










#' @rdname cornbread
#' @export
BethanyWeathersby_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread', author = 'Bethany Weathersby',
  butter = 227/2, 
  sugar_cup = c(Domino_granulated = 2/3),
  egg_pc = 2,
  buttermilk_cup = 1, 
  NaHCO3_tsp = 1/2, 
  cornmeal_cup = 1,
  flour_cup = 1,
  salt_tsp = 1/4,
  allrecipes = '76594/grandmothers-buttermilk-cornbread/')


#' @rdname cornbread
#' @export
bluegirl_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread', author = 'bluegirl',
  flour_cup = 1,
  cornmeal_cup = 1,
  sugar_cup = c(Domino_granulated = 2/3),
  bakingPowder_tsp = 3.5,
  salt_tsp = 1,
  milk_cup = 1,
  oil_cup = c(Wegmans_vegetable = 1/3),
  egg_pc = 1,
  allrecipes = '17891/golden-sweet-cornbread/')

#' @rdname cornbread
#' @export
PreppyKitchen_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread',
  cornmeal_cup = 1.5, # this is not 255g,
  flour_cup = 3/4,
  sugar_cup = c(Domino_granulated = 1/4), # this is not 30g
  bakingPowder_tsp = 2,
  salt_tsp = 1,
  milk_cup = 1.5,
  butter = 56,
  egg_pc = 1,
  oil_Tbsp = c(Wegmans_vegetable = 1),
  preppykitchen = c(
    'vQM-SFKSqcg' = 'cornbread-recipe' # youtube = '16YfyByvLZg' same recipe!
  ))

#' @rdname cornbread
#' @export
JoshuaWeissman_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread', 
  butter = 227/2,
  # 1/2 bunch fresh sage 
  # 1/2 bunch fresh thyme 
  flour_cup = 1.25, # this is not 185g though..
  sugar_cup = c(Domino_granulated = 1/3),
  brownSugar = 50,
  salt = 6,
  bakingPowder_Tbsp = 1,
  cornmeal_cup = 1.25, # this is not 175g
  egg_pc = 2,
  buttermilk_cup = 1.5,
  joshuaweissman = c('et5OlhhD2Bo' = 'homemade-cornbread')
)



