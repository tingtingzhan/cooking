


setClass(Class = 'shrimpfill', contains = 'recipe', prototype = prototype(
  alias_class = '\u867e\U0001f990\u8089\u9985',
  shrimp = c(Kirkland_shrimp_31_40 = 850), # drained from 2lb package
  KSM8990 = KSM8990(
    treatment = 'Meat chopper, not grinder',
    program = 'Level 4',
    attachment = 'Paddle attachment',
    minute = 3
  )  
))

#' @title Shrimp Filling Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' diagnose_(
#'   shrimpfillCantonese,
#'   shrimpball,
#'   shrimpmash
#' )
#' 
#' diagnose_(
#'  shrimpfillCantonese,
#'  whiteSwan_shrimpfill,
#'  Daat_shrimpfill,
#'  subtract(Daat_shrimpfill, vegetable = c(bambooShoot = 90))
#' )
#' 
#' @name shrimpfill
#' @aliases shrimpfillCantonese-class
#' @export
setClass(Class = 'shrimpfillCantonese', contains = 'shrimpfill', prototype = prototype(
  alias_flavor = '\u5e7f\u5e9c\u65e9\u8336\u98ce\u5473',
  
  pork = c(fat = 200),
  
  starch_tsp = c(Wegmans_corn = 7),
  spice = c(LeeKumKee_chickenBouillon = 5), # adding
  sesameOil_tsp = 3,
  sugar_tsp = 3,
  
  # ginger_tsp = 1/4,
  ginger_tsp = 1/2, # new
  
  #whitePepper_tsp = 1/2,
  whitePepper_tsp = 1/2 + 1/4, #new
  
  portion = meatfill_portion(), 
  note = meatfill_note()
))

#' @rdname shrimpfill
#' @export
shrimpfillCantonese <- function() new(Class = 'shrimpfillCantonese', review = 'try again')
  
#' @rdname shrimpfill
#' @export
shrimpfillCantonese_Argentine <- function() new(
  Class = 'shrimpfillCantonese', 
  shrimp = c(Kirkland_shrimpArgentine = 850), 
  salt_tsp = 1/4, 
  pork = c(fat = 200),
  starch_tsp = c(Wegmans_corn = 7),
  sesameOil_tsp = 3,
  sugar_tsp = 3,
  ginger_tsp = 1/4,
  whitePepper_tsp = 1/2,
  pros = 'I love', cons = 'Too expensive')

shrimpfillCantonese_OLD <- function() new(
  Class = 'recipe', 
  shrimp = c(Kirkland_shrimp_31_40 = 850), # drained from 2lb package
  pork = c(fat = 200),
  starch_tsp = c(Wegmans_corn = 7),
  sesameOil_tsp = 3,
  sugar_tsp = 3,
  ginger_tsp = 1/4,
  whitePepper_tsp = 1/2,
  pros = 'Inna',
  cons = 'Not salty enough')



setClass(Class = 'shrimpfillMaine', contains = 'shrimpfill', prototype = prototype(
  alias_flavor = 'Maine\u9f99\u867e\u5377\u98ce\u5473', 
  starch_Tbsp = c(Wegmans_corn = 2),
  #butter = 150, # 780/227*42.5 = 146
  butter_cup = 1/2, # 115g all butter stays in bao!
  # 8oz (227g) lobster + 3Tbsp (42.5) butter # https://drivemehungry.com/connecticut-lobster-roll-warm-lobster-roll/#recipe
  # 1lb (454g) lobster + 6Tbsp butter + 3Tbsp dill #https://www.howsweeteats.com/2021/06/buttery-lobster-rolls/
  # chives toxic to dogs!!
  garlic_tsp = 1, # my guess
  paprika_tsp = 3,
  spice_Tbsp = c(
    SimplyOrganic_dill = 2, # 780/454*3 = 5.15 fresh dill
    McCormick_chive = 4#, # 780/454*(1/4)*16 = 6.87 fresh chive
    #FrontierCoop_harissa = .5
  ),
  portion = meatfill_portion(), 
  note = meatfill_note()
))


shrimpfillMaine <- function() new(
  Class = 'shrimpfillMaine',
  review = 'try!'
)



#' @rdname shrimpfill
#' @aliases shrimpfill_garlicHerb-class
#' @export
setClass(Class = 'shrimpfill_garlicHerb', contains = 'shrimpfill', prototype = prototype(
  alias_flavor = 'Wegmans\u849c\u9999\u98ce\u5473', 
  
  #starch_tsp = c(Wegmans_corn = 7), # old experiment
  starch_tsp = c(Wegmans_corn = 6), # 
  
  #salt_tsp = 1/8, # wait, no
  oil = c(Wegmans_basting = 150),
  
  #garlic_tsp = 1, # still too strong!!
  # !!! remove garlic completely! Wegman's basting oil contains garlic flavor
  
  whitePepper_tsp = 1/4,
  flavor = c(
    CountryTime_Lemonade = 10
  ),
  portion = meatfill_portion(), 
  note = c(
    'To copy Wegmans_garlicShrimp()',
    meatfill_note()
  )
))

