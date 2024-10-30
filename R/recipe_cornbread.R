
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
#' xs = list(
#'  cornbread,
#'  subtract(PreppyKitchen_cornbread, sugar = 25),
#'  subtract(BethanyWeathersby_cornbread, sugar = 110),
#'  subtract(bluegirl_cornbread, sugar = 110),
#'  subtract(JoshuaWeissman_cornbread, sugar = 64, brownSugar = 29),
#'  subtract(nutrition(Jiffy_cornMuffin), sugar = 33)
#' )
#' nutrition_(dots = xs)
#' diagnose_(dots = xs)
#' @name cornbread
#' @aliases cornbread-class
#' @export
setClass(Class = 'cornbread', contains = 'recipe', prototype = prototype(
  alias_class = 'Cornbread\U1f33d',
  
  breadFlour = c(KingArthur_bread = 160), cornmeal = 320,
  # flour:cornmeal = 1:3 too crumbly
  # do not change `flour:cornmeal=1:2`; I like the center to be soft 
  
  sugar = 50,
  
  #bakingPowder_tsp = 1.5, # cracks like crazy! but tastes super good!
  #bakingPowder_tsp = 1, # cracks like crazy
  bakingPowder_tsp = 1/2, # try next
  
  egg_pc = 2,
  
  # heavyCream = 340, water = 270, # a little too fat, 2023
  heavyCream = 260, water = 270, # try next
  waterLost = 45, # to confirm
  
  portion = c(
    # 'Trudeau loaf pan (7.5x3.75, 8.5x4.5)' = 600
    'Staub deep skillet, 8.5in' = 1000
  ),
  instruction = c(
    'Whisk all dry material, except baking powder',
    'Whisk in wet material',
    'Soak batter, covered in mixing bowl, in fridge 6hr+ or overnight',
    'Whisk baking powder into chilled batter', # NEW practice!!
    'Transfer to mold. Bake chilled batter directly'
  ),
  RobamCT763 = RobamCT763(
    treatment = 'Preheat Staub deep skillet, 8.5in',
    program = 'Steam Bake',
    # fahrenheit = 275, minute = c('Trudeau loaf pan (half recipe)' = 40)
    fahrenheit = 350, minute = 25 # preppy kitchen 425F (traditional oven)
  )
))


#' @rdname cornbread
#' @export
cornbread <- function() new(Class = 'cornbread', pros = 'I love!!')










#' @rdname cornbread
#' @export
BethanyWeathersby_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread', author = 'Bethany Weathersby',
  butter_cup = 1/2,
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
  cornmeal = c(Quaker_yellowCorn = 255), # 1.5 cup is not 255g
  flour_cup = 3/4,
  sugar_cup = c(Domino_granulated = 1/4), # this is not 30g
  bakingPowder_tsp = 2,
  salt_tsp = 1,
  milk_cup = c(Horizon_whole_milk_DHA = 1.5),
  butter_cup = c(LandOLakes_butter = 1/4),
  egg_pc = 1,
  oil_Tbsp = c(Wesson_soy = 1),
  preppykitchen = c(
    'vQM-SFKSqcg' = 'cornbread-recipe' # youtube = '16YfyByvLZg' same recipe!
  ))

#' @rdname cornbread
#' @export
JoshuaWeissman_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread', 
  butter_cup = 1/2,
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



Jiffy_cornMuffinMix <- function() new(
  Class = 'nutrition',
  brand = unclass(style_hyperlink(text = 'Jiffy\U1f1fa\U1f1f8', url = 'https://www.jiffymix.com/products/corn-muffin-mix/')),
  name = 'Corn Muffin Mix',
  servingGram = 78, servingCup = 1/2,
  calorie = 320,
  fat = 9, cholesterol = .01, sodium = .69,
  carbohydrate = 56, addedSugar = 15, protein = 4)

#' @rdname cornbread
#' @export
Jiffy_cornMuffin <- function() new(
  Class = 'recipe',
  alias_flavor = 'Corn Muffin', 
  author = 'Jiffy', 
  url = 'https://www.jiffymix.com/recipe/air-fryer-corn-muffins/',
  flavor = c(Jiffy_cornMuffinMix = 240),
  egg_pc = 1,
  milk_cup = 1/3
)
