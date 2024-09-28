


# lotusBun sticks.  may need to change recipe
#portion = c(
# 'lotus bun, Pastalinda Thick-4 \u8377\u53f6\u997c\U1f9ea' = 50 # last two are 60g
# 'lotus bun (brush oil on steamer cloth), Pastalinda Thick-3 \u8377\u53f6\u997c\U1f9ea' = 50 # last two are 60g
#)


mantou_portion <- function() c(
  '\u5927\u9992\u5934 large mantou' = 50,
  '\u9992\u5934 mantou' = 40,
  '\u5c0f\u9992\u5934 small mantou' = 30
)

savoryBao_portion <- function() c(
  'Pastalinda-3, 40g \u751f\u8089\u9985 raw meat\U1f389' = 40, # big bao, very good!
  'Pastalinda-4, 20g \u719f\u81ca\u5b50\u9985 fried meat chop\U1f389' = 40 # difficult to wrap, best I can do for now
)

sweetBao_portion <- function() c(
  # 'Pastalinda-3.5, 25g \u9ed1\u829d\u9ebb\u6d41\u6c99\u9985 sweet lava (trying)' = 40, # too much filling!!
  'Pastalinda-2.5, 15g \u9ed1\u829d\u9ebb\u6d41\u6c99\u9985 sweet lava (try next)' = 40, # try next
  'Pastalinda-4, 40g \u8c46\u6c99\u9985 sweet bean paste\U1f44d' = 40,
  'Pastalinda-4.5, 25g \u8c46\u6c99\u9985 sweet bean paste\U1f389' = 28
)



#' @title \linkS4class{bao} Recipes
#' 
#' @description
#' ..
#' 
#' @details
#' 
#' Wegmans pastry flour, with gluten fully activated, 
#' is strong enough for my preference of 
#' mantou and \linkS4class{bao}.
#' 
#' Fat in the dough helps to form hydrophobic surface, 
#' so that the liquid in the filling will *not* be absorbed to the wrapper!!
#' 
#' Duck fat does not make \linkS4class{bao} as white as pork fat.
#' 
#' @examples
#' bao()
#' pumpkin_bao()
#' pineapple_bao()
#' matcha_bao()
#' beet_bao()
#' cocoa_bao_Navitas()
#' acai_bao()
#' 
#' diagnose_(
#'  bao,
#'  pumpkin_bao,
#'  pineapple_bao,
#'  beet_bao,
#'  matcha_bao,
#'  cocoa_bao_Navitas,
#'  acai_bao
#' )
#' 
#' 
#' @name bao
#' @aliases bao-class
#' @export
setClass(Class = 'bao', contains = 'recipe', prototype = prototype(
  alias_class = '\u5305\u5b50\u9992\u5934', 
  #key = '\U1f370 48%;3%',
  pastryFlour = c(Wegmans_pastry = 500), 
  yeast_tsp = 1.5,
  bakingPowder_tsp = 1,
  lard = 15,
  
  portion = c(mantou_portion(), savoryBao_portion(), sweetBao_portion()), 

  instruction = c(
    'Manually whisk all powders together \033[31mto protect baking powder/soda and yeast from direct contact with water\033[0m',
    # 'Add water, manually whisk with two chopsticks to form small even lumps until no dry powder visible \033[34mnecessary for relatively dry doughs\033[0m',
    '(Optional) blend canned or frozen fruit \033[94me.g., pineapple, etc.\033[0m',
    'Add water or puree. Manually whisk until mini-doughs form', 
    'And lard. Knead at Level 2',
    'Wrap and rest on countertop for 15min. Must rest overnight if whole wheat flour and/or puree is used, then restore to room temperature',
    'Knead at Level 2 until smooth (~5min)',
    'Divide, rest and roll using Pastalinda', 
    'Manually roll with a pin to thin the edges'
  ),
  RobamCT763 = RobamCT763(
    treatment = 'Add boiling water in basin. Ferment ~40min',
    program = 'Steam', fahrenheit = 210, minute = 15,
    note = c(
      'Do NOT steam at Tier 3 if wheat flour is used.  Bao surface may have tiny cracks',
      'Steam Bake, 300\u00b0F/15min, if dough is accidentally too wet'
    )
  )
))



