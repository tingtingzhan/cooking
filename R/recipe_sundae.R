

#' @title \linkS4class{sundae} Recipes
#' 
#' @description
#' \linkS4class{sundae} recipe with my secret dairy base.
#' 
#' @details
#' 
#' Heavy cream has very high water content. 
#' Also, egg yolk (and water bath pasterization / emulsification) is necessary.
#' I do not use heavy cream at all
#' 
#' Mascarpone cheese (with water) gives very good texture 
#' if slightly thaw (in fridge) before serving.  
#' No egg yolk required!!
#' However, it is a little too oily for me.
#' 
#' Non-fat Greek yogurt have a very strong flavor, 
#' thus I don't like it as a sole base for ice-cream.
#' Greek yogurt is a little more fluid than mascarpone cheese, but not much!
#' 
#' Do not use too much water!! I get frost bite!!
#' 
#' @examples 
#' #cocoa_icecream() # future
#' #Bourbon_icecream() # future
#' 
#' matcha_sundae() * 2
#' nutrition_(
#'  subtract(nutrition(cooking23s_icecream), sugar = 32),
#'  subtract(nutrition(SweetDumpling_matcha_icecream()), sugar = 63),
#'  subtract(xiaogaojie_icecream, sugar = 57),
#'  subtract(cuisinart_icecream, sugar = 95),
#'  subtract(emma_froyo, sugar = 84),
#'  subtract(HaagenDazs_matcha, sugar = 15),
#'  subtract(Bassetts_matcha, sugar = 11.7),
#'  subtract(maeda_matcha_icecream, sugar = 9.55),
#'  subtract(Yumna_icecream, sugar = 58),
#'  matcha_sundae,
#'  
#'  new(Class = 'recipe', alias_class = 'Mascarpone\u51b0\u6dc7\uf9f5\U0001f368',
#'  mascarpone = 453/2, water = 320, 
#'  drymilk = 40, matcha_tsp = 10, sugar_Tbsp = 4, 
#'  pros = c('Nice! Tiny little oily'))
#' )
#' 
#' 
#' nutrition_(
#'  subtract(Bassetts_coffee, sugar = 12.7),
#'  subtract(HaagenDazs_coffee, sugar = 16),
#'  coffee_sundae
#' )
#' 
#' nutrition_(
#'  subtract(Bassetts_pumpkin, sugar = 11),
#'  pumpkin_sundae
#' )
#' 
#' 
#' @name sundae
#' @aliases sundae-class
#' @export
setClass(Class = 'sundae', contains = 'recipe', prototype = prototype(
  alias_class = 'Sundae\U0001f366',
  # all dairy product add up to ~453/2 grams (1 cup)
  
  mascarpone = 453/4, 
  yogurt = 100,
  water = 220 # experimented! Confirm again next time 
  # taste if yogurt flavor is detectable

  #cottageCheese = 113 
  # test mascarpone+yogurt first!!
  # need food processor for cottage cheese
  
))


#' @rdname sundae
#' @export
matcha_sundae <- function() new(
  Class = 'sundae',
  drymilk = 40, matcha_tsp = 8, sugar_Tbsp = 3,
  pros = 'I love')






corn_sundae <- function() new(
  Class = 'sundae',
  puree = c(cornjuice = 400), water = numeric(), yogurt = numeric(),
  review = 'try')

#' @rdname sundae
#' @export
pumpkin_sundae <- function() new(
  Class = 'mascarponeSundae', 
  pumpkin = 350, drymilk = 40, 
  sugar_tsp = 7, 
  review = c('try'))

#' @rdname sundae
#' @export
coffee_sundae <- function() new(
  Class = 'sundae',
  drymilk = 37, coffee_Tbsp = 2, sugar_tsp = 5, # based on my coffee_gelatoOLD()
  review = 'try')





#' @name sundae
#' @aliases mascarponeSundae-class
#' @export
setClass(Class = 'mascarponeSundae', contains = 'recipe', prototype = prototype(
  alias_class = 'Sundae\U0001f366',
  mascarpone = 453/4
), validity = function(object) {
  if (length(object@water)) stop('Use `sundae` instead!')
})






#' @rdname sundae
#' @export
pineapple_sundae <- function() new(
  Class = 'mascarponeSundae', 
  pineapple = 210,
  review = c('try!!'))




