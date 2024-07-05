

#' @title \linkS4class{froyo} Recipes
#' 
#' @description frozen yogurt.
#' 
#' @details
#' 
#' Non-fat Greek yogurt have a very strong flavor; do not use.
#' 
#' @examples 
#' subtract(emma_froyo, sugar = 90)
#' 
#' 
#' @name froyo
#' @aliases froyo-class
#' @export
setClass(Class = 'froyo', contains = 'recipe', prototype = prototype(
  alias_class = 'Froyo',
  yogurt = c(Nancys = 680*2), # 2x jar
  iceWater = 200, # to confirm
  instruction = c(
    'Mix everything with a spatula',
    'Turn on the ice cream makers.  Add batter through chute')
))


# write these into individual recipes!!!
#url = c(
#  'chocolatecoveredkatie.com/frozen-yogurt-recipe-homemade/', # no-water recipe
#  # below: puree frozen yogurt; puree:yogurt 8:1 volume, 4.67:1 weight
#  'simple-nourished-living.com/3-ingredient-nonfat-strawberry-frozen-yogurt/', 
#  'www.justataste.com/5-minute-healthy-greek-frozen-yogurt-recipe/'
#)







#' @rdname froyo
#' @export
Bourbon_froyo <- function() new(
  Class = 'froyo', alias_flavor = 'Bourbon\u67ab\u7cd6\u6d46',
  syrup = c(Stonewall_Bourbon = 70), # 9% sugar content
  review = c('try')
)






#' @rdname froyo
#' @export
pumpkin_froyo <- function() new(
  Class = 'froyo',
  pumpkin = 400,
  brownSugar = 55,
  review = c('try again; enough pumpkin flavor?'))



  
  

#' @rdname froyo
#' @export
matcha_froyo <- function() new(
  Class = 'froyo',
  matchaSado = 20, sugar = 30 + 15, # adjust for water-added!
  review = 'try again')


# https://healthyrecipesblogs.com/frozen-yogurt-recipe/#recipe # no water added
# https://thebigmansworld.com/sugar-free-frozen-yogurt/#wprm-recipe-container-52536 # no water added




#' @rdname froyo
#' @export
emma_froyo <- function() new(
  Class = 'recipe', author = 'Emma\'s Goodies', alias_flavor = 'Froyo\U0001f368',
  youtube = 'rzXkiFZM1Vc',
  heavyCream = 400,
  yogurtGreek = 170, 
  sugar = 130)

