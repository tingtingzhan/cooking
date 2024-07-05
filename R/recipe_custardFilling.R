

#' @title \linkS4class{custardFilling} Recipes
#' 
#' @description ..
#' 
#' @details 
#' 
#' Current butter amount leaves no remaining oil visible in Joyoung CJ-A9U.
#' Do \strong{not} further reduced the butter amount, 
#' even when using oily flavoring (solid oil will not release during stir frying).
#' 
#' 
#' @note 
#' 
#' Use 30-gram mooncake mold only. 50-gram is very big.
#' 
#' Wheat starch can be replaced by sweet potato flour, potato starch, tapioca flour.
#' 
#' Stop trying with puree from frozen fruit, too expensive!
#' Also, to use large quantity of fruit puree, I have to use more butter (fat up to 11%),
#' which is a little too oily for me.
#' 
#' Also great for Tang Yuan filling.
#' 
#' @examples 
#' pineapple_custardFilling()
#' pumpkin_custardFilling()
#' apple_custardFilling()
#' 
#' 
#' 
#' # need to retry
#' coconut_custardFilling()
#' 
#' yellowPeach_custardFilling()
#' date_custardFilling()
#' 
#' # vegetable filling with added sugar
#' 
#' tomato_custardFilling()
#' 
#' # alternative oil
#' blackSesame_custardFilling()
#' 
#' @name custardFilling
#' @aliases custardFilling-class
#' @export
setClass(Class = 'custardFilling', contains = 'recipe', prototype = prototype(
  alias_class = '\u5976\u9ec4\u9985',
  starch = c(ManSang_wheat = 35),
  egg_pc = 3,
  portion = c(
    'mochi 10g wrapper \u9ebb\u85af10g\u76ae' = 5, 
    'mooncake 15g wrapper in 30g mold \u6708\u997c30g\u6a21\u5177' = 15,
    'potsticker' = 25,
    'bao 50g wrapper \u5305\u5b5050g\u76ae' = 40
  ),
  #JoyoungCJA9U = JoyoungCJA9U(
  #  treatment = c(
  #    'Cut (chilled) butter in mini chunks. Sprinkle on bottom of stir-frying pan; otherwise batter sticks and burns!',
  #    'Fold rest of ingredients. Pour into stir-frying pan, on top of sprinkled butter'
  #  ),
  #  program = 'Stir Fry \u7206\u7092'
  #),
  note = c(
    'Wheat starch \u21d4 sweet potato flour, potato starch, tapioca flour'
  ),
  youtube = 'L7a1d4dj1rs'
))


JoyoungCJA9U_filling <- function(operation) JoyoungCJA9U(
  treatment = c(
    'Cut (chilled) butter in mini chunks. Sprinkle on bottom of stir-frying pan; otherwise batter sticks and burns!',
    'Fold rest of ingredients. Pour into stir-frying pan, on top of sprinkled butter'
  ),
  operation = operation
)


#' @rdname custardFilling
#' @export
custardFilling <- function() new(
  Class = 'custardFilling', 
  water = 120, waterLost = 55,
  drymilk = 15, sugar = 37, butter = 20,
  review = 'a hypothetical model')




#' @rdname custardFilling
#' @export
pineapple_custardFilling <- function() new(
  Class = 'custardFilling',
  pineapple = 560, waterLost = 347, # confirmed
  butter = 25,
  note = c('One (1) recipe calls for one 20oz can'),
  JoyoungCJA9U = JoyoungCJA9U_filling(operation = '15min + 6min'),
  pros = c('Effie\'s Signature!',
             'Smells super nice while cooking'),
  cons = 'Slightly too sour if served hot')
  

#' @rdname custardFilling
#' @export
pumpkin_custardFilling <- function() new(
  Class = 'custardFilling',
  pumpkin = 600, waterLost = 250, # confirmed on 2023-11-04
  # drymilk = 50, # now I no longer like drymilk that much..
  drymilk = 30, 
  sugar = 50,
  butter = 55,
  JoyoungCJA9U = JoyoungCJA9U_filling(operation = '15min + 2min30sec'),
  pros = 'I love!')




#' @rdname custardFilling
#' @export
apple_custardFilling <- function() new(
  Class = 'custardFilling',
  applesauce = 800, waterLost = 525, 
  # butter = 50, # no burn even without manual stirring
  butter = 40, # 1st stir 11min, very slight burn
  JoyoungCJA9U = JoyoungCJA9U_filling(operation = '15min + 15min, one stir at 7min'),
  pros = 'I love!')



#' @rdname custardFilling
#' @export
tomato_custardFilling <- function() new(
  Class = 'custardFilling',
  tomato = 820, waterLost = 500, # confirmed on 2023-11-01
  sugar = 60, 
  butter = 50, # burns, no stir. next time stir (as planned)
  note = c('One (1) recipe calls for one 29oz can'),
  JoyoungCJA9U = JoyoungCJA9U_filling(operation = '15min + 15min, one stir at 7min'),
  review = c(
    'Effie\'s Signature!'
    # '2023-11-01: Burns (no stir)! because I did not sprinkle butter?'
  ))



