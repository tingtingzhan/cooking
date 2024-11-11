
#' @title \linkS4class{cornbreadMix} Recipes
#' 
#' @name cornbreadMix
#' @aliases cornbreadMix-class
#' @export
setClass(Class = 'cornbreadMix', contains = 'recipe', prototype = prototype(
  alias_class = 'Cornbread Mix',
  breadFlour = c(KingArthur_bread = 50), 
  cornmeal = c(Albertsons_yellowCorn = 320),
  sugar = 45, # maintain final product 5.5% sugar
  bakingPowder_tsp = 1/4 # cracks just right
))


#' @rdname cornbreadMix
#' @export
cornbreadMix <- function() new(
  Class = 'cornbreadMix',
  note = 'Do NOT pre-mix. Need to soak cornmeal alone in boiling water!'
)



#' @title \linkS4class{cornbread} Recipes
#' 
#' @description
#' ..
#' 
#' 
#' @examples
#' cornbread()
#' 
#' @name cornbread
#' @aliases cornbread-class
#' @export
setClass(
  Class = 'cornbread', 
  contains = 'cornbreadMix', # simplest solution!!!
  prototype = prototype(
    alias_class = 'Cornbread',
    egg_pc = 2,
    
    #heavyCream = 200, water90 = 320, # slightly too wet and greasy
    # I choose to decrease water, instead of increase bread flour
    
    heavyCream = 175, water90 = 320, # almost perfect!!!
    
    # waterLost = 45, # to confirm
    
    portion = c(
      'Staub deep skillet, 8.5in' = 1000
    ),
    instruction = c(
      'Mix cornmeal with boiling water. Let dough cool to 50C/120F',
      'Whisk in other ingredients',
      'Transfer to sizzling hot skillet (with cooking spray)'
    ),
    RobamCT763 = RobamCT763(
      recipe_pc = 1,
      treatment = c(
        'Preheat Staub deep skillet, 8.5in, for 10min'
      ),
      program = 'Steam Bake',
      # fahrenheit = 350, minute = 25, # crust under baked, center a little too wet
      # cooling = 'Cool down the whole skillet on a rack'
      fahrenheit = 375, minute = 25, # try next time
      cooling = 'Flip skillet to release. Cool on a rack'
    )
  )
)


#' @rdname cornbread
#' @export
cornbread <- function() new(
  Class = 'cornbread', 
  date = as.Date('2024-11-11'),
  pros = c(
    'cornmeal to boiling water 1:1, dough soft and bouncy',
    'heavy cream is much easier to work with than butter',
    'sugar 5.5% tastes better than 5%'
  ))

# crust on top is nice!
# crust on bottom needs to be improved
# .. pre-heat skillet for 5min
# .. next time try: pre-heat skillet for 10min
# next time also: use boiling water with corn meal, skip soaking overnight


#' @title Other Cornbread Recipes
#' 
#' @examples
#' xs = list(
#'  cornbread,
#'  subtract(PreppyKitchen_cornbread, sugar = 17),
#'  subtract(BethanyWeathersby_cornbread, sugar = 105),
#'  subtract(bluegirl_cornbread, sugar = 108),
#'  subtract(JoshuaWeissman_cornbread, sugar = 64, brownSugar = 23),
#'  subtract(nutrition(Jiffy_cornMuffin), sugar = 32),
#'  subtract(Wegmans_cornbread_recipe, sugar = 88),
#'  subtract(Wegmans_cornbread, sugar = 10.5),
#'  subtract(nutrition(WholeFoods365_cornbread), sugar = 64),
#'  subtract(nutrition(Stonewall_cornbread), sugar = 117),
#'  subtract(nutrition(TraderJoes_cornbread), sugar = 108),
#'  subtract(nutrition(Krusteaz_southern_cornbread), sugar = 23),
#'  subtract(nutrition(BobsRedMill_cornbread), sugar = 7),
#'  Quaker_cornbread
#' )
#' nutrition_(dots = xs)
#' diagnose_(dots = xs)
#' @name cornbread_other
#' @export
Wegmans_cornbread_recipe <- function() new(
  Class = 'recipe', wegmans = '3044',
  alias_flavor = 'Cornbread',
  #Wegmans Avocado Oil Cooking Spray
  cornmeal_cup = c(IndianHead_yellowCorn = 3),
  bakingPowder_Tbsp = c(Wegmans_bakingPowder = 2),
  Na2CO3_Tbsp = 1/2,
  salt_Tbsp = 1/2,
  sugar_cup = c(Domino_granulated = 2/3),
  flavor = c(Wegmans_creamCorn = 418*2), #2 cans (14.75 oz each) 
  sourCream = 453.6, # 1 container (16 oz) Wegmans Organic Sour Cream
  egg_pc = 6,
  oil_cup = c(Wegmans_avocado_oil = 1/2)
)

