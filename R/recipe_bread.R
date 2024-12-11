


#' @title My Go-To \linkS4class{bread} Recipes
#' 
#' @description
#' 
#' \linkS4class{bread} contains 63% water and 7.5% fat (baker's percentage).
#' This recipe is dry and very easy to shape without corn starch.
#' Both Wegmans and King Arthur bread flours work.
#' 
#' @references 
#' 
#' \url{https://youtu.be/haQf0LLDZnc}, egg white and yolk (ChainBaker)
#' 
#' \url{https://youtu.be/jP_qyhKPQKY}, egg white and yolk (Novita Listyani)
#' 
#' \doi{10.1094/CCHEM-11-12-0160-N}
#' 
#' 
#' @examples 
#' beet_bread()
#' 
#' pumpkin_bread() + pumpkin_ganache() / 4 # super nice!!
#' pumpkin_bread() + matcha_bread() + pumpkin_ganache()/2 # super nice!!
#' 
#' cocoa_bread() + tiramisuSpread_Kahlua() / 4 # try
#' cocoa_bread() + matcha_ganache() / 4 # Bad!!
#' 
#' matcha_bread() + cocoa_ganache() / 4 # try
#' 
#' pineapple_bread() + pineapple_ganache() / 4 # try
#' 
#' pumpkin_bread() + tomato_bread() + matcha_bread() + beet_bread() # ribbon Challah
#' 
#' @references
#' \url{https://youtu.be/w83YFWkyYqA}, ribbon Challah; remove cup for round Challah
#' 
#' \url{https://youtu.be/zMX6khstegI?t=185}, colors in sheets
#' 
#' \url{https://youtu.be/N5x_Z8bRMaE}, colors as flower
#' 
#' @name bread
#' @aliases bread-class
#' @export
setClass(Class = 'bread', contains = 'recipe', prototype = prototype(
  alias_class = 'Bread\U1f35e', # '\u9762\u5305',
  breadFlour = c(KingArthur_bread = 500), 
  #eggYolk_pc = 1, # was. too difficult to store the egg white
  egg_pc = 1,
  yeast_Tbsp = 1,
  salt_tsp = 1/4,
  butter = 40,
  
  waterLost = 50, # confirmed with beet_bread() (water = 300, 2023-01-05)
  
  portion = c(
    'Philips cupcake; 250\u00b0F/17min' = 35,
    '10x dinner rolls, Emile Henry large oval 3qt' = 70,
    '4x 8in-strands round Challah, Emile Henry cheese baker' = 280/4,
    '4x 12in-strands, 9in loaf pan' = 110, # to try
    '3x 12in-strands, 9in loaf pan' = 150, # confirmed!
    
    '4x 20in-strands ribbon Challah, Nordic Ware Let It Snow 10cup' = 680/4,
    # silicone fluted pan explodes hahaha
    
    # 'Nordic Ware cast aluminum, 6-cup' = 400, # difficult to shape
    # '8-cup Citrus Twist', # shape too flat for bread
    
    'Nordic Ware Yule Log 9cup' = 650
    
    # '9-cup Holiday Wreath', # !!! shape too irregular for bread !!!
    
  ),
  
  note = c(
    'Trudeau loaf pan (7.5x3.75, 8.5x4.5)',
    'Emile Henry loaf pan (8x4, 9x5)',
    'Hokkaido toast shaping is not as good as braiding!' 
  ),
  
  instruction = c(
    'Brush ceramic and cast aluminum (no need for silicone) baking dish with extra butter (melted)',
    'Ferment next to heat vent, ~1hr, covered',
    'Robam CT763: Steam bake, 250\u00b0F/30min, if not specified otherwise',
    'Finish top with extra butter at any temperature (silicone brush is hot)'
  ),
  KSM8990 = KSM8990(
    program = 'Level 2',
    operation = c(
      'Rest everything, except butter, overnight',
      'MUST restore to room temperature',
      'Knead until smooth. Add room-temperature butter',
      'Stop kneading once all butter absorbed'
    )
  ),
  machine = list(
    # 'Bread Pizza; Emile Henry Medium Rectangular (3.2 qt) TRY!!!' = c(
    #  'Divide half (1/2) recipe into ten (10) short strips',
    #  'Robam CT763: Steam bake, 250\u00b0F/25min',
    #  'Brush top with remaining butter and egg wash from another two (2) whole eggs',
    #  'Robam CT763: Steam bake, 250\u00b0F/2min',
    #  'Brush top with tomato sauce, shredded mozzarella, cooked seafood, etc.',
    #  'Robam CT763: Steam bake, 400\u00b0F/3min (until golden brown)' # 350F not enough, will not brown
    #)
  )
))