#' @rdname custardFilling
#' @export
darkCherry_custardFilling <- function() new(
  Class = 'custardFilling', alias_flavor = '\u751c\u6a31\u6843\U0001f352',
  puree = c(HappyVillage_darkCherry = 800), 
  # waterLost = 460, # 15 + 14
  waterLost = 500, # 15 + 15, stir every 6min. to confirm!
  butter = 45,
  # JoyoungCJA9U = JoyoungCJA9U_filling(operation = c('15min + 14min')), # burns, and not dry enough
  JoyoungCJA9U = JoyoungCJA9U_filling(operation = c('15min + 15min, stir every 6 min')),
  review = c(
    'Very nice even with burned bits',
    'Try next time with more frequent stir'
  ))


#' @rdname custardFilling
#' @export
blueberry_custardFilling <- function() new(
  Class = 'custardFilling', alias_flavor = '\u84dd\u8393\U0001fad0',
  # puree = c(Kirkland_blueberry = 585), waterLost = 345, butter = 23, # stick and burn
  puree = c(Kirkland_blueberry = 800), waterLost = 500, sugar = 20, butter = 50, # TRY!!
  JoyoungCJA9U = JoyoungCJA9U_filling(operation = c('15min + 15min')),
  review = 'retry')






















#' @rdname custardFilling
#' @export
mango_custardFilling <- function() new(
  Class = 'custardFilling',
  mango = 530, waterLost = 265, butter = 40, # confirmed
  machine = list(Nutribullet = 'Thaw a full large cup', 
              'Joyoung CJ-A9U' = 'Stir Fry, 4min-4min-3min-3min-3min, manually stir between sessions'),
  # did 6min-5min-3min-3min. Cooked well, but burnt a little bit from the 1st session
  note = c('Mango puree sticks and burns like crazy..'),
  review = c(
    'RETRY with new trick of butter',
    'Lacks a signatrue flavor'
    ))






#' @rdname custardFilling
#' @export
yellowPeach_custardFilling <- function() new(
  Class = 'custardFilling', alias_flavor = '\u9ec4\u6843\U0001f351',
  puree = c(Kirkland_peach = 525), waterLost = 315, # confirmed!
  butter = 23,
  note = 'One (1) recipe calls for a full jar, after discarding syrup (contains added sugar)',
  machine = list('Joyoung CJ-A9U' = 'Stir Fry, 15min'),
  review = 'Lacks a signatrue flavor.  Try without discarding syrup!!!')


#' @rdname custardFilling
#' @export
date_custardFilling <- function() new(
  Class = 'custardFilling', alias_flavor = '\u7ea2\u67a3',
  flavor = c(SunnyFruit_date = 100), water = 150, waterLost = 85, # confirmed!
  butter = 23,
  note = 'Soak grinded date in water for 4hr+',
  machine = list('Joyoung CJ-A9U' = 'Stir Fry, 3min'),
  pros = 'Effie\'s Signature')




#' @rdname custardFilling
#' @export
fig_custardFilling <- function() new(
  Class = 'custardFilling', alias_flavor = '\u65e0\u82b1\u679c',
  flavor = c(SunnyFruit_fig = 120), water = 200, waterLost = 125, # try
  butter = 23,
  note = 'Soak grinded fig in water for 4hr+',
  machine = list('Joyoung CJ-A9U' = 'Stir Fry, 3min'),
  review = 'try')



#' @rdname custardFilling
#' @export
coconut_custardFilling <- function() new(
  Class = 'custardFilling', alias_flavor = '\u6930\u84c9\U0001f965',
  coconut = c(WegmansOrganic_coconutFlour = 40),
  starch = numeric(),
  sugar = 35, 
  drymilk = 10, butter = 5,
  water = 120, waterLost = 45,
  JoyoungCJA9U = JoyoungCJA9U_filling(operation = c('2min30sec')),
  review = 'try again!')

coconut_custardFilling_OLD <- function() new(
  Class = 'custardFilling', alias_flavor = '\u6930\u84c9\U0001f965',
  coconut = c(Edward_shreddedCoconutLite = 40), 
  sugar = 40, drymilk = numeric(), butter = 23, # before 2023-10-30
  water = 120, waterLost = 45,
  JoyoungCJA9U = JoyoungCJA9U_filling(operation = c('2min30sec')),
  review = 'Nice (before 2023-10-30)!')







############ Alternative oil

#' @rdname custardFilling
#' @export
blackSesame_custardFilling <- function() new(
  Class = 'custardFilling',
  blackSesame = 50, 
  # drymilk = 50, sugar = 40, butter = 23, # before 2023-12-02
  drymilk = 17, sugar = 40, butter = 10, # try
  water = 240, waterLost = 160, 
  machine = list('Joyoung CJ-A9U' = 'Stir Fry, 12min'),
  # note = c('Reduce sugar to 30g if eat directly'), # note before 2023-12-02
  review = 'Effie\'s Signature (before 2023-12-02)')












