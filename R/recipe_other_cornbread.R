


Wegmans_cornbread_recipe <- \() new(
  Class = 'recipe', wegmans = '3044',
  flavor = 'Cornbread',
  #Wegmans Avocado Oil Cooking Spray
  grain_cup = c(IndianHead_yellow_cornmeal = 3),
  bakingPowder_Tbsp = c(Wegmans_bakingPowder = 2),
  Na2CO3_Tbsp = 1/2,
  salt_Tbsp = 1/2,
  sugar_cup = c(Domino_granulated = 2/3),
  misc = c(Wegmans_creamCorn = 418*2), #2 cans (14.75 oz each)
  dairy = c(Daisy_sourCream = 453.6),
  egg_pc = 6,
  oil_cup = c(Wegmans_avocado_oil = 1/2)
)




BethanyWeathersby_cornbread <- \() new(
  Class = 'recipe', flavor = 'Cornbread', author = 'Bethany Weathersby',
  sugar_cup = c(Domino_granulated = 2/3),
  egg_pc = 2,
  dairy_cup = c(Kerrygold_butter = 1/2,
                OakFarms_buttermilk = 1), 
  NaHCO3_tsp = 1/2, 
  grain_cup = c(Albertsons_yellow_cornmeal = 1),
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  salt_tsp = 1/4,
  allrecipes = '76594/grandmothers-buttermilk-cornbread/')



bluegirl_cornbread <- \() new(
  Class = 'recipe', flavor = 'Cornbread', author = 'bluegirl',
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  grain_cup = c(Albertsons_yellow_cornmeal = 1),
  sugar_cup = c(Domino_granulated = 2/3),
  bakingPowder_tsp = 3.5,
  salt_tsp = 1,
  dairy_cup = c(Wegmans_whole_milk = 1),
  oil_cup = c(Wegmans_vegetable_oil = 1/3),
  egg_pc = 1,
  allrecipes = '17891/golden-sweet-cornbread/')


PreppyKitchen_cornbread <- \() new(
  Class = 'recipe', flavor = 'Cornbread',
  grain = c(Quaker_yellow_cornmeal = 255), # 1.5 cup is not 255g
  flour_cup = c(KingArthur_allPurposeFlr = 3/4),
  sugar_cup = c(Domino_granulated = 1/4), # this is not 30g
  bakingPowder_tsp = 2,
  salt_tsp = 1,
  dairy_cup = c(
    LandOLakes_butter = 1/4,
    Horizon_wholeDHA_milk = 1.5
  ),
  egg_pc = 1,
  oil_Tbsp = c(Wesson_soy_oil = 1),
  preppykitchen = c(
    'vQM-SFKSqcg' = 'cornbread-recipe' # youtube = '16YfyByvLZg' same recipe!
  ))

Quaker_cornbread <- \() new(
  Class = 'recipe', flavor = 'Cornbread',
  quakeroats = 'golden-cornbread',
  oil_Tbsp = c(Wegmans_vegetable_oil = 2),
  grain_cup = c(Quaker_yellow_cornmeal = 1.5),
  flour_Tbsp = c(KingArthur_allPurposeFlr = 3),
  salt_tsp = 1,
  NaHCO3_tsp = 1,
  dairy_cup = c(OakFarms_buttermilk = 2),
  egg_pc = 1)


JoshuaWeissman_cornbread <- \() new(
  Class = 'recipe', flavor = 'Cornbread', 
  # 1/2 bunch fresh sage 
  # 1/2 bunch fresh thyme 
  flour_cup = c(KingArthur_allPurposeFlr = 1.25), # this is not 185g though..
  sugar_cup = c(Domino_granulated = 1/3),
  sugar = c(Domino_darkBrown = 50),
  salt = 6,
  bakingPowder_Tbsp = 1,
  grain_cup = c(Albertsons_yellow_cornmeal = 1.25), # this is not 175g
  egg_pc = 2,
  dairy_cup = c(Kerrygold_butter = 1/2,
                OakFarms_buttermilk = 1.5),
  joshuaweissman = c('et5OlhhD2Bo' = 'homemade-cornbread')
)



Jiffy_cornMuffin <- \() new(
  Class = 'recipe',
  flavor = 'Corn Muffin', 
  author = 'Jiffy', 
  url = 'https://www.jiffymix.com/recipe/air-fryer-corn-muffins/',
  misc = c(Jiffy_cornMuffinMix = 240),
  egg_pc = 1,
  dairy_cup = c(Wegmans_whole_milk = 1/3))



WholeFoods365_cornbread <- \() new(
  Class = 'recipe',
  flavor = 'Cornbread',
  author = WholeFoods365_cornbreadMix()@brand,
  misc = c(WholeFoods365_cornbreadMix = 425),
  egg_pc = 2,
  dairy_cup = c(Wegmans_whole_milk = 1),
  oil_cup = c(Wegmans_vegetable_oil = .5))




Stonewall_cornbread <- \() new(
  Class = 'recipe',
  flavor = 'Cornbread',
  author = Stonewall_cornbreadMix()@brand, 
  misc = c(Stonewall_cornbreadMix = 453.6),
  egg_pc = 1,
  dairy_cup = c(Wegmans_whole_milk = 1),
  oil_cup = c(Wegmans_vegetable_oil = 1/3))



TraderJoes_cornbread <- \() new(
  Class = 'recipe',
  flavor = 'Cornbread',
  #author = 'Trader Joes', # recipe on packaging
  author = TraderJoes_cornbreadMix()@brand, 
  misc = c(TraderJoes_cornbreadMix = 425),
  egg_pc = 1,
  dairy_cup = c(Wegmans_whole_milk = 3/4),
  oil_cup = c(Wegmans_vegetable_oil = 1/2))



Krusteaz_southern_cornbread <- \() new(
  Class = 'recipe',
  flavor = 'Cornbread',
  author = Krusteaz_southern_cornbreadMix()@brand,
  misc = c(Krusteaz_southern_cornbreadMix = 326), # 11.5 oz
  dairy_cup = c(Kerrygold_butter = 1/3,
                OakFarms_buttermilk = 1),
  egg_pc = 2)

# check out those fancier recipes https://www.krusteaz.com/recipes/cornbread/




BobsRedMill_cornbread <- \() new(
  Class = 'recipe',
  flavor = 'Cornbread',
  author = BobsRedMill_cornbreadMix()@brand,
  misc = c(BobsRedMill_cornbreadMix = 680),
  water_cup = 2.5,
  egg_pc = 2,
  oil_cup = c(Wegmans_vegetable_oil = 1/2))


Fleischmanns_cornbread <- \() new(
  Class = 'recipe',
  flavor = 'Cornbread',
  author = Fleischmanns_cornbreadMix()@brand,
  misc = c(Fleischmanns_cornbreadMix = 425),
  dairy_cup = c(Kerrygold_butter = 1/3,
                Wegmans_whole_milk = 2/3),
  egg_pc = 1,
  portion = c('standard muffin' = 60))


