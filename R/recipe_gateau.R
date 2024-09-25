
# how is this different from \linkS4class{Bundt} ?
# Bundt should be dry-er ?



#' @title \linkS4class{gateau} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' cocoa_gateau()
#' matcha_gateau()
#' pumpkin_gateau()
#' 
#' diagnose_(
#'  cocoa_gateau,
#'  subtract(AddaPinch_chocolate_cake, sugar = 300),
#'  subtract(PreppyKitchen_chocolate_cake, sugar = 300)
#' )
#' 
#' diagnose_(
#'  matcha_gateau,
#'  subtract(DessertFor2_matcha_cake, sugar = 150)
#' )
#' 
#' diagnose_(
#'  pumpkin_gateau,
#'  subtract(Sallys_pumpkin_cake, sugar = 100, brownSugar = 90)
#' )
#' 
#' 
#' @name gateau
#' @aliases gateau-class
#' @export
setClass(Class = 'gateau', contains = 'recipe', prototype = prototype(
  alias_class = 'Ga\u0302teau', # 'G\u00e2teau' # ??
  pastryFlour = 120, #flour = 120,
  heavyCream = 150,
  egg_pc = 1,
  bakingPowder_tsp = .5,
  water = 110, # try
  waterLost = 50, # re-confirm!!
  instruction = c(
    'Steam bake, 275F/50+15min, Trudeau loaf pan' # testing
  )
))


#' @rdname gateau
#' @export
cocoa_gateau <- function() new(
  Class = 'gateau',
  cocoa_tsp = c(Navitas_cacao = 14), # 6%, next try
  coffee_tsp = 1,
  sugar = 55,
  review = 'try')

cocoa_gateau_FAIL <- function() new(
  Class = 'recipe',
  alias_class = 'Ga\u0302teau', # 'G\u00e2teau' # ??
  
  breadFlour = 120, #flour = 120,
  # cannot use bread flour!  Contains too much water haha
  
  heavyCream = 180,
  egg_pc = 1,
  bakingPowder_tsp = .5,
  water = 165, # still very dry # boilingWater?
  # waterLost = 35, # 50 min
  waterLost = 50, # 65min, need to reconfirm!! (I ate a piece already!) 
  instruction = c(
    'Steam bake, 275F/50+15min, Trudeau loaf pan' # testing
  ),
  
  cocoa = c(Navitas_cacao = 30), # 5% cocoa overall, already quite good
  #cocoa_tsp = c(Navitas_cacao = 24), # 8.3%, next try
  coffee_tsp = 1, # 2/1000 overall
  sugar = 62,

  review = 'try')

#' @rdname gateau
#' @export
blackCocoa_gateau <- function() new(
  Class = 'gateau',
  cocoa = c(KingArthur_blackCocoa = 30), # 5% cocoa overall, not enough
  coffee_tsp = 1, # 2/1000 overall
  sugar = 62,
  review = 'try')


#' @rdname gateau
#' @export
matcha_gateau <- function() new(
  Class = 'gateau',
  matcha_Tbsp = c(Sencha_everyday_matcha = 3),
  drymilk = 30,
  sugar = 47,
  review = 'try')


#' @rdname gateau
#' @export
pumpkin_gateau <- function() new(
  Class = 'gateau',
  pumpkin = 290, # (125+160*.577)/.75
  butter = 50, # 160/3
  water = numeric(),
  heavyCream = numeric(),
  brownSugar = 45,
  review = 'try')




#' @rdname gateau
#' @export
AddaPinch_chocolate_cake <- function() new(
  Class = 'recipe', author = 'Add-A-Pinch', alias_flavor = 'Chocolate Cake',
  url = 'https://addapinch.com/the-best-chocolate-cake-recipe-ever/',
  flour = 240, sugar = 396,
  cocoa = 63, coffee = 2.3,
  bakingPowder_tsp = 2, NaHCO3_tsp = 1.5, salt = 2.8,
  milk = 227, egg_pc = 2,
  oil = c(Wegmans_vegetable = 99),
  vanilla_tsp = 2,
  boilingWater = 227)


#' @rdname gateau
#' @export
PreppyKitchen_chocolate_cake <- function() new(
  Class = 'recipe', alias_flavor = 'Chocolate Cake',
  flour = 240, sugar = 400,
  cocoa = 50,
  bakingPowder_tsp = 1.5, NaHCO3_tsp = 1.5, salt_tsp = 1/4, # ½ teaspoon kosher salt
  milk = 250, egg_pc = 2,
  oil = c(Wegmans_vegetable = 14*8), # ½ cup vegetable oil (180mL)
  vanilla_Tbsp = 1,
  boilingWater = 240,
  preppykitchen = c('vI5w-fK25w4' = 'ultimate-chocolate-cake'))

#' @rdname gateau
#' @export
DessertFor2_matcha_cake <- function() new(
  Class = 'recipe', author = 'DessertFor2', alias_flavor = 'Matcha Cake',
  butter = 99,
  sugar = 200,
  egg_pc = 2,
  vanilla_tsp = 1,
  matcha_tsp = 1.5*3,
  flour = 120,
  bakingPowder_tsp = 1,
  buttermilk = 240/3, # ⅓ cup buttermilk
  url = 'https://www.dessertfortwo.com/matcha-cake/')


#' @rdname gateau
#' @export
Sallys_pumpkin_cake <- function() new(
  Class = 'recipe', author = 'Sally\'s', alias_flavor = 'Pumpkin Cake',
  flour = 250,
  bakingPowder_tsp = 2,
  NaHCO3_tsp = 1,
  salt_tsp = 1, 
  # 1 and 1/2 teaspoons ground cinnamon
  # 2 teaspoons store-bought or homemade pumpkin pie spice*
  oil = c(Wegmans_vegetable = 240), # 1 cup (240ml) canola or vegetable oil*
  egg_pc = 4,
  brownSugar = 200,
  sugar = 100,
  pumpkin = 425, #1 (15 ounce) can pumpkin puree*
  vanilla_tsp = 1.5,
  url = 'https://sallysbakingaddiction.com/best-pumpkin-cake/#tasty-recipes-67484')



