

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
#' @name meatmash
#' @aliases meatmash-class
#' @export
setClass(Class = 'meatmash', contains = 'recipe', prototype = prototype(
  alias_class = '\u6ed1',
  # 1000g meat, 780g super lean, 220g pork belly
  KSM8990 = KSM8990(
    treatment = 'Meat chopper, not grinder',
    program = 'Level 4',
    attachment = 'Paddle attachment',
    minute = 3
  ),
  note = c(
    'Do not add salt, if served with salty gravy!',
    '2.5\u2030 sodium in meat batter osmoses enough salt into the soup!'
  ),
  portion = c(
    'meat-mash dispenser \u706b\u9505\u867e\u6ed1\u6a21\u5177' = 60
  )
))



#' @rdname meatmash
#' @export
porkmash <- function() new(
  Class = 'meatmash',
  pork = c(tenderloin = 700, belly = 300), # all-pork meatmash needs higher fat
  
  # without starch
  # eggWhite_pc = 8, # water 8*34.7*.876 = 240
  # salt_tsp = 1.5, water = 200, # tenderloin 1000g
  
  starch_Tbsp = c(Wegmans_corn = 3),
  
  water = 370, # theoretical value 433 = 200*.75+(8*34.7*.876)+40, # add water gradually
  
  sauce_tsp = c(
    Kikkoman_soy = 6,
    LeeKumKee_brownBraising = 1.5, # contains a lot of sugar!
    LeeKumKee_5spiceMarinade = 3,
    LeaPerrins_Worcestershire = 3
  ), 
  garlic_tsp = 1/8,
  ginger_tsp = 1/4 + 1/8,
  whitePepper_tsp = 1/2,
  coriander_tsp = 1/4,
  paprika_tsp = 1/2,
  sesameOil_Tbsp = 1,
  greenPeppercornOil_tsp = 1, # 3tsp too much
  review = 'retry!'
)




tilapiamash <-function() new(
  Class = 'meatmash',
  seafood = c(tilapia = 780), pork = c(fat = 220),
  sugar_tsp = 4,
  ginger_tsp = 1/4,
  whitePepper_tsp = 1/2,
  salt_tsp = 1.25,
  starch_Tbsp = c(Wegmans_corn = 3),
  water = 300,
  sesameOil_Tbsp = 1,
  review = 'try?'
)



#' @rdname meatmash
#' @export
shrimpmash <- function() new( # Super nice!!
  Class = 'meatmash', 
  # shrimp = 730, pork = c(belly = 270), # lean pork meat does not taste well
  shrimp = 780, pork = c(fat = 220), # should be really perfect!!
  sugar_tsp = 4,
  ginger_tsp = 1/4,
  whitePepper_tsp = 1/2, # maybe too strong..
  salt_tsp = .5, # perfect saltiness!
  starch_Tbsp = c(Wegmans_corn = 3),
  water = 300,
  sesameOil_Tbsp = 1,
  pros = 'I love')



shrimpmash_Argentine <- function() new(
  Class = 'meatmash', 
  shrimpmash(),
  salt_tsp = 1/2 + 1/4,
  shrimp = c(Kirkland_shrimpArgentine = 780),
  review = 'try')





