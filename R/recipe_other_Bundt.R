

#' @title Other People's Bundt Recipes
#' 
#' @description ..
#' 
#' @name Bundt_other
NULL

Bundt_OLD2 <- function() new(
  Class = 'recipe',
  alias_class = 'Bundt',
  pastryFlour = 400,
  sugar = 20,
  drymilk = 50,
  bakingPowder_tsp = .75,
  heavyCream = 160,
  water = 100, 
  #waterLost = 40, 
  egg_pc = 2#,
  #instruction = c(
  #  'Grease a Bundt pan with vegetable oil', # Dust with flavored powder (if applicable) or flour
  #  'KitchenAid stand mixer: whisk together all liquid',
  #  'Manually whisk together dry ingredients',
  #  'Manually combine liquid and dry mixture. Rest for 30min', 
  #  'Pour into Bundt pan (slightly dry wide ribbon)', 
  #  # 'Robam CT763: bake (foil cover) at 350\u00b0F for 55min', # coloring too dark
  #  'Robam CT763: Steam Bake (foil cover) at 320\u00b0F for 55min',
  #  'Let cool in the pan for 20min. Invert onto a wire rack and cool completely'
  #),
  #note = c(
  #  'One (1) recipe good for 6-cup Nordic Ware Bundt pan'
  #)
)

Bundt_OLD1 <- function() new(
  Class = 'recipe', alias_class = 'Bundt', alias_flavor = 'OLD',
  pastryFlour = 210,
  #water = 160, waterLost = 60, # a little too wet
  water = 150, waterLost = 60, 
  sugar = 15,
  bakingPowder_tsp = 1,
  drymilk = 80, # tried 50g
  oil = c(Wegmans_vegetable = 100), # a little wet inside
  sourCream = 110,
  egg_pc = 2,
  instruction = c(
    'Grease a Bundt pan with vegetable oil', # Dust with flavored powder (if applicable) or flour
    'KitchenAid stand mixer: whisk together all liquid',
    'Manually whisk together dry ingredients',
    'Manually combine liquid and dry mixture. Rest for 30min', 
    'Pour into Bundt pan (slightly dry wide ribbon)', 
    # 'Robam CT763: bake (foil cover) at 350\u00b0F for 55min', # coloring too dark
    'Robam CT763: Steam Bake (foil cover) at 320\u00b0F for 55min',
    'Let cool in the pan for 20min. Invert onto a wire rack and cool completely'
  ),
  note = c(
    'One (1) recipe good for 6-cup Nordic Ware Bundt pan'
  ),
  review = 'try')






#' @rdname Bundt_other
#' @export
PreppyKitchen_chocolate_Bundt <- function() new(
  Class = 'recipe', alias_flavor = 'Chocolate Bundt',
  water40 = 360,
  cocoa_cup = c(Ghirardelli_cocoa = 1.25),
  flour = 420,
  sugar_cup = c(Domino_granulated = 2.5),
  NaHCO3_tsp = 2.5,
  salt_tsp = 1,
  butter = 213,
  sourCream_cup = 1,
  oil_tsp = c(Wegmans_vegetable = 24),
  egg_pc = 4,
  vanilla_tsp = 1,
  preppykitchen = c('_MqLza3bgbw' = 'chocolate-bundt-cake'))


#' @rdname Bundt_other
#' @export
PreppyKitchen_Bundt <- function() new(
  Class = 'recipe', alias_flavor = 'Bundt',
  flour = 360,
  bakingPowder_tsp = 1,
  NaHCO3_tsp = .5,
  salt_tsp = 1.5,
  butter = 227,
  creamCheese = c(Philadelphia_creamCheese = 227),
  sugar_cup = c(Domino_granulated = 2),
  egg_pc = 6,
  vanilla_Tbsp = c(NielsenMassey_vanilla = 1),
  milk_cup = 1,
  preppykitchen = c('x2W3j23xSKs' = 'vanilla-bundt-cake'))
    


