


setClass(Class = 'shrimpfill', contains = 'recipe', prototype = prototype(
  class2 = '\u867e\U1f990\u8089\u9985',
  seafood = c(Kirkland_shrimp_c31 = 850), # drained from 2lb package
  tool = list(KSM8990(
    treatment = 'Meat chopper, not grinder',
    program = 'Level 4',
    attachment = 'Paddle',
    minute = 3
  ))  
))

#' @title Shrimp Filling Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' nutritionlist(
#'   shrimpfillCantonese(),
#'   shrimpball(),
#'   shrimpmash()
#' )
#' 
#' nutritionlist(
#'  shrimpfillCantonese(),
#'  whiteSwan_shrimpfill(),
#'  Daat_shrimpfill(),
#'  subtract(Daat_shrimpfill, vegetable = c(bambooShoot = 90))
#' )
#' 
#' @name shrimpfillCantonese-class
#' @export
setClass(Class = 'shrimpfillCantonese', contains = 'shrimpfill', prototype = prototype(
  flavor = '\u5e7f\u5e9c\u65e9\u8336\u98ce\u5473',
  
  meat = c(pork_fat = 200),
  
  starch_tsp = c(Wegmans_corn_starch = 7),
  spice = c(LeeKumKee_chickenBouillon = 5), # adding
  oil_tsp = c(Kadoya_sesame_oil = 3),
  sugar_tsp = 3,
  
  spice_tsp = c(
    #McCormick_whitePepper = 1/2,
    McCormick_whitePepper = 1/2 + 1/4, #new
    #SimplyOrganic_ginger = 1/4
    SimplyOrganic_ginger = 1/2 # new
  ), 
  
  portion = meatfill_portion()#, 
  #note (legacy) = meatfill_note()
))

#' @rdname shrimpfillCantonese-class
#' @export
shrimpfillCantonese <- \() new(Class = 'shrimpfillCantonese', pros = 'I love!')
  
#' @rdname shrimpfillCantonese-class
#' @export
shrimpfillCantonese_Argentine <- \() new(
  Class = 'shrimpfillCantonese', 
  seafood = c(Kirkland_shrimpArgentine = 850), 
  salt_tsp = 1/4, 
  meat = c(pork_fat = 200),
  starch_tsp = c(Wegmans_corn_starch = 7),
  oil_tsp = c(Kadoya_sesame_oil = 3),
  sugar_tsp = 3,
  spice_tsp = c(
    McCormick_whitePepper = 1/2,
    SimplyOrganic_ginger = 1/4
  ),
  pros = 'I love', cons = 'Too expensive')

shrimpfillCantonese_OLD <- \() new(
  Class = 'recipe', 
  seafood = c(Kirkland_shrimp_c31 = 850), # drained from 2lb package
  meat = c(pork_fat = 200),
  starch_tsp = c(Wegmans_corn_starch = 7),
  oil_tsp = c(Kadoya_sesame_oil = 3),
  sugar_tsp = 3,
  spice_tsp = c(
    McCormick_whitePepper = 1/2,
    SimplyOrganic_ginger = 1/4
  ),
  cons = 'Not salty enough')



setClass(Class = 'shrimpfillMaine', contains = 'shrimpfill', prototype = prototype(
  flavor = 'Maine\u9f99\u867e\u5377\u98ce\u5473', 
  starch_Tbsp = c(Wegmans_corn_starch = 2),
  #butter = 150, # 780/227*42.5 = 146
  dairy_cup = c(Kerrygold_butter = 1/2), # 115g all butter stays in bao!
  # 8oz (227g) lobster + 3Tbsp (42.5) butter # https://drivemehungry.com/connecticut-lobster-roll-warm-lobster-roll/#recipe
  # 1lb (454g) lobster + 6Tbsp butter + 3Tbsp dill #https://www.howsweeteats.com/2021/06/buttery-lobster-rolls/
  # chives toxic to dogs!!
  spice_tsp = c(
    McCormick_garlic = 1, # my guess
    Chinata_paprika = 3
  ),
  spice_Tbsp = c(
    SimplyOrganic_dill = 2, # 780/454*3 = 5.15 fresh dill
    McCormick_chive = 4#, # 780/454*(1/4)*16 = 6.87 fresh chive
    #FrontierCoop_harissa = .5
  ),
  portion = meatfill_portion()#, 
  # note (legacy) = meatfill_note()
))


