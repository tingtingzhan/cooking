

#' @title \linkS4class{whippedCream}, \linkS4class{mascarponeFrosting} Recipes
#' 
#' @description
#' ..
#' 
#' @details
#' 
#' \linkS4class{whippedCream} are whipped stiff from heavy (whipping) cream. 
#' At comparable fat content level (~29%), 
#' \linkS4class{whippedCream} contains highest water content (~50%), 
#' but tastes particularly oily, which I dislike.
#' Also, the higher water content makes the whipped cream unstable.
#' 
#' \linkS4class{mascarponeFrosting} is whipped stiff from **puree**-diluted mascarpone cheese.
#' At comparable fat content level (~33%), 
#' \linkS4class{mascarponeFrosting} contains lower water content (~21%),
#' but tastes light and fresh, which I like.
#' \linkS4class{frosting} is whipped stiff from my secret dairy base.
#' 
#' \linkS4class{mascarponeGanache} contains higher water content (~40%)
#' than \linkS4class{mascarponeFrosting},
#' and is used for \linkS4class{millecrepe} filling 
#' or \linkS4class{bread} topping.
#' \linkS4class{ganache} is whipped stiff from my secret dairy base.
#' \linkS4class{mascarponeSpread} has similar fluidity as 
#' \linkS4class{mascarponeGanache} but much higher alcohol content, 
#' to be used as \linkS4class{bread} topping.
#' 
#' \linkS4class{whippedCreamCheese} ??
#' 
#' @note
#' 
#' Do not use granular ingredients for either one of these recipes, 
#' such as black sesame seeds.
#' 
#' @examples
#' diagnose_(
#'  new(Class = 'recipe', alias_class = 'Mascarpone\u88f1\u82b1', 
#'  mascarpone = 453/2, water = 70, 
#'  sugar_tsp = 10.5, matcha_tsp = 4, 
#'  pros = 'Effie\'s Signature!'),
#'  
#'  matcha_whippedCream,
#'  
#'  new(Class = 'recipe', alias_class = 'Mascarpone\u5976\u6cb9\u971c',
#'  mascarpone = 453/2, water = 110, 
#'  sugar_tsp = 11.5, matcha_tsp = 4.5, 
#'  pros = 'Xu Chang, Inna, Gloria', 
#'  cons = 'Scott Keith says this is bitter'),
#'  
#'  matcha_frosting,
#'  matcha_ganache
#' )
#' 
#' cocoa_whippedCream()
#' 
#' pumpkin_mascarponeFrosting()
#' tiramisuFrosting_Kahlua()
#' 
#' diagnose_(
#'  foodandjourneys_mascarponeFrosting,
#'  lifeloveandsugar_mascarponeFrosting,
#'  lifeloveandsugar_cocoa_mascarponeFrosting,
#'  Marcellina_mascarponeFrosting
#' )
#' 
#' @name whippedCream
#' @aliases whippedCream-class
#' @export
setClass(Class = 'whippedCream', contains = 'recipe', prototype = prototype(
  alias_class = '\u6253\u53d1\u91cd\u5976\u6cb9',
  heavyCream = c(Wegmans = 100),
  instruction = c(
    'KitchenAid stand mixer: mix and whisk until stiff'
  ),
  review = 'Greasy. I don\'t like'
))

# do not make
# blackSesame_whippedCream 
# granular ingredients, I dont like

#' @rdname whippedCream
#' @export
matcha_whippedCream <- function() new(Class = 'whippedCream', matcha_tsp = 1.5, sugar_tsp = 3.5)

#' @rdname whippedCream
#' @export
cocoa_whippedCream <- function() new(Class = 'whippedCream', cocoa_tsp = 3, sugar_tsp = 4.5)











#' @rdname whippedCream
#' @aliases mascarponeFrosting-class
#' @export
setClass(Class = 'mascarponeFrosting', contains = 'recipe', prototype = prototype(
  alias_class = 'Mascarpone\u88f1\u82b1',
  mascarpone = 453/2, # 1 cup mascarpone cheese
  instruction = c(
    'KitchenAid stand mixer: mix and whisk until stiff'
  ),
  note = 'For piping'
), validity = function(object) {
  if (length(object@water)) stop('Use `frosting` recipe instead')
})

