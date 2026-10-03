

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
#' nutritionlist(
#'  new(Class = 'recipe', class2 = 'Mascarpone\u88f1\u82b1', 
#'  dairy_cup = c(BelGioioso_mascarpone = 1),
#'  water = 70, 
#'  sugar_tsp = 10.5, 
#'  matcha_tsp = c(Sencha_everyday_matcha = 4), 
#'  pros = 'Effie\'s Signature!'),
#'  
#'  matcha_whippedCream(),
#'  
#'  new(Class = 'recipe', class2 = 'Mascarpone\u5976\u6cb9\u971c',
#'  dairy_cup = c(BelGioioso_mascarpone = 1),
#'  water = 110, 
#'  sugar_tsp = 11.5, 
#'  matcha_tsp = c(Sencha_everyday_matcha = 4.5), 
#'  pros = 'Xu Chang, Gloria', 
#'  cons = 'Scott Keith says this is bitter'),
#'  
#'  matcha_frosting(),
#'  matcha_ganache()
#' )
#' 
#' cocoa_whippedCream()
#' 
#' pumpkin_mascarponeFrosting()
#' tiramisuFrosting_Kahlua()
#' 
#' nutritionlist(
#'  foodandjourneys_mascarponeFrosting(),
#'  lifeloveandsugar_mascarponeFrosting(),
#'  lifeloveandsugar_cocoa_mascarponeFrosting(),
#'  Marcellina_mascarponeFrosting()
#' )
#' 
#' @name whippedCream-class
#' @export
setClass(Class = 'whippedCream', contains = 'recipe', prototype = prototype(
  class2 = '\u6253\u53d1\u91cd\u5976\u6cb9',
  dairy = c(Wegmans_heavyCream = 100),
  # instruction (legacy) = c(
  #  'KitchenAid stand mixer: mix and whisk until stiff'
  #),
  review = 'Greasy. I don\'t like'
))

# do not make
# blackSesame_whippedCream 
# granular raw, I dont like

#' @rdname whippedCream-class
#' @export
matcha_whippedCream <- \() new(
  Class = 'whippedCream', 
  matcha_tsp = c(Sencha_everyday_matcha = 1.5), 
  sugar_tsp = 3.5)

#' @rdname whippedCream-class
#' @export
cocoa_whippedCream <- \() new(
  Class = 'whippedCream', 
  cocoa_tsp = c(KingArthur_Bensdorp = 3), 
  sugar_tsp = 4.5)











#' @rdname whippedCream-class
#' @aliases mascarponeFrosting-class
#' @export
setClass(Class = 'mascarponeFrosting', contains = 'recipe', prototype = prototype(
  class2 = 'Mascarpone\u88f1\u82b1',
  dairy_cup = c(BelGioioso_mascarpone = 1)#,
  #instruction (legacy) = c(
  #  'KitchenAid stand mixer: mix and whisk until stiff'
  #),
  # note (legacy) = 'For piping'
))

setValidity(Class = 'mascarponeFrosting', method = \(object) {
  if (length(object@water)) stop('Use `frosting` recipe instead')
})



#' @rdname whippedCream-class
#' @aliases frosting-class
#' @export
setClass(Class = 'frosting', contains = 'recipe', prototype = prototype(
  class2 = '\u79d8\u5236\u88f1\u82b1',
  dairy_cup = c(BelGioioso_mascarpone = .5),
  dairy = c(Nancys_yogurt = 80) # not tried yet
))

setValidity(Class = 'frosting', method = \(object) {
  if (length(object@water)) stop('do not add water in `frosting`')
  if (length(object@puree)) {
    stop('frosting with mascarpone+yogurt base already contains a lot of water. Cannot use puree. Use powder instead')
  }
})

#' @rdname whippedCream-class
#' @aliases mascarponeGanache-class
#' @export
setClass(Class = 'mascarponeGanache', contains = 'recipe', prototype = prototype(
  class2 = 'Mascarpone\u5976\u6cb9\u971c',
  dairy_cup = c(BelGioioso_mascarpone = 1),
  portion = c('mille cre\u0302pe cake 11in' = 1000)#,
  #instruction (legacy) = c(
  #  'KitchenAid stand mixer: mix and whisk until soft peak'
  #)
))