shrimpfill_garlicHerb <- function() new(Class = 'shrimpfill_garlicHerb', review = 'try next')







#' @rdname shrimpfill
#' @aliases shrimpfill_oldBay-class
#' @export
setClass(Class = 'shrimpfill_oldBay', contains = 'shrimpfill', prototype = prototype(
  alias_flavor = 'Wegmans Old Bay\u98ce\u5473',
  starch_Tbsp = c(Wegmans_corn = 2),
  oil = c(Wegmans_basting = 200),
  # garlic_tsp = 1, # try without
  whitePepper_tsp = 1/8, # 
  flavor = c(
    CountryTime_Lemonade = 8
  ),
  spice_Tbsp = c(
    McCormick_oldBay_lowSodium = 1.5
  ),
  portion = meatfill_portion(), 
  note = c(
    'To copy Wegmans_oldBayShrimp()',
    meatfill_note()
  )
))

#' @rdname shrimpfill
#' @export
shrimpfill_oldBay <- function() new(
  Class = 'shrimpfill_oldBay', 
  shrimp = c(Kirkland_shrimpArgentine = 800), 
  review = 'try')




Wegmans_grilledShrimp <- function() new(
  Class = 'nutrition', wegmans = 208419L,
  name = 'Grilled Shrimp w. Basting Oil',
  # (Shrimp [Shrimp, Water, Salt, Sugar], Basting Oil [Safflower Oil, Sunflower Oil, Natural Flavor], Garlic [Garlic, Water, Citric Acid]).
  servingGram = 85,
  calorie = 90,
  fat = 2, cholesterol = .145, sodium = .85, protein = 18)


Wegmans_oldBayShrimp <- function() new(
  Class = 'nutrition', wegmans = 25758L,
  name = 'Old Bay Garlic & Herb Shrimp',
  # Fresh Cooked Shrimp (Shrimp, Water, Salt, Sugar), Basting Oil (Soybean Oil, Dried Thyme, Dried Parsley, Natural Garlic Flavor), Chopped Garlic (Garlic, Extra Virgin Olive Oil, Water, Citric Acid), Old Bay Seasoning (Celery Salt [Salt, Celery Seed], Spices [including Red Pepper and Black Pepper], and Paprika), Rosemary.
  servingGram = 85,
  calorie = 110,
  fat = 3.50, cholesterol = .160, sodium = .360, protein = 20)

Wegmans_garlicShrimp <- function() new(
  Class = 'nutrition', wegmans = 38730L,
  name = 'Garlic Herb Shrimp',
  # Ingredients: Fresh Cooked Shrimp (Shrimp, Water, Salt, Sugar), Basting Oil (Soybean Oil, Dried Thyme, Dried Parsley, Natural Garlic Flavor), Chopped Garlic (Garlic, Extra Virgin Olive Oil, Water, Citric Acid), Parsley, Kosher Salt, Ground Black Pepper, Crystallized Lemon (Citric Acid, Lemon Oil, Lemon Juice).
  usd = 29.99/454*85, # Feb 2024
  servingGram = 85,
  calorie = 130,
  fat = 6, cholesterol = .155, sodium = .500, carbohydrate = 1, protein = 19,
  review = 'a little too salty, otherwise perfect!!')


# Analyze!!!
# costco cilantro lime shrimp ???



#' @rdname shrimpfill
#' @export
Daat_shrimpfill <- function() new(
  Class = 'daatgo', alias_flavor = '\u867e\U0001f990\u997a\u9985', youtube = 'SYLIYqVV2N4',
  shrimp = 600, lard = 30, pork = c(fat = 120),
  vegetable = c(bambooShoot = 90),
  starch = c(Wegmans_corn = 13),
  salt = 12, msg = 22,
  sugar = 28, sesameOil = 12, whitePepper_tsp = 1/4)

#' @rdname shrimpfill
#' @export
whiteSwan_shrimpfill <- function() new(
  Class = 'recipe', author = '\u5929\u9e45\u7f8e\u98df', alias_flavor = '\u867e\U0001f990\u997a\u9985', youtube = 'z4b1a9FTc6U',
  shrimp = 250, pork = c(fat = 50), lard = 35,
  salt = 3, msg = 2,
  sugar = 3, sesameOil = 3.5, whitePepper_tsp = 1/8)