#' @rdname whippedCream
#' @aliases frosting-class
#' @export
setClass(Class = 'frosting', contains = 'recipe', prototype = prototype(
  alias_class = '\u79d8\u5236\u88f1\u82b1',
  mascarpone = 453/4, yogurt = 80 # not tried yet
), validity = function(object) {
  if (length(object@water)) stop('do not add water in `frosting`')
  if (length(object@pumpkin) || length(object@pineapple) || length(object@puree)) {
    stop('frosting with mascarpone+yogurt base already contains a lot of water. Cannot use puree. Use powder instead')
  }
})

#' @rdname whippedCream
#' @aliases mascarponeGanache-class
#' @export
setClass(Class = 'mascarponeGanache', contains = 'recipe', prototype = prototype(
  alias_class = 'Mascarpone\u5976\u6cb9\u971c',
  mascarpone = 453/2, # 1 cup mascarpone cheese
  portion = c('mille cre\u0302pe cake 11in' = 1000),
  instruction = c(
    'KitchenAid stand mixer: mix and whisk until soft peak'
  )
), validity = function(object) {
  if (length(object@water)) stop('Use `ganache` recipe instead')
})

#' @rdname whippedCream
#' @aliases ganache-class
#' @export
setClass(Class = 'ganache', contains = 'recipe', prototype = prototype(
  alias_class = '\u79d8\u5236\u5976\u6cb9\u971c',
  mascarpone = 453/4, yogurt = 120, # cannot further increase yogurt!! flavor of yogurt very strong already!!
  portion = c('mille cre\u0302pe cake 11in' = 1000)
), validity = function(object) {
  # if (length(object@water)) stop('do not add water in `ganache`') # will add a little little now
  if (length(object@pumpkin) || length(object@pineapple) || length(object@puree)) {
    stop('ganache with mascarpone+yogurt base already contains a lot of water. Cannot use puree. Use powder instead')
  }
})


#' @rdname whippedCream
#' @export
matcha_frosting <- function() new(
  Class = 'frosting', 
  sugar_tsp = 8, matcha_tsp = 3.5, 
  review = 'try')

#' @rdname whippedCream
#' @export
matcha_ganache <- function() new(
  Class = 'ganache', 
  # sugar = 30, matcha_tsp = 4, # too hard after chilled
  water = 15, sugar = 32, matcha_tsp = 4, # try
  review = 'try')


#' @rdname whippedCream
#' @export
pumpkin_mascarponeFrosting <- function() new(Class = 'mascarponeFrosting', pumpkin = 100, sugar_tsp = 7.5, pros = 'Effie\'s Signature!')

#' @rdname whippedCream
#' @export
pineapple_mascarponeFrosting <- function() new(Class = 'mascarponeFrosting', pineapple = 100, sugar_tsp = 6, pros = 'Effie\'s Signature!')


#' @rdname whippedCream
#' @export
cocoa_frosting <- function() new(
  Class = 'frosting', 
  alias_flavor = 'keke', 
  sugar_tsp = 13, cocoa_Tbsp = 3, review = 'try')


#' @rdname whippedCream
#' @export
tiramisuFrosting_Kahlua <- function() new(
  Class = 'frosting',
  liqueur_tsp = c(Kahlua_coffee = 5.5),
  sugar_tsp = 4,
  review = 'try'
)





#' @rdname whippedCream
#' @aliases mascarponeSpread-class
#' @export
setClass(Class = 'mascarponeSpread', contains = 'mascarponeGanache', prototype = prototype(
  alias_class = 'Mascarpone\u5939\u5fc3',
  portion = numeric()
))



#' @rdname whippedCream
#' @export
cocoa_ganache <- function() new(
  Class = 'ganache',  
  sugar_tsp = 13, cocoa_tsp = 7,
  review = 'try')


coffee_ganache <- function() new(
  Class = 'ganache',
  sugar_tsp = 7, coffee_Tbsp = 1,
  review = 'try')


#' @rdname whippedCream
#' @export
durian_ganache <- function() new(
  Class = 'ganache', alias_flavor = '\u69b4\u83b2',
  durian = 300, 
  sugar = 10,
  review = 'try')


coconut_mascarponeGanache_Silk <- function() new(
  Class = 'mascarponeGanache', alias_flavor = '\u6930\u5b50\U1f965(Silk)',
  puree = c(Silk_coconutmilk = 110),
  sugar = 22,
  review = 'try'
)



