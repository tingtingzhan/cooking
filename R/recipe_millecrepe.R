
#' @title \linkS4class{millecrepe} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' millecrepe()
#' matcha_millecrepe()
#' beet_millecrepe()
#' cocoa_millecrepe()
#' 
#' (beet_millecrepe() + matcha_ganache()) * 2.5 # retry
#' 
#' 
#' 
#' nutritionlist(
#'  millecrepe(),
#'  xiaogaojie_millecrepe(),
#'  iwen_mango_millecrepe(),
#'  lisa_mango_millecrepe())
#' 
#' nutritionlist(
#'  cocoa_millecrepe(),
#'  iwen_cocoa_millecrepe(),
#'  qiong_cocoa_millecrepe(),
#'  qiong_tiramisu_millecrepe())
#'  
#' nutritionlist(
#'  amanda_matcha_millecrepe(),
#'  oreomachi_matcha_millecrepe(), 
#'  matcha_millecrepe(),
#'  JustOne_matcha_millecrepe(),
#'  sweetTaste_matcha_millecrepe(),
#'  lisa_matcha_millecrepe())
#'  
#' @name millecrepe-class
#' @export
setClass(Class = 'millecrepe', contains = 'recipe', prototype = prototype(
  class2 = 'Mille Cre\u0302pe',
  portion = c('mille cre\u0302pe cake 11in' = 1100),
  flour = c(Wegmans_pastryFlr = 100),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  dairy = c(
    Wegmans_heavyCream = 85,
    Carnation_drymilk = 23
  ),
  water = 240#,
  # I can consistently achieve 170g water-lost using ladle
  # now I am good with rateau. 
  #instruction (legacy) = c(
  #  'Sift powder. Sift batter',
  #  'Cool crepe pan under running water down to below 100\u00b0C',
  #  'KitchenAid downdraft range: side 1, Low; side 2, turn off range',
  #  'Use rateau instead of ladle!'
  #)
))

setValidity(Class = 'millecrepe', method = \(object) {
  if (length(object@liqueur)) stop('Do not use `@liqueur` in millecrepe; cooked liqueur tastes wierd. Use in mascarponeGanache instead!')
})

#youtube = c(
#  'how to use rateau' = 'BeN3zKZ6qJ4',
#  'how to use ladle' = 'RIs-3KLk0gI'
#)


#' @rdname millecrepe-class
#' @export
millecrepe <- \() new(Class = 'millecrepe', pros = 'good hypothetical model')

#' @rdname millecrepe-class
#' @export
matcha_millecrepe <- \() new(
  Class = 'millecrepe',
  matcha_tsp = c(Sencha_everyday_matcha = 4), 
  # sugar_Tbsp = 2, # for heavyCream = 70
  sugar_tsp = 6.5, # for heavyCream = 85
  cons = 'matcha better made in filling, not in crepe')

#' @rdname millecrepe-class
#' @export
beet_millecrepe <- \() new(
  Class = 'millecrepe',
  misc_tsp = c(Wegmans_beet_pulv = 4),
  sugar_Tbsp = 2, 
  pros = c('Xu Chang'))

#' @rdname millecrepe-class
#' @export
cocoa_millecrepe <- \() new(
  Class = 'millecrepe',
  cocoa_tsp = c(KingArthur_Bensdorp = 9.5), 
  # dairy = c(Wegmans_heavyCream = 70), cocoa_Tbsp = c(KingArthur_Bensdorp = 3), sugar_Tbsp = 2, # not enough sugar
  sugar_tsp = 10.5, # try
  review = 'try again with dutch cocoa, natural cocoa already pretty good')


Kahlua_millecrepe_FAIL <- \() new(
  Class = 'millecrepe',
  liqueur_Tbsp = c(Kahlua_coffee = 4*2),
  sugar_tsp = numeric(),
  water = 190,
  cons = 'I don\'t like the taste of cooked liqueur')




#' @rdname millecrepe-class
#' @export
xiaogaojie_millecrepe <- \() new(
  Class = 'recipe', flavor = 'millecrepe',
  dairy = c(Kerrygold_butter = 25,
            WegmansOrganic_whole_milk = 300), # in grams in original recipe
  flour = c(Wegmans_pastryFlr = 100),
  sugar = 12, 
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  xiaogaojie = 'uZ626SU5T2I')

#' @rdname millecrepe-class
#' @export
iwen_mango_millecrepe <- \() new(
  Class = 'recipe', author = 'iwen', flavor = 'mango millecrepe',
  egg_pc = c(eggYolk = 6, eggWhite = 6),
  sugar = 75,
  flour = c(Wegmans_pastryFlr = 300),
  salt_tsp = 1/2,
  dairy = c(Kerrygold_butter = 100,
            WegmansOrganic_whole_milk = 750), # in grams in original recipe
  youtube = 'tIOzt4XWy7k')
  

#' @rdname millecrepe-class
#' @export
iwen_cocoa_millecrepe <- \() new(
  Class = 'recipe', author = 'iwen', flavor = '\u53ef\u53ef\u5343\u5c42',
  egg_pc = c(eggYolk = 6, eggWhite = 6),
  sugar = 75,
  cocoa = c(KingArthur_Bensdorp = 23),
  flour = c(KingArthur_allPurposeFlr = 240),
  salt_tsp = 1/2,
  dairy = c(Kerrygold_butter = 105,
            WegmansOrganic_whole_milk = 750), # in grams in original recipe
  starch = c(Wegmans_corn_starch = 37.5),
  youtube = 'Z7WcSVGa6R4')


