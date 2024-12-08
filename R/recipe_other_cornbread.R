
#' @title Other Cornbread Recipes
#' 
#' @name cornbread_other
#' @keywords internal
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
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 268359L,
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
  milk_cup = c(Horizon_wholeDHA = 1.5),
  butter_cup = c(LandOLakes = 1/4),
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
Albertsons_cornbread <- function() new(
  Class = 'recipe', alias_flavor = 'Cornbread',
  acme = 117010060L,
  butter_cup = 1/4,
  cornmeal_cup = c(Albertsons_yellowCorn = 1),
  flour_cup = 1,
  bakingPowder_tsp = 4,
  sugar_cup = c(Domino_granulated = 1/4),
  salt_tsp = 1,
  milk_cup = 1,
  egg_pc = 2)


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

#' @rdname cornbread_other
#' @export
Fleischmanns_cornbread <- function() new(
  Class = 'recipe',
  alias_flavor = 'Cornbread',
  author = Fleischmanns_cornbreadMix()@brand,
  flavor = c(Fleischmanns_cornbreadMix = 425),
  milk_cup = 2/3,
  butter_cup = 1/3,
  egg_pc = 1,
  portion = c('standard muffin' = 60))


