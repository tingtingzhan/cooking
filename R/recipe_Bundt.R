

#' @title \linkS4class{Bundt} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' Bundt()
#' #cocoa_Bundt()
#' #matcha_Bundt()
#' 
#' @name Bundt
#' @aliases Bundt-class
#' @export
setClass(Class = 'Bundt', contains = 'recipe', prototype = prototype(
  alias_class = 'Bundt',
  pastryFlour = 400,
  sugar = 25,
  drymilk = 55,
  bakingPowder_tsp = .75,
  heavyCream = 300,
  water = 270, waterLost = 40, 
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
))


#' @rdname Bundt
#' @export
Bundt <- function() new(Class = 'Bundt')

#' @rdname Bundt
#' @export
Bundt_OLD <- function() new(
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


#' @rdname Bundt
#' @export
cocoa_Bundt <- function() new(
  Class = 'Bundt',
  cocoa = 60,
  sugar = 250,
  butter = 113, 
  NaHCO3_tsp = 1, bakingPowder_tsp = numeric(), # regular cocoa powder contains acid
  salt_tsp = .5#, vanilla_tsp = 1.5
)


#' @rdname Bundt
#' @export
matcha_Bundt <- function() new(
  Class = 'Bundt',
  #matcha = 35, sugar = 35 # a little too bitter
  matcha_Tbsp = 3, sugar = 35,
  review = 'try again'
)


#' @rdname Bundt
#' @export
EarlGrey_Bundt <- function() new(
  Class = 'Bundt', 
  tealoose = c(Twinings_EarlGrey = 35), sugar = 50
)



PreppyKitchen_chocolate_Bundt <- function() new(
  Class = 'recipe', alias_flavor = 'Chocolate Bundt',
  water40 = 360,
  cocoa = 125,
  flour = 420,
  sugar = 500,
  NaHCO3_tsp = 2.5,
  salt_tsp = 1,
  butter = 213,
  sourCream = 220,
  oil_tsp = c(Wegmans_vegetable = 24),
  egg_pc = 4,
  vanilla_tsp = 1,
  preppykitchen = c('_MqLza3bgbw' = 'chocolate-bundt-cake'))


PreppyKitchen_Bundt <- function() new(
  Class = 'recipe', alias_flavor = 'Bundt',
  flour = 360,
  bakingPowder_tsp = 1,
  NaHCO3_tsp = .5,
  salt_tsp = 1.5,
  butter = 227,
  creamCheese = 227,
  sugar = 400,
  egg_pc = 6,
  vanilla_Tbsp = 1,
  milk = 250,
  preppykitchen = c('x2W3j23xSKs' = 'vanilla-bundt-cake'))
    