#' @rdname bao
#' @export
bao <- function() new(Class = 'bao', water = 240, sugar_Tbsp = 3, pros = 'Inna')

bao_heavyCream <- function() new(
  Class = 'bao', 
  heavyCream = 45, lard = numeric(),
  water = 214, sugar_Tbsp = 3, pros = character())

bao_butter <- function() new(
  Class = 'bao', 
  lard = numeric(), butter = 18,
  water = 237, sugar_Tbsp = 3, 
  pros = character())





#' @rdname bao
#' @export
pumpkin_bao <- function() new(
  Class = 'bao', 
  breadFlour = c(KingArthur_bread = 200), pastryFlour = c(Wegmans_pastry = 300),
  pumpkin = 285, # 260*.4+300*.6, 
  sugar_Tbsp = 2,
  review = 'try!!'
  #date = as.Date('2024-09-28')
  )

.pumpkin_bread_bao <- function() new(
  Class = 'bao', 
  pumpkin = 260, breadFlour = c(KingArthur_bread = 500), pastryFlour = numeric(),
  sugar_Tbsp = 2,
  pros = 'a little on the wet side, but generally perfect wetness',
  cons = 'severely shrinks; bread flour cannot be used for bao?',
  date = as.Date('2024-09-28'))

.pumpkin_pastry_bao <- function() new(
  Class = 'bao', 
  pumpkin = 300, # 500g Wegmans\'s patry flour
  sugar_Tbsp = 2,
  pros = 'perfect wetness', 
  cons = 'not enough support',
  review = 'how I determine water content of Libby\'s pumpkin puree',
  date = as.Date('2023-01-01'))




#' @rdname bao
#' @export
matcha_bao <- function() new(
  Class = 'bao', bao(), matcha_Tbsp = c(Sencha_everyday_matcha = 3), sugar_Tbsp = 5,
  water_extra = 25, # retry
  portion = c(mantou_portion(), sweetBao_portion()),
  # before fermentation: ???g (with plastic wrap)
  pros = character(),
  review = 're-experiment!  water_extra = 25g too wet!')