setValidity(Class = 'mascarponeGanache', method = \(object) {
  if (length(object@water)) stop('Use `ganache` recipe instead')
})

#' @rdname whippedCream-class
#' @aliases ganache-class
#' @export
setClass(Class = 'ganache', contains = 'recipe', prototype = prototype(
  class2 = '\u79d8\u5236\u5976\u6cb9\u971c',
  dairy_cup = c(BelGioioso_mascarpone = .5),
  dairy = c(Nancys_yogurt = 120), # cannot further increase yogurt!! flavor of yogurt very strong already!!
  portion = c('mille cre\u0302pe cake 11in' = 1000)
))





#' @rdname whippedCream-class
#' @export
matcha_frosting <- \() new(
  Class = 'frosting', 
  sugar_tsp = 8, 
  matcha_tsp = c(Sencha_everyday_matcha = 3.5), 
  review = 'try')

#' @rdname whippedCream-class
#' @export
matcha_ganache <- \() new(
  Class = 'ganache', 
  # sugar = 30, matcha_tsp = c(Sencha_everyday_matcha = 4), # too hard after chilled
  water = 15, sugar = 32, matcha_tsp = c(Sencha_everyday_matcha = 4), # try
  review = 'try')


#' @rdname whippedCream-class
#' @export
pumpkin_mascarponeFrosting <- \() new(
  Class = 'mascarponeFrosting', 
  puree = c(Libbys_pumpkin = 100), 
  #sugar_tsp = 7.5, # was
  sugar = c(Domino_darkBrown = 22), # new
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1/4+1/8), # new
  review = 'retry',
  pros = 'Effie\'s Signature!')

#' @rdname whippedCream-class
#' @export
pineapple_mascarponeFrosting <- \() new(
  Class = 'mascarponeFrosting', 
  puree = c(Dole_pineapple = 100), 
  sugar_tsp = 6, 
  pros = 'Effie\'s Signature!')


#' @rdname whippedCream-class
#' @export
cocoa_frosting <- \() new(
  Class = 'frosting', 
  flavor = 'keke', 
  sugar_tsp = 13, cocoa_Tbsp = c(KingArthur_Bensdorp = 3), review = 'try')


#' @rdname whippedCream-class
#' @export
tiramisuFrosting_Kahlua <- \() new(
  Class = 'frosting',
  liqueur_tsp = c(Kahlua_coffee = 5.5),
  sugar_tsp = 4,
  review = 'try'
)





#' @rdname whippedCream-class
#' @aliases mascarponeSpread-class
#' @export
setClass(Class = 'mascarponeSpread', contains = 'mascarponeGanache', prototype = prototype(
  class2 = 'Mascarpone\u5939\u5fc3',
  portion = numeric()
))



#' @rdname whippedCream-class
#' @export
cocoa_ganache <- \() new(
  Class = 'ganache',  
  sugar_tsp = 13, 
  cocoa_tsp = c(KingArthur_Bensdorp = 7),
  review = 'try')


coffee_ganache <- \() new(
  Class = 'ganache',
  sugar_tsp = 7, 
  coffee_Tbsp = c(NescafeGold_blonde = 1),
  review = 'try')


#' @rdname whippedCream-class
#' @export
durian_ganache <- \() new(
  Class = 'ganache', flavor = '\u69b4\u83b2',
  puree = c(LuckyTaro_durian = 300), 
  sugar = 10,
  review = 'try')


coconut_mascarponeGanache <- \() new(
  Class = 'mascarponeGanache', 
  flavor = '\u6930\u5b50\U1f965',
  beverage = c(Freenow_coconutBar = 50),
  review = 'try'
)



#' @rdname whippedCream-class
#' @export
tiramisuGanache_Kahlua <- \() new(
  Class = 'ganache',
  liqueur_Tbsp = c(Kahlua_coffee = 2),
  sugar_tsp = 4.5,
  review = 'try'
)
  
