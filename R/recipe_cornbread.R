
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
#'  subtract(PreppyKitchen_cornbread, sugar = 14),
#'  subtract(BethanyWeathersby_cornbread, sugar = 116),
#'  subtract(bluegirl_cornbread, sugar = 118),
#'  subtract(JoshuaWeissman_cornbread, sugar = 70, brownSugar = 29)
#' )
#' 
#' 
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
  sugar = 200*2/3,
  egg_pc = 2,
  buttermilk_cup = 1, 
  NaHCO3_tsp = 1/2, 
  cornmeal = 120,
  flour = 120,
  salt_tsp = 1/4,
  allrecipes = '76594/grandmothers-buttermilk-cornbread/')


#' @rdname cornbread
#' @export
bluegirl_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread', author = 'bluegirl',
  flour = 120, 
  cornmeal = 120,
  sugar = 200*2/3,
  bakingPowder_tsp = 3.5,
  salt_tsp = 1,
  milk_cup = 1,
  oil_tsp = c(Wegmans_vegetable = 16), # ⅓ cup vegetable oil
  egg_pc = 1,
  allrecipes = '17891/golden-sweet-cornbread/')

#' @rdname cornbread
#' @export
PreppyKitchen_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread',
  cornmeal = 255,
  flour = 90,
  sugar = 30,
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
  Class = 'recipe', alias_flavor = 'Cornbread', author = 'Joshua Weissman',
  butter = 227/2,
  # 1/2 bunch fresh sage 
  # 1/2 bunch fresh thyme 
  flour = 185,
  sugar = 70,
  brownSugar = 50,
  salt = 6,
  bakingPowder_Tbsp = 1,
  cornmeal = 175,
  egg_pc = 2,
  buttermilk_cup = 1.5,
  youtube = 'et5OlhhD2Bo',
  url = 'https://www.joshuaweissman.com/post/homemade-cornbread'
)



