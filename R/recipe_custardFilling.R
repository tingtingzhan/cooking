

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
#' nutritionlist(
#'  cooking:::xiaogaojie_custardFilling(),
#'  pumpkin_custardFilling()
#' )
#' 
#' pineapple_custardFilling()
#' pumpkin_custardFilling()
#' apple_custardFilling()
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
#' @name custardFilling-class
#' @export
setClass(Class = 'custardFilling', contains = 'recipe', prototype = prototype(
  class2 = '\u5976\u9ec4\u9985',
  starch = c(ManSang_wheat_starch = 35),
  egg_pc = c(eggYolk = 3, eggWhite = 3),
  portion = c(
    'mochi 10g wrapper \u9ebb\u85af10g\u76ae' = 5, 
    'mooncake 15g wrapper in 30g mold \u6708\u997c30g\u6a21\u5177' = 15,
    'potsticker' = 25,
    'bao 50g wrapper \u5305\u5b5050g\u76ae' = 40
  )
  #note (legacy) = c(
  #  'Wheat starch \u21d4 sweet potato flour, potato starch, tapioca flour'
  #)
))



xiaogaojie_custardFilling <- \() new(
  Class = 'recipe', flavor = '\u5976\u9ec4\u9985',
  dairy = c(
    Nido_drymilk = 60,
    Wegmans_whole_milk = 120,
    Kerrygold_butter = 50
  ),
  starch = c(ManSang_wheat_starch = 35),
  egg_pc = c(eggYolk = 3, eggWhite = 3),
  sugar = c(Domino_10x = 60),
  tool = list(KSEG950ESS(
    waterLost = 10 # cannot meet final water content 65% ??!!
  )),
  xiaogaojie = 'L7a1d4dj1rs'
)




#' @rdname custardFilling-class
#' @export
pineapple_custardFilling <- \() new(
  Class = 'custardFilling',
  puree_pc = c(Dole_pineapple = 1), 
  dairy = c(Kerrygold_butter = 25),
  tool = list(
    JoyoungCJA9U_filling(
      minute = 21,
      waterLost = 347 # confirmed
    )
  ),
  pros = c('Effie\'s Signature!', 'Smells super nice while cooking'),
  cons = 'Slightly too sour if served hot')
  

#' @rdname custardFilling-class
#' @export
pumpkin_custardFilling <- \() new(
  Class = 'custardFilling',
  starch = c(Argo_corn_starch = 50),
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  puree_pc = c(Libbys_pumpkin = 1),
  dairy = c(Carnation_drymilk = 40),
  dairy_brick = c(Kerrygold_butter = 1/4), # do not change
  sugar = c(Domino_darkBrown = 55),
  tool = list(
    KSM8990(
      program = 'Level 4',
      attachment = 'Paddle',
      operation = 'Mix well the rest of ingredients (except sugar and butter)',
      capacity = 2
    ),
    JoyoungCJA9U_filling(
      minute = c('1x' = 20, '2x, too much' = 30+5+3),
      waterLost = 340, # 2x reduces to 1840g. super accurate!!!
      capacity = 1.5
    )
  ),
  date = as.Date('2026-10-01'),
  pros = 'perfect!')




#' @rdname custardFilling-class
#' @export
apple_custardFilling <- \() new(
  Class = 'custardFilling',
  puree = c(Motts_applesauce = 800), 
  # dairy = c(Kerrygold_butter = 50), # no burn even without manual stirring
  dairy = c(Kerrygold_butter = 40), # 1st stir 11min, very slight burn
  tool = list(JoyoungCJA9U_filling(
    minute = 30,
    waterLost = 525
  )),
  pros = 'I love!')



#' @rdname custardFilling-class
#' @export
tomato_custardFilling <- \() new(
  Class = 'custardFilling',
  puree_pc = c(WegmansOrganic_tomato = 1),
  sugar = 60, 
  dairy = c(Kerrygold_butter = 50), # burns, no stir. next time stir (as planned)
  tool = list(
    JoyoungCJA9U_filling(
      minute = 30,
      waterLost = 500 # confirmed on 2023-11-01
    )
  ),
  review = c(
    'Effie\'s Signature!'
    # '2023-11-01: Burns (no stir)! because I did not sprinkle butter?'
  ))