#' @rdname whippedCream
#' @export
tiramisuGanache_Kahlua <- function() new(
  Class = 'ganache',
  liqueur_Tbsp = c(Kahlua_coffee = 2),
  sugar_tsp = 4.5,
  review = 'try'
)
  
if (FALSE) {
  new(
    Class = 'recipe', 
    alias_class = 'Mascarpone\u5976\u6cb9\u971c',
    mascarpone = 453/2,
    liqueur_Tbsp = c(Kahlua_coffee = 2),
    water = 47,
    sugar_tsp = 4.5,
    pros = 'I like')
}
  
  

#' @rdname whippedCream
#' @export
tiramisuSpread_Kahlua <- function() new(
  Class = 'mascarponeSpread',
  liqueur_Tbsp = c(Kahlua_coffee = 5),
  review = c('try'))

#' @rdname whippedCream
#' @export
tiramisuSpread_CafeGranita <- function() new(
  Class = 'mascarponeSpread',
  liqueur_Tbsp = c(CafeGranita_coffee = 5),
  review = c('try'))






#' @rdname whippedCream
#' @export
pineapple_ganache <- function() new(
  Class = 'mascarponeGanache', 
  pineapple = 190, sugar_tsp = 5, 
  pros = 'I love!!')

#' @rdname whippedCream
#' @export
pumpkin_ganache <- function() new(
  Class = 'mascarponeGanache',
  pumpkin = 325, sugar_tsp = 11,
  pros = 'Very forgiving: adding pumpkin puree almost do not change the texture!', 
  cons = 'No longer holds air well though',
  note = c(
    'Do not further increase pumpkin puree'
  ))











#' @rdname whippedCream
#' @export
tiramisu_nytimes <- function() new(
  Class = 'recipe', alias_flavor = 'tiramisu', 
  eggYolk_pc = 4,
  sugar = 100, 
  heavyCream = c(Wegmans = 180),
  mascarpone = 453/2,
  url = 'cooking.nytimes.com/recipes/1018684-classic-tiramisu')




#' @rdname whippedCream
#' @export
foodandjourneys_mascarponeFrosting <- function() new(
  Class = 'mascarponeFrosting', alias_flavor = 'Food & Journeys',
  sugar_cup = 1/3, # powdered sugar!
  # ▢ 1 vanilla bean, seeded
  lightCream = 240, # ▢ 1 cup light cream, chilled
  url = 'foodandjourneys.net/how-to-make-mascarpone-cream/')

#' @rdname whippedCream
#' @export
lifeloveandsugar_mascarponeFrosting <- function() new(
  Class = 'mascarponeFrosting', alias_flavor = 'Life Love & Sugar',
  heavyCream = 300, # 1 1/4 cups
  sugar_cup = 3/4,
  vanilla_tsp = 1,
  url = 'www.lifeloveandsugar.com/stabilized-mascarpone-whipped-cream/')

#' @rdname whippedCream
#' @export
lifeloveandsugar_cocoa_mascarponeFrosting <- function() new(
  Class = 'mascarponeFrosting', alias_flavor = 'Life Love & Sugar, Cocoa',
  heavyCream = 300, # 1 1/4 cups
  sugar_cup = 1/2,
  cocoa_cup = 1/4,
  vanilla_tsp = 1,
  url = 'www.lifeloveandsugar.com/stabilized-mascarpone-whipped-cream/')

#' @rdname whippedCream
#' @export
Marcellina_mascarponeFrosting <- function() new(
  Class = 'mascarponeFrosting', alias_flavor = 'Marcellina in Cucina',
  heavyCream = 240, # 1 cup (250 milliliters)whipping cream full fat
  sugar_cup = 1/4, # powdered sugar!
  vanilla_tsp = 2,
  url = 'www.marcellinaincucina.com/mascarpone-cream/')



#' @rdname whippedCream
#' @aliases whippedCreamCheese-class
#' @export
setClass(Class = 'whippedCreamCheese', contains = 'recipe', prototype = prototype(
  alias_class = '\u6253\u53d1Cream Cheese',
  creamCheese = c(Nancys = 227)
))  
  
#' @rdname whippedCream
#' @export
whippedCreamCheese <- function() new(
  Class = 'whippedCreamCheese', 
  water = 40, # needs to experiment!!
  sugar = 12,
  review = 'a hypothetical model')