#' @rdname bao
#' @export
beet_bao <- function() new(
  Class = 'bao', bao(), beet_tsp = 11, 
  #sugar_Tbsp = 4, # previous data
  sugar_Tbsp = 1, # try next time
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')

#' @rdname bao
#' @export
cocoa_bao_Navitas <- function() new(
  Class = 'bao', bao(), cocoa_Tbsp = c(Navitas_cacao = 6), sugar_Tbsp = 5,
  bakingPowder_tsp = numeric(), NaHCO3_tsp = 1/4, # for acidity in natural cocoa powder!!!
  # https://www.armandhammer.com/articles/baking-soda-vs-baking-powder
  portion = c(mantou_portion(), sweetBao_portion()),
  review = 'retry with baking soda!!')

#' @rdname bao
#' @export
pineapple_bao <- function() new(
  Class = 'bao', 
  #pineapple = 270, 
  pineapple = 250, # retry
  review = 're-experiment!  pineapple = 270g too wet')


#' @rdname bao
#' @export
pear_bao <- function() new(
  Class = 'bao', 
  #pear = 255, # 250 too dry; 260 a tiny little too wet but manageable
  pear = 250, # retry
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')

#' @rdname bao
#' @export
peach_bao_DelMonte <- function() new(
  Class = 'bao', 
  #puree = c(DelMonte_peach = 255),
  puree = c(DelMonte_peach = 250),
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')

#' @rdname bao
#' @export
mandarine_bao <- function() new(
  Class = 'bao', 
  mandarine = 245, sugar_Tbsp = 1,
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')

#' @rdname bao
#' @export
acai_bao <- function() new(
  Class = 'bao', bao(), acai_Tbsp = 8.5, sugar_Tbsp = 2,
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')


darkCherry_bao <- function() new(
  Class = 'bao', 
  darkCherry = 310, 
  portion = c(mantou_portion(), savoryBao_portion()), 
  cons = 'Not good!! Dough too dry, skin kneaded out.  Maybe Vitamix')


apple_bao <- function() new(
  Class = 'bao', applesauce = 250,
  review = 'try'
)

mango_bao <- function() new(
  Class = 'bao', 
  mango = 270, 
  review = c('try in the summer'))


#' @rdname bao
#' @export
tomato_bao <- function() new(
  Class = 'bao', 
  tomato = 300, sugar = 10,
  review = 'try')














#' @title \linkS4class{wheatBao} Recipes
#' 
#' @description ..
#' 
#' 
#' @details
#' 
#' Must use much more fat, otherwise wrapper tears off on filing.
#' 
#' @note
#' 
#' Using \eqn{100\%} (white) wheat flour does not provide enough strength of gluten,
#' leading to a very soft dough and very weak Man Tou.
#' However, (white) wheat dough with overnight resting in fridge prior to kneading, 
#' is very smooth in the surface and in mouth.
#' 
#' Wegmans (white) wheat flour has the same water absorption capability as Wegmans bread flour.
#' 
#' For better coloring, prefer white wheat flour over wheat flour.
#' 
#' @references
#' \url{https://www.thekitchn.com/whats-the-difference-between-whole-wheat-and-white-whole-wheat-flour-236647}
#' 
#' @examples 
#' wheatBao()
#' @name wheatBao
#' @aliases wheatBao-class
#' @export
setClass(Class = 'wheatBao', contains = 'bao', prototype = prototype(
  alias_flavor = '\u5168\u9ea6',
  key = '(King Arthur/Wegmans)50%;4.5%',
  breadFlour = c(KingArthur_bread = 300), pastryFlour = numeric(),
  wholeWheatFlour = c(Wegmans_whiteWheat = 200),
  lard = 19,
  sugar_Tbsp = 3, 
  water = 250 # 255g, starting to get too wet!!
))



#' @rdname wheatBao
#' @export
wheatBao <- function() new(
  Class = 'wheatBao', 
  pros = c(
    'perfect wetness',
    'perfect gluten strength (on 50g wrapper + 40g filling)',
    'do not increase wheat flour, otherwise will taste coarse'
  )
)

wheatBao_tmp <- function() new(
  Class = 'wheatBao', 
  breadFlour = c(KingArthur_bread = 208),
  pastryFlour = c(Wegmans_pastry = 92),
  water = 248,
  pros = 'perfect wetness (bread flour ran out)')


wheatBao_duckFat <- function() new(
  Class = 'wheatBao', wheatBao(),
  lard = numeric(), fat = c(Epic_duck = 19),
  cons = 'Not as white as using pork lard', 
  pros = character())



lowGlutenBao_FAIL <- function() new(
  Class = 'bao',
  alias_flavor = '\u6742\u7cae\u7c89',
  key = character(),
  glutenFreeFlour = c(KingArthur_M4M = 150),
  pastryFlour = c(Wegmans_pastry = 350),
  lard = 16.5,
  sugar_Tbsp = 3, 
  water = 210+10,
  cons = 'too much gluten-free flour!!!'
)



coconutBao_FAIL <- function() new(
  Class = 'bao', 
  alias_class = '\u6930\u8089\u7c89\u5305\u5b50\u9992\u5934',
  key = character(),
  coconut = c(WegmansOrganic_coconutFlour = 125),
  breadFlour = c(KingArthur_bread = 375), pastryFlour = numeric(),
  lard = numeric(),
  sugar_Tbsp = 2, 
  water = 240+20+50+20,
  pros = c(
    'Wetness okay, maybe a little too wet, but generally okay',
    'Smells just right when kneading'
  ),
  cons = c(
    'Bad idea, cannot activate gluten',
    'Dont try again'
  )
)





