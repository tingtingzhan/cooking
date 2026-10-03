

#' @title \linkS4class{froyo} Recipes
#' 
#' @description frozen yogurt.
#' 
#' @details
#' 
#' Non-fat Greek yogurt have a very strong flavor; do not use.
#' 
#' @examples 
#' subtract(cooking:::emma_froyo, sugar = 90)
#' 
#' 
#' @export
setClass(Class = 'froyo', contains = 'recipe', prototype = prototype(
  class2 = 'Froyo',
  dairy = c(Nancys_yogurt = 680*2), # 2x jar
  iceWater = 200#, # to confirm
  #instruction (legacy) = c(
  #  'Mix everything with a spatula',
  #  'Turn on the ice cream makers.  Add batter through chute')
))


# write these into individual recipes!!!
#url = c(
#  'chocolatecoveredkatie.com/frozen-yogurt-recipe-homemade/', # no-water recipe
#  # below: puree frozen yogurt; puree:yogurt 8:1 volume, 4.67:1 weight
#  'simple-nourished-living.com/3-ingredient-nonfat-strawberry-frozen-yogurt/', 
#  'www.justataste.com/5-minute-healthy-greek-frozen-yogurt-recipe/'
#)







#' @rdname froyo-class
#' @export
Bourbon_froyo <- \() new(
  Class = 'froyo', flavor = 'Bourbon\u67ab\u7cd6\u6d46',
  syrup = c(Stonewall_Bourbon_syrup = 70), # 9% sugar content
  review = c('try')
)






#' @rdname froyo-class
#' @export
pumpkin_froyo <- \() new(
  Class = 'froyo',
  puree = c(Libbys_pumpkin = 400),
  sugar = c(Domino_darkBrown = 55),
  review = c('try again; enough pumpkin flavor?'))



  
  

#' @rdname froyo-class
#' @export
matcha_froyo <- \() new(
  Class = 'froyo',
  matcha = c(Ippodo_ikuyo = 20), sugar = 30 + 15, # adjust for water-added!
  review = 'try again')


# https://healthyrecipesblogs.com/frozen-yogurt-recipe/#recipe # no water added
# https://thebigmansworld.com/sugar-free-frozen-yogurt/#wprm-recipe-container-52536 # no water added




emma_froyo <- \() new(
  Class = 'recipe', author = 'Emma\'s Goodies', flavor = 'Froyo\U1f368',
  youtube = 'rzXkiFZM1Vc',
  dairy_cup = c(Wegmans_heavyCream = 1.75),
  dairy = c(FageTotal0_yogurtGreek = 170), 
  sugar = 130)

