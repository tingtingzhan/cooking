

#' @title \linkS4class{meatmash} Recipes
#' 
#' @description
#' ..
#' 
#' @details
#' Do not add any more water!!
#' 
#' 
#' @examples
#' shrimpmash() # wow!!!
#' porkmash()
#' 
#' 
#' @export
setClass(Class = 'meatmash', contains = 'recipe', prototype = prototype(
  class2 = '\u6ed1',
  # 1000g meat, 780g super lean, 220g pork belly
  tool = list(KSM8990(
    treatment = 'Meat chopper, not grinder',
    program = 'Level 4',
    attachment = 'Paddle',
    minute = 3
  )),
  #note (legacy) = c(
  #  'Do not add salt, if served with salty gravy!',
  #  '2.5\u2030 sodium in meat batter osmoses enough salt into the soup!'
  #),
  portion = c(
    'meat-mash dispenser \u706b\u9505\u867e\u6ed1\u6a21\u5177' = 60
  )
))



#' @rdname meatmash-class
#' @export
porkmash <- \() new(
  Class = 'meatmash',
  meat = c(pork_tenderloin = 700, pork_belly = 300), # all-pork meatmash needs higher fat
  
  # without starch
  # egg_pc = c(eggWhite = 8), # water 8*34.7*.876 = 240
  # salt_tsp = 1.5, water = 200, # tenderloin 1000g
  
  starch_Tbsp = c(Wegmans_corn_starch = 3),
  
  water = 370, # theoretical value 433 = 200*.75+(8*34.7*.876)+40, # add water gradually
  
  sauce_tsp = c(
    Kikkoman_soy = 6,
    LeeKumKee_brownBraising = 1.5, # contains a lot of sugar!
    LeeKumKee_5spiceMarinade = 3,
    LeaPerrins_Worcestershire = 3
  ), 
  spice_tsp = c(
    McCormick_whitePepper = 1/2,
    SimplyOrganic_ginger = 1/4 + 1/8,
    McCormick_garlic = 1/8,
    SimplyOrganic_coriander = 1/4,
    Chinata_paprika = 1/2
  ),
  oil_Tbsp = c(Kadoya_sesame_oil = 1),
  oil_tsp = c(YaoMaZi_rattanPepper_oil = 1), # 3tsp too much
  review = 'retry!'
)




tilapiamash <- \() new(
  Class = 'meatmash',
  seafood = c(tilapia = 780), meat = c(pork_fat = 220),
  sugar_tsp = 4,
  spice_tsp = c(
    McCormick_whitePepper = 1/2,
    SimplyOrganic_ginger = 1/4
  ),
  salt_tsp = 1.25,
  starch_Tbsp = c(Wegmans_corn_starch = 3),
  water = 300,
  oil_Tbsp = c(Kadoya_sesame_oil = 1),
  review = 'try?'
)



#' @rdname meatmash-class
#' @export
shrimpmash <- \() new( # Super nice!!
  Class = 'meatmash', 
  # seafood = c(Kirkland_shrimp_c31 = 730), meat = c(pork_belly = 270), # lean pork meat does not taste well
  seafood = c(Kirkland_shrimp_c31 = 780), meat = c(pork_fat = 220), # should be really perfect!!
  sugar_tsp = 4,
  spice_tsp = c(
    McCormick_whitePepper = 1/2, # maybe too strong..
    SimplyOrganic_ginger = 1/4
  ),
  salt_tsp = .5, # perfect saltiness!
  starch_Tbsp = c(Wegmans_corn_starch = 3),
  water = 300,
  oil_Tbsp = c(Kadoya_sesame_oil = 1),
  pros = 'I love')



shrimpmash_Argentine <- \() new(
  Class = 'meatmash', 
  shrimpmash(),
  salt_tsp = 1/2 + 1/4,
  seafood = c(Kirkland_shrimpArgentine = 780),
  review = 'try')