if (FALSE) {

  
  cocoa_icecream <- function() new(
    Class = 'recipe', alias_class = '\u51b0\u6dc7\uf9f5\U0001f368',
    heavyCream = 480,
    eggYolk_pc = 6,
    drymilk = 52, 
    water = 220, # 250*.881
    cocoa = 30 * 1.07, sugar = 36 * 1.07, 
    review = c(
      'perfect sweetness for old prototype',
      'retry for new prototype'
    ))
  
  
  
  Bourbon_icecream <- function() new(
    Class = 'recipe', alias_flavor = 'Bourbon \u67ab\u7cd6', 
    alias_class = '\u51b0\u6dc7\uf9f5\U0001f368',
    heavyCream = 480,
    eggYolk_pc = 6,
    drymilk = 52, 
    water = 220, # 250*.881
    syrup = c(Stonewall_Bourbon = 50 * 1.07), 
    review = c(
      'perfect sweetness for old prototype',
      'retry for new prototypd'
    ))
  
} # old experiments







#' @title icecream
#' 
#' @description
#' ..
#' 
#' @examples
#' diagnose_(
#'  subtract(xiaogaojie_icecream, sugar = 57),
#'  subtract(happytears_icecream, sugar = 80)
#' )
#' 
#' 
#' 
#' @name icecream
#' @export
xiaogaojie_icecream <- function() new(
  Class = 'xiaogaojie', alias_flavor = '\u51b0\u6dc7\uf9f5\U0001f368', youtube = 'IQ-t8eSSD3Y',
  eggYolk_pc = 6,
  heavyCream = 500,
  milk = 250,
  sugar = 120
  # Vanilla paste：8g, 1/2 teaspoons
)

#' @rdname icecream
#' @export
happytears_icecream <- function() new(
  Class = 'happytears', alias_flavor = '\u51b0\u6dc7\uf9f5\U0001f368',
  eggYolk_pc = 5,
  sugar = 150,
  flavor = c(ThaiKitchen_coconutmilkLite = 500),
  heavyCream = 250,
  youtube = 'UDVHsBR7s3Y')



#' @rdname icecream
#' @export
xiaogaojie_cocoa_icecream <- function() new(
  Class = 'xiaogaojie', alias_flavor = 'Cocoa\u51b0\u6dc7\uf9f5\U0001f368', youtube = 'YNzGZMLWY_Q',
  heavyCream = 350,
  eggYolk_pc = 3,
  milk = 250, 
  sugar = 60,
  flavor = c(Guittard_lustrous55 = 200), # semi-sweet chocolate：200g
  coffee_tsp = 1) # 5g 1 tablespoon
  



#' @rdname icecream
#' @export
SweetDumpling_matcha_icecream <- function() new(
  Class = 'recipe', author = '\u7cd6\u997a\u5b50', alias_flavor = '\u62b9\u8336\U0001f375\u51b0\u6dc7\uf9f5\U0001f368',
  heavyCream = 250,
  condensedMilk = 170,
  milk = 50,
  matcha = 15)

#' @rdname icecream
#' @export
cuisinart_icecream <- function() new(
  Class = 'recipe', author = 'Cuisinart', alias_flavor = '\u51b0\u6dc7\uf9f5\U0001f368',
  url = 'www.cuisinart.com/recipes/desserts/simple-vanilla-ice-cream---5-cups-10-servings/',
  milk = 250, # 1 cup
  sugar = 150, # ¾ cup granulated sugar 
  heavyCream = 500, # 2 cups heavy cream 
  vanilla_tsp = 1)


#' @rdname icecream
#' @export
cooking23s_icecream <- function() new(
  Class = 'recipe', author = 'cooking23s', alias_flavor = '\u51b0\u6dc7\uf9f5\U0001f368',
  url = 'cooking23s.blogspot.com/2021/05/ice-cream.html',
  condensedMilk = 100,
  heavyCream = 200,
  milk = 50)


#' @rdname icecream
#' @export
Yumna_icecream <- function() new(
  Class = 'recipe', author = 'Yumna', alias_flavor = 'Cottage\u51b0\u6dc7\uf9f5\U0001f368',
  url = 'feelgoodfoodie.net/recipe/cottage-cheese-ice-cream/',
  cottageCheese = 425, # 15 oz,
  sugar = 80 # 1/4 cup of honey weighs 85 grams
)

  
# https://nourishedbynic.com/high-protein-ice-cream-cottage-cheese-ice-cream/
