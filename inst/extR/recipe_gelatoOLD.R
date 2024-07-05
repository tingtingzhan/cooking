
# gelato contains too much water, which gives me frost bites!!
.Defunct(msg = 'S4 class `sundae`')


#' @title \linkS4class{gelatoOLD} Recipes
#' 
#' @description
#' \linkS4class{gelatoOLD} is a little too watery, in other words, 
#' too freezing for my preference.   Also, too much water is difficult to freeze.
#' 
#' @references 
#' Egg safety
#' \url{www.fda.gov/food/buy-store-serve-safe-food/what-you-need-know-about-egg-safety}
#' 
#' Traditional ice cream:
#' \url{cooking.nytimes.com/recipes/1016605-the-only-ice-cream-recipe-youll-ever-need}
#' \url{youtu.be/IQ-t8eSSD3Y}, whole milk : heavy cream = 1:2
#' 
#' Traditional gelato:
#' \url{www.recipesfromitaly.com/authentic-italian-gelato-recipe/}  whole milk : heavy cream = 1.5 : 1
#' \url{www.foodnetwork.com/recipes/giada-de-laurentiis/chocolate-hazelnut-gelato-recipe-1946008}, 2:1
#' \url{www.allrecipes.com/recipe/55609/gelato/}, 2:1
#' 
#' @examples
#' pumpkin_gelatoOLD() # the best!!
#' adzuki_gelatoOLD() # try with Cuisinart
#' corn_gelatoOLD()
#' coffee_gelatoOLD()
#' 
#' @name gelatoOLD
#' @aliases gelatoOLD-class
#' @export
setClass(Class = 'gelatoOLD', contains = 'recipe', prototype = prototype(
  alias_class = 'Gelato(OLD)',
  heavyCream = 240, # 1 cup (with 4 egg yolks)
  eggYolk_pc = 4,
  drymilk = 55,
  instruction = c(
    '(Optional) Whisk together corn starch, if any, with dry milk',
    'Poke open egg yolks, before adding liquid ingredients',
    'Fresh hot puree, if used, must not direct contact with egg yolk',
    'Chill ice cream paste overnight',
    '(Optional) Freeze serving bowls and utensils'
  ),
  note = c(
    'One (1) recipe of gelatoOLD fits in 1 qt Tovolo jar'
  ),
  waterBath = thermometer(fahrenheit = 155, program = 'Water Bath'),
  KSMICM = KSMICM(
    recipe_pc = 1,
    operation = 'Stop *immediately* at resilience'),
  CuisinartICE70 = CuisinartICE70(
    program = 'Gelato, 30min',
    operation = c('Freeze bowl >72hr for high water recipe!'), # freeze 3d for 1 recipe, great!
    recipe_pc = 2,
    note = 'One (1) recipe is lower than the central part of paddle!'
  )
))



#' @rdname gelatoOLD
#' @export
pumpkin_gelatoOLD <- function() new(
  Class = 'gelatoOLD',
  pumpkin = 440, sugar = 12, drymilk = 60, 
  waterBath = thermometer(fahrenheit = 140, program = 'Water Bath'),
  review = 'Effie\'s Signature') # succeeded using KitchenAidKSMICM, 1 recipe
# 2 recipes, water bath 156F
# -> butter churned out
# -> tasted eggy
# the previous success was to 140F, I remember..


#' @rdname gelatoOLD
#' @export
corn_gelatoOLD <- function() new(
  Class = 'gelatoOLD', alias_flavor = '\u7389\u7c73',
  puree = c(cornjuice = 400), 
  drymilk = 60,
  sugar = 10,
  review = 'try')





adzukiBeanMud200 <- function() new(
  Class = 'soymilk', alias = '\u73b0\u69a8\u7ea2\u8c46\u6d46',
  #alias_class = '\u4e5d\u9633\u8001\u8c46\u6d461300ml',
  JoyoungDJ13U = JoyoungDJ13U_soymilk(),
  adzukibean = 200, water = 1130, # confirmed
  # waterLost ???
  note = c('Soak beans in fridge overnight, if possible'),
  review = 'Starch too much, CANNOT use for adzuki icecream!!!')

adzuki_gelatoOLD_try1 <- function() new(
  Class = 'gelatoOLD', alias_flavor = '\u7ea2\u8c46',
  puree = c(adzukiBeanMud200 = 470), drymilk = 65, sugar = 25,
  review = c(
    'Starch content too high, breaks driver assembly of KitchenAid ice cream maker..',
    'Do not know how to reduce starch but preserve adzuki bean flavor',
    'Adzuki bean flavor just right!!!',
    'I LOVE the texture, but Effie does not'
  ))





gelatoOLD_int <- function() new(
  Class = 'gelatoOLD', 
  water = 330,
  # starch = c(Wegmans_corn = 12), # inspired by www.goodlifeeats.com/pistachio-gelatoOLD-2/
  # starch_tsp = c(Wegmans_corn = 1), # cannot taste any difference
  #starch_Tbsp = c(Wegmans_corn = 1), # try, original recipe does not have egg yolk
  review = 'Tested great without starch, or 1tsp starch')

#' @rdname gelatoOLD
#' @export
coffee_gelatoOLD <- function() new(Class = 'gelatoOLD', gelatoOLD_int(), coffee = 10, sugar = 22, review = 'Nice!  Retry with corn starch')

#' @rdname gelatoOLD
#' @export
matcha_gelatoOLD <- function() new(
  Class = 'gelatoOLD',
  gelatoOLD_int(),
  matcha = 27,
  sugar = 40,
  review = 'try')


#' @rdname gelatoOLD
#' @export
Bourbon_gelatoOLD <- function() new(
  Class = 'gelatoOLD', alias_flavor = 'Bourbon\u67ab\u7cd6',
  gelatoOLD_int(),
  syrup = c(Stonewall_Bourbon = 30),
  review = c(
    'Good: no starch, 1 recipe, bowl frozen 72hr',
    'Failed: 1tsp starch, 2 recipes. Bowl not frozen enough!!',
    'try: 1Tbsp (3tsp) starch, 2 recipes, freeze 72hr'
  ))