shrimpfillMaine <- \() new(
  Class = 'shrimpfillMaine',
  review = 'try!'
)



#' @rdname shrimpfillCantonese-class
#' @aliases shrimpfill_garlicHerb-class
#' @export
setClass(Class = 'shrimpfill_garlicHerb', contains = 'shrimpfill', prototype = prototype(
  flavor = 'Wegmans\u849c\u9999\u98ce\u5473', 
  
  #starch_tsp = c(Wegmans_corn_starch = 7), # old experiment
  starch_tsp = c(Wegmans_corn_starch = 6), # 
  
  #salt_tsp = 1/8, # wait, no
  oil = c(Wegmans_basting_oil = 150),
  
  #garlic_tsp = 1, # still too strong!!
  # !!! remove garlic completely! Wegman's basting oil contains garlic flavor
  
  spice_tsp = c(McCormick_whitePepper = 1/4),
  misc = c(
    CountryTime_Lemonade = 10
  ),
  portion = meatfill_portion()#, 
  # note (legacy) = c(
  #  'To copy Wegmans_garlicShrimp()',
  #  meatfill_note()
  #)
))

shrimpfill_garlicHerb <- \() new(Class = 'shrimpfill_garlicHerb', review = 'try next')







#' @rdname shrimpfillCantonese-class
#' @aliases shrimpfill_oldBay-class
#' @export
setClass(Class = 'shrimpfill_oldBay', contains = 'shrimpfill', prototype = prototype(
  flavor = 'Wegmans Old Bay\u98ce\u5473',
  starch_Tbsp = c(Wegmans_corn_starch = 2),
  oil = c(Wegmans_basting_oil = 200),
  # garlic_tsp = 1, # try without
  spice_tsp = c(McCormick_whitePepper = 1/8),
  misc = c(
    CountryTime_Lemonade = 8
  ),
  spice_Tbsp = c(
    McCormick_oldBay_lowSodium = 1.5
  ),
  portion = meatfill_portion()#, 
  #note (legacy) = c(
  #  'To copy Wegmans_oldBayShrimp()',
  #  meatfill_note()
  #)
))

#' @rdname shrimpfillCantonese-class
#' @export
shrimpfill_oldBay <- \() new(
  Class = 'shrimpfill_oldBay', 
  seafood = c(Kirkland_shrimpArgentine = 800), 
  review = 'try')





# Analyze!!!
# costco cilantro lime shrimp ???



#' @rdname shrimpfillCantonese-class
#' @export
Daat_shrimpfill <- \() new(
  Class = 'recipe', flavor = '\u867e\U1f990\u997a\u9985', 
  daatgo = 'SYLIYqVV2N4',
  seafood = c(Kirkland_shrimp_c31 = 600), 
  fat = c(Epic_lard = 30), meat = c(pork_fat = 120),
  vegetable = c(bambooShoot = 90),
  starch = c(Wegmans_corn_starch = 13),
  salt = 12, 
  msg = c(Ajinomoto_msg = 22),
  sugar = 28, 
  oil = c(Kadoya_sesame_oil = 12), 
  spice_tsp = c(McCormick_whitePepper = 1/4))

#' @rdname shrimpfillCantonese-class
#' @export
whiteSwan_shrimpfill <- \() new(
  Class = 'recipe', author = '\u5929\u9e45\u7f8e\u98df', flavor = '\u867e\U1f990\u997a\u9985', youtube = 'z4b1a9FTc6U',
  seafood = c(Kirkland_shrimp_c31 = 250), 
  meat = c(pork_fat = 50), fat = c(Epic_lard = 35),
  salt = 3, 
  msg = c(Ajinomoto_msg = 2),
  sugar = 3, 
  oil = c(Kadoya_sesame_oil = 3.5), 
  spice_tsp = c(McCormick_whitePepper = 1/8))


