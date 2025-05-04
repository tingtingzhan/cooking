
# shrimp ~880g, drained from 2lb package (Feb 2024)





meatfill_portion <- function() c(
  '\u9984\u9968 wonton' = 15,
  '\u997a\u5b50 gyoza' = 15,
  # '35g bao wrapper \u5305\u5b5035g\u76ae' = 20, # I can do nicely
  # '\u5927\u5305\u5b50 50g bao wrapper\U1f389' = 52 # too big
  '\u5305\u5b50 40g bao wrapper\U1f389' = 40 # too big
)

meatfill_note <- function() c(
  'Extra can be made into meatmash()'
)

#setClass(Class = 'meatfill', contains = 'recipe', prototype = prototype(
#  alias_class = '\u9985'
#))














setClass(Class = 'porkfill', contains = 'recipe', prototype = prototype(
  
))

porkfill <- function() new(
  Class = 'porkfill',
  pork = c(tenderloin = 500, belly = 500), # tiny too fat
  greenPeppercornOil_tsp = 1, sesameOil_Tbsp = 1,
  whitePepper_tsp = 1, ginger_tsp = 1, 
  coriander_tsp = 1/4, # 1/2 a tiny tiny too strong
  sauce = c(
    
    LeeKumKee_5spiceMarinade = 70 # really nice already!!
    
    # remember to buy Worcestershire sauce haha
    #LeeKumKee_5spiceMarinade = 60,
    #LeaPerrins_Worcestershire = 30
    
  ),
  starch_Tbsp = c(Wegmans_corn = 2.5),
  water = 100,
  review = 'perfect!!')




Jenny_chickenfill <- function() new(
  Class = 'recipe', author = 'Jenny', alias_flavor = '\u9e21\u817f\u8089\u9985',
  chicken = c(thigh = 500),
  shrimp = 300,
  #Rice wine 2Tbsp  / Vin de riz 2Tbsp
  sauce_Tbsp = c(
    Kikkoman_soy = 2,
    LeeKumKee_premium_oyster = 2
  ),
  sauce_tsp = c(
    LeeKumKee_chickenBouillon = 1/2
  ),
  salt_tsp = 1/2,
  #Chicken broth 3Tbsp / Bouillon de poulet 3Tbsp
  starch_Tbsp = c(Wegmans_corn = 1),
  egg_pc = 1,
  sesameOil_tsp = 2*3
)




#' @title \linkS4class{lambfill}
#' 
#' @name lambfill
#' @aliases lambfill-class
#' @export
setClass(Class = 'lambfill', contains = 'recipe', prototype = prototype(
  
))



#' @rdname lambfill
#' @export
xiaogaojie_lambfill <- function() new(
  Class = 'recipe', alias_flavor = '\u867e\u7f8a\u8089\u9985', 
  xiaogaojie = 'M6DD504lDac',
  portion = c(Baozi = 30),
  lamb = c(leg = 250),
  shrimp = 400,
  sauce_Tbsp = c(Kikkoman_soy = 1),
  whitePepper_tsp = 1/4,
  #葱白 50克
  ginger = 2, 
  salt_tsp = 1, 
  spice5_tsp = 1/8,
  #花椒粉_tsp = 1/8,
  eggWhite_pc = 1,
  sesameOil_tsp = 1
)



# below: no-so-successful experiments

salmonfill <- function() new(
  Class = 'recipe',
  seafood = c(salmonAtlantic = 1000),
  starch_Tbsp = c(Wegmans_corn = 2),
  sauce = c(
    mizkan_brownRiceVinegar = 40,
    Kikkoman_soyLite = 40
  ),
  spice_Tbsp = c(FrontierCoop_harissa = 1), # 2Tbsp too much
  ginger_tsp = 1/4,
  whitePepper_tsp = 1/2,
  sesameOil_Tbsp = 1,
  greenPeppercornOil_tsp = 1/2,
  review = c(
    'Not enough gelatin. Texture not right',
    'Effie loves though!'
  ))
