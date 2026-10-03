

#' @title \linkS4class{snowSkin} Recipes
#' 
#' @description ..
#' 
#' @note 
#' 
#' Wheat starch can be replaced by potato starch.
#' 
#' Thai Erawan glutinous rice flour can be replaced by Korean Wang brand.
#' 
#' Do not increase dry milk.
#' 
#' Do not use puree for \linkS4class{snowSkin}, difficult to manage fluidity, 
#' (glutinous) rice flour and starch won\'t dissolve.
#' 
#' @examples 
#' matcha_snowSkin() # super nice!!
#' beet_snowSkin()
#' acai_snowSkin()
#' cocoa_snowSkin()
#' 
#' @name snowSkin-class
#' @export
setClass(Class = 'snowSkin', contains = 'recipe', prototype = prototype(
  class2 = '\u51b0\u76ae', 
  flour = c(Erawan_glutinousRiceFlr = 50, 
            Erawan_riceFlr = 50), 
  starch = c(ManSang_wheat_starch = 25),
  water = 185,
  dairy = c(Kerrygold_butter = 6,
            Carnation_drymilk = 15),
  portion = c(mochi = 5, 'mooncake 30g' = 15, 'potsticker' = 20),
  #instruction (legacy) = c(
  #  'Transfer steamed dough to *plastic* bowl, e.g., OXO Good Grips batter bowl',
  #  'Wear plastic gloves. Knead in (chilled) butter while still hot',
  #  paste(col_green('optional'), 'knead in dry flavoring. Exceptions are ginger, etc.')
  #),
  #note (legacy) = c(
  #  'Must knead in plastic bowl; sticks to glass or ceramic bowl'
  #),
  youtube = 'L7a1d4dj1rs', 
  
  tool = list(RobamCT763(
    treatment = c(
      'Whisk everything, except butter and flavoring',
      'Cover with plastic wrap'
    ),
    cooling = c(
      'Stand, with plastic wrap cover, in cold water for 1min'
    ),
    recipe_pc = 1,
    program = 'Steam',
    fahrenheit = 210, 
    minute = 14 # tested!
  ))
  
))





#' @rdname snowSkin-class
#' @export
matcha_snowSkin <- \() new(
  Class = 'snowSkin', 
  matcha_Tbsp = c(Sencha_everyday_matcha = 1), 
  #matcha_tsp = c(Sencha_everyday_matcha = 5), # high sugar filling
  pros = c(
    'Use matcha_tsp=5 (but no more!) for high-sugar filling, e.g., canned adzuki bean paste',
    'Goes best with pumpkin_custardFilling()'
  ))


#' @rdname snowSkin-class
#' @export
beet_snowSkin <- \() new(
  Class = 'snowSkin',
  misc_tsp = c(Wegmans_beet_pulv = 1), 
  pros = c(
    'Goes best with pineapple_custardFilling()'
  ))

#' @rdname snowSkin-class
#' @export
acai_snowSkin <- \() new(
  Class = 'snowSkin', 
  misc_tsp = c(Wegmans_acai_pulv = 2), 
  pros = 'I love')
  
#' @rdname snowSkin-class
#' @export
cocoa_snowSkin <- \() new(
  Class = 'snowSkin', 
  cocoa_tsp = c(KingArthur_Bensdorp = 1.5), 
  pros = 'I love (natural cocoa); retry with dutch cocoa')

#' @rdname snowSkin-class
#' @export
coffee_snowSkin <- \() new(
  Class = 'snowSkin',
  coffee_Tbsp = c(NescafeGold_blonde = 1.75),
  review = 'try')

#' @rdname snowSkin-class
#' @export
ginger_snowSkin <- \() new(
  Class = 'snowSkin',
  spice_tsp = c(SimplyOrganic_ginger = 1/4),
  review = 'try')


