

#' @title Other People's Bundt Recipes
#' 
#' @description ..
#' 
#' @name Bundt_other
NULL

Bundt_OLD2 <- \() new(
  Class = 'recipe',
  class2 = 'Bundt',
  flour = c(Wegmans_pastryFlr = 400),
  sugar = 20,
  dairy = c(
    Carnation_drymilk = 50,
    Wegmans_heavyCream = 160
  ),
  bakingPowder_tsp = .75,
  water = 100, 
  egg_pc = 2#,
  #instruction (legacy) = c(
  #  'Grease a Bundt pan with vegetable oil', # Dust with flavored powder (if applicable) or flour
  #  'KitchenAid stand mixer: whisk together all liquid',
  #  'Manually whisk together dry ingredients',
  #  'Manually combine liquid and dry mixture. Rest for 30min', 
  #  'Pour into Bundt pan (slightly dry wide ribbon)', 
  #  # 'Robam CT763: bake (foil cover) at 350\u00b0F for 55min', # coloring too dark
  #  'Robam CT763: Steam Bake (foil cover) at 320\u00b0F for 55min',
  #  'Let cool in the pan for 20min. Invert onto a wire rack and cool completely'
  #),
  #note (legacy) = c(
  #  'One (1) recipe good for 6-cup Nordic Ware Bundt pan'
  #)
)

Bundt_OLD1 <- \() new(
  Class = 'recipe', class2 = 'Bundt', flavor = 'OLD',
  flour = c(Wegmans_pastryFlr = 210),
  #water = 160, # a little too wet
  water = 150,
  sugar = 15,
  bakingPowder_tsp = 1,
  dairy = c(Carnation_drymilk = 80), # tried 50g
  oil = c(Wegmans_vegetable_oil = 100), # a little wet inside
  dairy = c(Daisy_sourCream = 110),
  egg_pc = 2,
  #instruction (legacy) = c(
  #  'Grease a Bundt pan with vegetable oil', # Dust with flavored powder (if applicable) or flour
  #  'KitchenAid stand mixer: whisk together all liquid',
  #  'Manually whisk together dry ingredients',
  #  'Manually combine liquid and dry mixture. Rest for 30min', 
  #  'Pour into Bundt pan (slightly dry wide ribbon)', 
  #  # 'Robam CT763: bake (foil cover) at 350\u00b0F for 55min', # coloring too dark
  #  'Robam CT763: Steam Bake (foil cover) at 320\u00b0F for 55min',
  #  'Let cool in the pan for 20min. Invert onto a wire rack and cool completely'
  #),
  #note (legacy) = c(
  #  'One (1) recipe good for 6-cup Nordic Ware Bundt pan'
  #),
  review = 'try')






#' @rdname Bundt_other
#' @export
PreppyKitchen_chocolate_Bundt <- \() new(
  Class = 'recipe', flavor = 'Chocolate Bundt',
  water40 = 360,
  cocoa_cup = c(Ghirardelli_cocoa = 1.25),
  flour = c(KingArthur_allPurposeFlr = 420),
  sugar_cup = c(Domino_granulated = 2.5),
  NaHCO3_tsp = 2.5,
  salt_tsp = 1,
  dairy = c(Kerrygold_butter = 213),
  dairy_cup = c(Daisy_sourCream = 1),
  oil_tsp = c(Wegmans_vegetable_oil = 24),
  egg_pc = 4,
  vanilla_tsp = 1,
  preppykitchen = c('_MqLza3bgbw' = 'chocolate-bundt-cake'))


#' @rdname Bundt_other
#' @export
PreppyKitchen_Bundt <- \() new(
  Class = 'recipe', flavor = 'Bundt',
  flour = c(KingArthur_allPurposeFlr = 360),
  bakingPowder_tsp = 1,
  NaHCO3_tsp = .5,
  salt_tsp = 1.5,
  dairy_brick = c(
    Philadelphia_creamCheese = 1,
    Kerrygold_butter = 1
  ),
  sugar_cup = c(Domino_granulated = 2),
  egg_pc = 6,
  vanilla_Tbsp = c(NielsenMassey_vanilla = 1),
  dairy_cup = c(Wegmans_whole_milk = 1),
  preppykitchen = c('x2W3j23xSKs' = 'vanilla-bundt-cake'))
    