#' @rdname bread
#' @export
bread <- function() new(
  Class = 'bread', 
  water = 300,  
  drymilk = 30, 
  sugar = 40) # theoretical model

#' @rdname bread
#' @export
beet_bread <- function() new(
  Class = 'bread', bread(), 
  beet_Tbsp = 4, drymilk = 31, sugar = 35, 
  review = 'retry with extra water for beet!!')

#' @rdname bread
#' @export
matcha_bread <- function() new(
  Class = 'bread', bread(), 
  matcha_tsp = 14, drymilk = 35, sugar = 73, 
  # 47g extra water, according to bao() model, why it's too wet??
  # --- King Arthur bread flour has less water absorbancy than Wegmans' bread flour!!!!!
  # or it's me lost the judgement of `too wet`??
  review = 'retry with extra water for matcha!!'
  )



#' @rdname bread
#' @export
pumpkin_bread <- function() new(
  Class = 'bread', 
  pumpkin = 350, drymilk = 34, brownSugar = 25, 
  review = 'try')



#' @rdname bread
#' @export
cocoa_bread <- function() new(
  Class = 'bread', bread(),
  #cocoa_tsp = 16, # 4%
  cocoa_tsp = c(KingArthur_Bensdorp = 20), # 5%, as in bao(), tastes nice!
  drymilk = 33, sugar = 40, 
  review = 're-try with dutch cocoa') # more water, less dry milk






#' @rdname bread
#' @export
tomato_bread <- function() new(
  Class = 'bread', tomato = 400, drymilk = 33, sugar = 40, 
  review = 'try')


#' @rdname bread
#' @export
coffee_bread <- function() new(
  Class = 'bread', bread(), 
  coffee_tsp = 11, drymilk = 30, sugar = 40, 
  water80 = 100, water = 200,
  pros = 'Ethanol from fermentation, tastes like tiramisu!')


rootBeer_bread <- function() new(
  Class = 'bread', bread(),
  water = 290, sauce = c(SodaStream_rootBeer = 45), sugar = numeric(),
  review = 'dont try until I can find sodastream syrup water content')



#' @rdname bread
#' @export
pineapple_bread <- function() new(
  Class = 'bread', pineapple = 337, drymilk = 32, 
  review = 'try')


#' @rdname bread
#' @export
ginger_bread <- function() new(
  Class = 'bread', bread(), 
  ginger_tsp = 2, drymilk = 32, sugar = 70, 
  review = 'try')


# old recipes: per 180g Libby's pumpkin puree

#  applesauce = 165, # 177g slightly too wet
#  puree = c(UltraOrganics_mango = 195), # 200g a little too wet (but probably the best wetness for Japannese toast). 185g too dry.
#  puree = c(Kirkland_blueberry = 175) # review = c('Effie\'s Signature'))
#  strawberry = 175 #  review = c('Effie\'s Signature'))
#  puree = c(Kirkland_peach = 175) # review = c('Nice!'))
#  fruit = c(FlavorFarmer_whitePeach = 160), sugar = 20, review = c('Nice!'))
#  330g flour, acai = 40, review = 'Effie\'s Signature')



