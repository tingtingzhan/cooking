

#' @title \linkS4class{beeffillLeeKumKee} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' beeffillLeeKumKee()
#' 
#' 
#' @references
#' \url{https://youtu.be/cG79uQAbIVM}, beef 60%, beef tendon 40%.
#' 
#' \url{https://youtu.be/5nJKNVBRztM}
#' 
#' @name beeffill
#' @aliases beeffill-class
#' @export
setClass(Class = 'beeffill', contains = 'recipe', prototype = prototype(
  alias_class = '\u725b\U0001f402\u8089\u9985',
  # 1kg beef, with only a little fat
  beef = c(brisket_flat = 350, brisket_flat_lean = 650), # fat tastes enough
  
  water = 200, 
  #starch_Tbsp = c(Wegmans_corn = 5), # for 2.5% sodium
  starch_Tbsp = c(Wegmans_corn = 5.5), # for 3.6% sodium
  
  KSM8990 = KSM8990(
    treatment = c(
      'Cut meat into 1inch cubes. Soak in water overnight in fridge',
      'Drain and squeeze dry',
      'Meat chopper, not grinder'
    ),
    program = 'Level 4',
    attachment = 'Paddle attachment',
    minute = 3
  ),
  
  
  portion = c(
    '\u9984\u9968 wonton' = 15,
    '\u997a\u5b50 gyoza' = 15,
    # '35g bao wrapper \u5305\u5b5035g\u76ae' = 20, # I can do nicely
    '\u5927\u5305\u5b50 50g bao wrapper\U0001f389' = 40 # super successful!!
  ), 
  note = c(
    'Extra can be made into meatmash()',
    'Must use beef cut with lots of connective tissue, such as brisket (default, cheapest). Not beef-for-stew'
  )
))
  


#' @rdname beeffill
#' @aliases beeffillLeeKumKee-class
#' @export
setClass(Class = 'beeffillLeeKumKee', contains = 'beeffill', prototype = prototype(
  alias_flavor = '\u674e\u9526\u8bb0\u4e94\u9999\u9ed1\u6912',
  
  #beef = c(brisket_flat = 850), pork = c(fat = 150), 
  # dog no diarrhea, but a little too fat for me
  # also, 100g water a little too dry!!!
  
  greenPeppercornOil = 2, 
  sesameOil_tsp = 3,
  
  # add next time!!
  ginger_tsp = 1,
  whitePepper_tsp = 1/2,
  # cilantro_cup = 1/2, # forgot to buy this!!
  # end of add next time!!
  
  sauce = c(
    #LeeKumKee_5spiceMarinade = 25, LeeKumKee_blackPepper = 50 # sodium 2.5%, far from enough!
    LeeKumKee_5spiceMarinade = 25, LeeKumKee_blackPepper = 100 # sodium 3.6%, try
  )
))

#' @rdname beeffill
#' @export
beeffillLeeKumKee <- function() new(
  Class = 'beeffillLeeKumKee',
  pros = 'connect tissue very good!'
)




