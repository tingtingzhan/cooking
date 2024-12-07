

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
#' @name snowSkin
#' @aliases snowSkin-class
#' @export
setClass(Class = 'snowSkin', contains = 'recipe', prototype = prototype(
  alias_class = '\u51b0\u76ae', 
  glutinousRiceFlour = 50, riceFlour = 50, 
  starch = c(ManSang_wheat = 25),
  water = 185,
  drymilk = c(Carnation = 15),
  butter = 6,
  portion = c(mochi = 5, 'mooncake 30g' = 15, 'potsticker' = 20),
  instruction = c(
    'Transfer steamed dough to *plastic* bowl, e.g., OXO Good Grips batter bowl',
    'Wear plastic gloves. Knead in (chilled) butter while still hot',
    '(Optional) Knead in dry flavoring. Exceptions are ginger, etc.'
  ),
  note = c(
    'Must knead in plastic bowl; sticks to glass or ceramic bowl'
  ),
  youtube = 'L7a1d4dj1rs', 
  
  RobamCT763 = RobamCT763(
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
  )
  
))





#' @rdname snowSkin
#' @export
matcha_snowSkin <- function() new(
  Class = 'snowSkin', 
  matcha_Tbsp = c(Sencha_everyday_matcha = 1), 
  #matcha_tsp = 5, # high sugar filling
  pros = c(
    'Use matcha_tsp=5 (but no more!) for high-sugar filling, e.g., canned adzuki bean paste',
    'Goes best with pumpkin_custardFilling()'
  ))


#' @rdname snowSkin
#' @export
beet_snowSkin <- function() new(
  Class = 'snowSkin',
  beet_tsp = 1, 
  pros = c(
    'Goes best with pineapple_custardFilling()'
  ))

#' @rdname snowSkin
#' @export
acai_snowSkin <- function() new(Class = 'snowSkin', acai_tsp = 2, pros = 'I love')
  
#' @rdname snowSkin
#' @export
cocoa_snowSkin <- function() new(
  Class = 'snowSkin', 
  cocoa_tsp = c(KingArthur_Bensdorp = 1.5), 
  pros = 'I love (natural cocoa); retry with dutch cocoa')

#' @rdname snowSkin
#' @export
coffee_snowSkin <- function() new(
  Class = 'snowSkin',
  coffee_Tbsp = c(NescafeGold_espresso_blonde = 1.75),
  review = 'try')

#' @rdname snowSkin
#' @export
ginger_snowSkin <- function() new(
  Class = 'snowSkin',
  ginger_tsp = 1/4,
  review = 'try')