#' @rdname millecrepe-class
#' @export
qiong_cocoa_millecrepe <- \() new(
  Class = 'recipe', author = '\u5927\u743c', flavor = '\u53ef\u53ef\u5343\u5c42', youtube = 'i8Ii4BZBkmg',
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  cocoa = c(KingArthur_Bensdorp = 10),
  dairy = c(Kerrygold_butter = 40,
            WegmansOrganic_whole_milk = 400), # in grams in original recipe
  sugar = 50,
  flour = c(Wegmans_pastryFlr = 80))

#' @rdname millecrepe-class
#' @export
qiong_tiramisu_millecrepe <- \() new(
  Class = 'recipe', author = '\u5927\u743c', flavor = 'tiramisu\u0300 millecrepe', youtube = 'xiVfrjTwaHw',
  egg_pc = c(eggYolk = 2, eggWhite = 2), #
  cocoa = c(KingArthur_Bensdorp = 8), #
  dairy = c(Kerrygold_butter = 30, #
            WegmansOrganic_whole_milk = 410), # in grams in original recipe
  # 15ml  Coffee Rum    1tbsp
  sugar = 50, #
  coffee = c(NescafeGold_blonde = 6.6), #
  flour = c(Wegmans_pastryFlr = 80)) #





#' @rdname millecrepe-class
#' @export
amanda_matcha_millecrepe <- \() new(
  Class = 'recipe', author = '\u66fc\u98df\u6162\u8bed', flavor = '\u62b9\u8336\u5343\u5c42',
  dairy = c(Kerrygold_butter = 50,
            WegmansOrganic_whole_milk = 650),
  flour = c(Wegmans_pastryFlr = 240),
  sugar = 90,
  egg_pc = c(eggWhite = 4, eggYolk = 4),
  matcha_tsp = c(Sencha_everyday_matcha = 4),
  youtube = 'Caopoyr53TY')

#' @rdname millecrepe-class
#' @export
sweetTaste_matcha_millecrepe <- \() new(
  Class = 'recipe', author = '\u4e00\u5c0f\u70b9', flavor = '\u62b9\u8336\u5343\u5c42', youtube = 'mU8rOo8_WrM',
  flour = c(Wegmans_pastryFlr = 80),
  starch = c(Wegmans_corn_starch = 15),
  matcha = c(Sencha_everyday_matcha = 5),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  sugar = 30,
  oil = c(Wegmans_vegetable_oil = 15),
  dairy = c(WegmansOrganic_whole_milk = 250) # in grams in original recipe
)

#' @rdname millecrepe-class
#' @export
oreomachi_matcha_millecrepe <- \() new(
  Class = 'recipe', author = 'oreomachi', flavor = '\u62b9\u8336\u5343\u5c42', youtube = '2WESa5wNK0o',
  dairy = c(Kerrygold_butter = 52,
            WegmansOrganic_whole_milk = 360,
            Wegmans_heavyCream = 140),
  sugar = 80,
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  flour = c(Wegmans_pastryFlr = 160),
  matcha = c(Sencha_everyday_matcha = 6),
  oil = c(Wegmans_vegetable_oil = 40)
  # Honey 40g ???
)

#' @rdname millecrepe-class
#' @export
lisa_matcha_millecrepe <- \() new(
  Class = 'recipe', author = '\u8428\u59d0', flavor = '\u62b9\u8336\u5343\u5c42', youtube = 'lP0p7qh3E1I',
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  matcha = c(Sencha_everyday_matcha = 8),
  sugar = 35,
  dairy = c(Kerrygold_butter = 30,
            Wegmans_heavyCream = 65,
            WegmansOrganic_whole_milk = 340),
  flour = c(Wegmans_pastryFlr = 90)
)

#' @rdname millecrepe-class
#' @export
lisa_mango_millecrepe <- \() new(
  Class = 'recipe', author = '\u8428\u59d0', flavor = 'mango millecrepe', youtube = '_Pz6_nKaebw',
  egg_pc = c(eggYolk = 2, eggWhite = 2), 
  sugar = 30, 
  dairy = c(Kerrygold_butter = 20,
            WegmansOrganic_whole_milk = 280), 
  flour = c(Wegmans_pastryFlr = 70) 
)

#' @rdname millecrepe-class
#' @export
JustOne_matcha_millecrepe <- \() new(
  Class = 'recipe', 
  flavor = '\u62b9\u8336\u5343\u5c42', 
  just1cookbook = c('vfUu0eedUYI' = 'matcha-mille-crepe-cake'),
  dairy_cup = c(Wegmans_whole_milk = 1.75),
  sugar = 12.5*3, # 3 Tbsp granulated sugar
  egg_pc = c(eggYolk = 3, eggWhite = 3),
  dairy = c(Kerrygold_butter = 25),
  flour = c(Wegmans_pastryFlr = 138),
  matcha_Tbsp = c(Sencha_everyday_matcha = 2),
  bakingPowder_tsp = .5)