if (FALSE) {
  new(
    Class = 'recipe', 
    class2 = 'Mascarpone\u5976\u6cb9\u971c',
    dairy_cup = c(BelGioioso_mascarpone = 1),
    liqueur_Tbsp = c(Kahlua_coffee = 2),
    water = 47,
    sugar_tsp = 4.5,
    pros = 'I like')
}
  
  

#' @rdname whippedCream-class
#' @export
tiramisuSpread_Kahlua <- \() new(
  Class = 'mascarponeSpread',
  liqueur_Tbsp = c(Kahlua_coffee = 5),
  review = c('try'))

#' @rdname whippedCream-class
#' @export
tiramisuSpread_CafeGranita <- \() new(
  Class = 'mascarponeSpread',
  liqueur_Tbsp = c(CafeGranita_coffee = 5),
  review = c('try'))






#' @rdname whippedCream-class
#' @export
pineapple_ganache <- \() new(
  Class = 'mascarponeGanache', 
  puree = c(Dole_pineapple = 190), sugar_tsp = 5, 
  pros = 'I love!!')

#' @rdname whippedCream-class
#' @export
pumpkin_ganache <- \() new(
  Class = 'mascarponeGanache',
  puree = c(Libbys_pumpkin = 325), sugar_tsp = 11,
  pros = 'Very forgiving: adding pumpkin puree almost do not change the texture!', 
  cons = 'No longer holds air well though; do not further increase pumpkin puree')











#' @rdname whippedCream-class
#' @export
tiramisu_nytimes <- \() new(
  Class = 'recipe', flavor = 'Tiramisu', 
  egg_pc = c(eggYolk = 4),
  sugar = 100, 
  dairy = c(Wegmans_heavyCream = 180),
  dairy_cup = c(BelGioioso_mascarpone = 1),
  nytimes = '1018684')




#' @rdname whippedCream-class
#' @export
foodandjourneys_mascarponeFrosting <- \() new(
  Class = 'mascarponeFrosting', author = 'Food & Journeys',
  sugar_cup = c(Domino_10x = 1/3),
  # ▢ 1 vanilla bean, seeded
  dairy_cup = c(Lucerne_lightCream = 1),
  url = 'https://foodandjourneys.net/how-to-make-mascarpone-cream/')

#' @rdname whippedCream-class
#' @export
lifeloveandsugar_mascarponeFrosting <- \() new(
  Class = 'mascarponeFrosting', flavor = 'Life Love & Sugar',
  dairy_cup = c(Wegmans_heavyCream = 1.25),
  sugar_cup = c(Domino_10x = 3/4),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1),
  url = 'https://www.lifeloveandsugar.com/stabilized-mascarpone-whipped-cream/')

#' @rdname whippedCream-class
#' @export
lifeloveandsugar_cocoa_mascarponeFrosting <- \() new(
  Class = 'mascarponeFrosting', flavor = 'Life Love & Sugar, Cocoa',
  dairy_cup = c(Wegmans_heavyCream = 1.25),
  sugar_cup = c(Domino_10x = 1/2),
  cocoa_cup = c(KingArthur_Bensdorp = 1/4),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1),
  url = 'https://www.lifeloveandsugar.com/stabilized-mascarpone-whipped-cream/')

#' @rdname whippedCream-class
#' @export
Marcellina_mascarponeFrosting <- \() new(
  Class = 'mascarponeFrosting', 
  flavor = 'Marcellina in Cucina',
  dairy_cup = c(Wegmans_heavyCream = 1),
  sugar_cup = c(Domino_10x = 1/4),
  vanilla_tsp = c(NielsenMassey_Madagascar = 2),
  url = 'https://www.marcellinaincucina.com/mascarpone-cream/')



#' @rdname whippedCream-class
#' @aliases whippedCreamCheese-class
#' @export
setClass(Class = 'whippedCreamCheese', contains = 'recipe', prototype = prototype(
  class2 = '\u6253\u53d1Cream Cheese',
  dairy_brick = c(Nancys_creamCheese = 1)
))  
  
#' @rdname whippedCream-class
#' @export
whippedCreamCheese <- \() new(
  Class = 'whippedCreamCheese', 
  water = 40, # needs to experiment!!
  sugar = 12,
  review = 'a hypothetical model')