#' @rdname cornbread_other
#' @export
Wegmans_cornbread <- function() new(
  Class = 'nutrition', wegmans = 268359L,
  name = 'Cornbread', usd = 9.00/9,
  servingGram = 57, calorie = 240,
  fat = 10, cholesterol = .045, sodium = .2,
  carbohydrate = 33, addedSugar = 13, protein = 4)




#' @rdname cornbread_other
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


#' @rdname cornbread_other
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

#' @rdname cornbread_other
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

#' @rdname cornbread_other
#' @export
Quaker_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread',
  quakeroats = 'golden-cornbread',
  oil_Tbsp = c(Wegmans_vegetable_oil = 2),
  cornmeal_cup = c(Quaker_yellowCorn = 1.5),
  flour_Tbsp = 3,
  salt_tsp = 1,
  NaHCO3_tsp = 1,
  buttermilk_cup = 2,
  egg_pc = 1)


#' @rdname cornbread_other
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




#' @rdname cornbread_other
#' @export
Jiffy_cornMuffin <- function() new(
  Class = 'recipe',
  alias_flavor = 'Corn Muffin', 
  author = 'Jiffy', 
  url = 'https://www.jiffymix.com/recipe/air-fryer-corn-muffins/',
  flavor = c(Jiffy_cornMuffinMix = 240),
  egg_pc = 1,
  milk_cup = 1/3)


#' @rdname cornbread_other
#' @export
WholeFoods365_cornbread <- function() new(
  Class = 'recipe',
  alias_flavor = 'Cornbread',
  author = WholeFoods365_cornbreadMix()@brand,
  flavor = c(WholeFoods365_cornbreadMix = 425),
  egg_pc = 2,
  milk_cup = 1,
  oil_cup = c(Wegmans_vegetable_oil = .5))


#' @rdname cornbread_other
#' @export
Stonewall_cornbread <- function() new(
  Class = 'recipe',
  alias_flavor = 'Cornbread',
  author = Stonewall_cornbreadMix()@brand, 
  flavor = c(Stonewall_cornbreadMix = 453.6),
  egg_pc = 1,
  milk_cup = 1,
  oil_cup = c(Wegmans_vegetable_oil = 1/3))

#' @rdname cornbread_other
#' @export
TraderJoes_cornbread <- function() new(
  Class = 'recipe',
  alias_flavor = 'Cornbread',
  #author = 'Trader Joes', # recipe on packaging
  author = TraderJoes_cornbreadMix()@brand, 
  flavor = c(TraderJoes_cornbreadMix = 425),
  egg_pc = 1,
  milk_cup = 3/4,
  oil_cup = c(Wegmans_vegetable_oil = 1/2))


#' @rdname cornbread_other
#' @export
Krusteaz_southern_cornbread <- function() new(
  Class = 'recipe',
  alias_flavor = 'Cornbread',
  author = Krusteaz_southern_cornbreadMix()@brand,
  flavor = c(Krusteaz_southern_cornbreadMix = 326), # 11.5 oz
  buttermilk_cup = 1,
  butter_cup = 1/3,
  egg_pc = 2)

# check out those fancier recipes https://www.krusteaz.com/recipes/cornbread/


#' @rdname cornbread_other
#' @export
BobsRedMill_cornbread <- function() new(
  Class = 'recipe',
  alias_flavor = 'Cornbread',
  author = BobsRedMill_cornbreadMix()@brand,
  flavor = c(BobsRedMill_cornbreadMix = 680),
  water_cup = 2.5,
  egg_pc = 2,
  oil_cup = c(Wegmans_vegetable_oil = 1/2))