#' @rdname custardFilling-class
#' @export
darkCherry_custardFilling <- \() new(
  Class = 'custardFilling', flavor = '\u751c\u6a31\u6843\U1f352',
  puree = c(HappyVillage_darkCherry = 800), 
  dairy = c(Kerrygold_butter = 45),
  tool = list(JoyoungCJA9U_filling(
    minute = 30, # 29min not dry enough
    # waterLost = 460, # 15 + 14
    waterLost = 500 # 15 + 15, stir every 6min. to confirm!
  )),
  review = c(
    'Very nice even with burned bits',
    'Try next time with more frequent stir'
  ))


#' @rdname custardFilling-class
#' @export
blueberry_custardFilling <- \() new(
  Class = 'custardFilling', flavor = '\u84dd\u8393\U1fad0',
  # puree = c(Kirkland_blueberry = 585), waterLost = 345, dairy = c(Kerrygold_butter = 23), # stick and burn
  puree = c(Kirkland_blueberry = 800), 
  sugar = 20, 
  dairy = c(Kerrygold_butter = 50), # TRY!!
  tool = list(JoyoungCJA9U_filling(
    minute = 30,
    waterLost = 500 # to confirm
  )),
  review = 'retry')







#' @rdname custardFilling-class
#' @export
mango_custardFilling <- \() new(
  Class = 'custardFilling',
  puree = c(UltraOrganics_mango = 530), 
  dairy = c(Kerrygold_butter = 40), # confirmed
  # machine (legacy) = list(Nutribullet = 'Thaw a full large cup'),
  tool = list(JoyoungCJA9U_filling(
    minute = 17,
    waterLost = 265, 
    note = c('Mango puree sticks and burns like crazy..')
  )),
  review = c(
    'RETRY with new trick of butter',
    'Lacks a signatrue flavor'
    ))






#' @rdname custardFilling-class
#' @export
yellowPeach_custardFilling <- \() new(
  Class = 'custardFilling', 
  flavor = '\u9ec4\u6843\U1f351',
  puree = c(Kirkland_peach = 525),
  dairy = c(Kerrygold_butter = 23),
  tool = list(JoyoungCJA9U_filling(
    minute = 15,
    waterLost = 315, # confirmed!
    note = 'One (1) recipe calls for a full jar, after discarding syrup (contains added sugar)'
  )),
  review = 'Lacks a signatrue flavor.  Try without discarding syrup!!!'
  )


#' @rdname custardFilling-class
#' @export
date_custardFilling <- \() new(
  Class = 'custardFilling', flavor = '\u7ea2\u67a3',
  misc = c(SunnyFruit_date = 100), 
  water = 150, 
  dairy = c(Kerrygold_butter = 23),
  tool = list(JoyoungCJA9U_filling(
    minute = 3,
    waterLost = 85, # confirmed!
    note = 'Soak grinded date in water for 4hr+'
  )),
  pros = 'Effie\'s Signature')




#' @rdname custardFilling-class
#' @export
fig_custardFilling <- \() new(
  Class = 'custardFilling', flavor = '\u65e0\u82b1\u679c',
  misc = c(SunnyFruit_fig = 120), 
  water = 200, 
  dairy = c(Kerrygold_butter = 23),
  tool = list(JoyoungCJA9U_filling(
    minute = 3,
    #waterLost = 125, # to confirm
    note = 'Soak grinded fig in water for 4hr+'
  )),
  review = 'try')



#' @rdname custardFilling-class
#' @export
coconut_custardFilling <- \() new(
  Class = 'custardFilling', flavor = '\u6930\u84c9\U1f965',
  misc = c(WegmansOrganic_coconutFlr = 40),
  starch = numeric(),
  sugar = 35, 
  dairy = c(Kerrygold_butter = 5,
            Carnation_drymilk = 10), 
  water = 120, 
  tool = list(JoyoungCJA9U_filling(
    minute = 2.5,
    waterLost = 45
  )),
  review = 'try again!')








############ Alternative oil

#' @rdname custardFilling-class
#' @export
blackSesame_custardFilling <- \() new(
  Class = 'custardFilling',
  seed = c(Greenmax_blackSesame = 50), 
  # dairy = c(Kerrygold_butter = 23, Carnation_drymilk = 50), sugar = 40, # before 2023-12-02
  dairy = c(Kerrygold_butter = 10, # try
            Carnation_drymilk = 17), 
  sugar = 40, 
  water = 240, 
  tool = list(JoyoungCJA9U_filling(
    minute = 12,
    #waterLost = 160 # to confirmed
  )),
  # note = c('Reduce sugar to 30g if eat directly'), # note before 2023-12-02
  review = 'Effie\'s Signature (before 2023-12-02)')












