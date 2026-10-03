


# lotusBun sticks.  may need to change recipe
#portion = c(
# 'lotus bun, Pastalinda Thick-4 \u8377\u53f6\u997c\U1f9ea' = 50 # last two are 60g
# 'lotus bun (brush oil on steamer cloth), Pastalinda Thick-3 \u8377\u53f6\u997c\U1f9ea' = 50 # last two are 60g
#)


mantou_portion <- \() c(
  '\u5927\u9992\u5934 large mantou' = 50,
  '\u9992\u5934 mantou' = 40,
  '\u5c0f\u9992\u5934 small mantou' = 30
)

savoryBao_portion <- \() c(
  'Pastalinda-3, 40g \u751f\u8089\u9985 raw meat\U1f389' = 40, # big bao, very good!
  'Pastalinda-4, 20g \u719f\u81ca\u5b50\u9985 fried meat chop\U1f389' = 40 # difficult to wrap, best I can do for now
)

sweetBao_portion <- \() c(
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
#' cocoa_bao()
#' acai_bao()
#' 
#' nutritionlist(
#'  bao(),
#'  pumpkin_bao(),
#'  pineapple_bao(),
#'  beet_bao(),
#'  matcha_bao(),
#'  cocoa_bao(),
#'  acai_bao()
#' )
#' 
#' 
#' @name bao-class
#' @export
setClass(Class = 'bao', contains = 'recipe', prototype = prototype(
  class2 = '\u5305\u5b50\u9992\u5934',
  flour = c(Wegmans_pastryFlr = 500), 
  yeast_tsp = c(Fleischmanns_instant = 1.5),
  bakingPowder_tsp = 1,
  fat = c(Epic_lard = 15),
  
  portion = c(mantou_portion(), savoryBao_portion(), sweetBao_portion()), 

  #instruction (legacy)  = c(
  #  paste0('Manually whisk all powders together ', col_red('to protect baking powder/soda and yeast from direct contact with water')),
  #  paste(col_green('optional'), 'blend canned or frozen fruit ', col_br_blue('e.g., pineapple, etc.')),
  #  'Add water or puree. Manually whisk until mini-doughs form', 
  #  'And lard. Knead at Level 2',
  #  'Wrap and rest on countertop for 15min. Must rest overnight if whole wheat flour and/or puree is used, then restore to room temperature',
  #  'Knead at Level 2 until smooth (~5min)',
  #  'Divide, rest and roll using Pastalinda', 
  #  'Manually roll with a pin to thin the edges'
  #),
  tool = list(RobamCT763(
    treatment = 'Add boiling water in basin. Ferment ~40min',
    program = 'Steam', fahrenheit = 210, minute = 15,
    note = c(
      'Do NOT steam at Tier 3 if wheat flour is used.  Bao surface may have tiny cracks',
      'Steam Bake, 300\u00b0F/15min, if dough is accidentally too wet'
    )
  ))
))



#' @rdname bao-class
#' @export
bao <- \() new(Class = 'bao', water = 240, sugar_Tbsp = 3)

bao_heavyCream <- \() new(
  Class = 'bao', 
  dairy = c(Wegmans_heavyCream = 45), 
  fat = numeric(),
  water = 214, sugar_Tbsp = 3, pros = character())

bao_butter <- \() new(
  Class = 'bao', 
  fat = numeric(), 
  dairy = c(Kerrygold_butter = 18),
  water = 237, sugar_Tbsp = 3, 
  pros = character())





#' @rdname bao-class
#' @export
pumpkin_bao <- \() new(
  Class = 'bao', 
  flour = c(KingArthur_breadFlr = 200,
            Wegmans_pastryFlr = 300),
  puree = c(Libbys_pumpkin = 285), # 260*.4+300*.6, 
  sugar_Tbsp = 2,
  review = 'try!!'
  #date = as.Date('2024-09-28')
  )

.pumpkin_bread_bao <- \() new(
  Class = 'bao', 
  puree = c(Libbys_pumpkin = 260), 
  flour = c(KingArthur_breadFlr = 500),
  sugar_Tbsp = 2,
  pros = 'a little on the wet side, but generally perfect wetness',
  cons = 'severely shrinks; bread flour cannot be used for bao?',
  date = as.Date('2024-09-28'))

.pumpkin_pastry_bao <- \() new(
  Class = 'bao', 
  puree = c(Libbys_pumpkin = 300), # 500g Wegmans\'s patry flour
  sugar_Tbsp = 2,
  pros = 'perfect wetness', 
  cons = 'not enough support',
  review = 'how I determine water content of Libby\'s pumpkin puree',
  date = as.Date('2023-01-01'))




#' @rdname bao-class
#' @export
matcha_bao <- \() new(
  Class = 'bao', bao(), 
  matcha_Tbsp = c(Sencha_everyday_matcha = 3), sugar_Tbsp = 5,
  water_ext = 25, # retry
  portion = c(mantou_portion(), sweetBao_portion()),
  # before fermentation: ???g (with plastic wrap)
  pros = character(),
  review = 're-experiment!  water_ext = 25g too wet!')

#' @rdname bao-class
#' @export
beet_bao <- \() new(
  Class = 'bao', bao(), 
  misc_tsp = c(Wegmans_beet_pulv = 11), 
  water_ext = 5, # to confirm!!!
  #sugar_Tbsp = 4, # previous data
  sugar_Tbsp = 1, # try next time
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')




#' @rdname bao-class
#' @export
cocoa_bao <- \() new(
  Class = 'bao', bao(), cocoa_Tbsp = c(KingArthur_Bensdorp = 6), sugar_Tbsp = 5,
  water_ext = 5, # to confirm
  portion = c(mantou_portion(), sweetBao_portion()),
  review = 'retry with Dutch cocoa')



#' @rdname bao-class
#' @export
pineapple_bao <- \() new(
  Class = 'bao', 
  #puree = c(Dole_pineapple = 270), 
  puree = c(Dole_pineapple = 250), # retry
  review = 're-experiment!  pineapple = 270g too wet')


#' @rdname bao-class
#' @export
pear_bao <- \() new(
  Class = 'bao', 
  #puree = c(DelMonte_pear = 255), # 250 too dry; 260 a tiny little too wet but manageable
  puree = c(DelMonte_pear = 250), # retry
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')

#' @rdname bao-class
#' @export
peach_bao_DelMonte <- \() new(
  Class = 'bao', 
  #puree = c(DelMonte_peach = 255),
  puree = c(DelMonte_peach = 250),
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')

#' @rdname bao-class
#' @export
mandarine_bao <- \() new(
  Class = 'bao', 
  puree = c(DelMonte_mandarine = 245), sugar_Tbsp = 1,
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')

#' @rdname bao-class
#' @export
acai_bao <- \() new(
  Class = 'bao', bao(), 
  misc_Tbsp = c(Wegmans_acai_pulv = 8.5), 
  sugar_Tbsp = 2,
  water_ext = 5,
  portion = c(mantou_portion(), savoryBao_portion()), 
  review = 're-experiment!  bao() is drier than I remembered!!')



darkCherry_bao <- \() new(
  Class = 'bao', 
  puree = c(HappyVillage_darkCherry = 310), 
  portion = c(mantou_portion(), savoryBao_portion()), 
  cons = 'Not good!! Dough too dry, skin kneaded out.  Maybe Vitamix')


apple_bao <- \() new(
  Class = 'bao', 
  puree = c(Motts_applesauce = 250),
  review = 'try'
)

mango_bao <- \() new(
  Class = 'bao', 
  puree = c(UltraOrganics_mango = 270), 
  review = c('try in the summer'))


#' @rdname bao-class
#' @export
tomato_bao <- \() new(
  Class = 'bao', 
  puree = c(WegmansOrganic_tomato = 300), sugar = 10,
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
#' @name wheatBao-class
#' @export
setClass(Class = 'wheatBao', contains = 'bao', prototype = prototype(
  flavor = '\u5168\u9ea6',
  flour = c(
    KingArthur_breadFlr = 300,
    Wegmans_white_wheatFlr = 200),
  fat = c(Epic_lard = 19),
  sugar_Tbsp = 3, 
  water = 250 # 255g, starting to get too wet!!
))



#' @rdname wheatBao-class
#' @export
wheatBao <- \() new(
  Class = 'wheatBao', 
  pros = c(
    'perfect wetness',
    'perfect gluten strength (on 50g wrapper + 40g filling)',
    'do not increase wheat flour, otherwise will taste coarse'
  )
)

wheatBao_tmp <- \() new(
  Class = 'wheatBao', 
  flour = c(KingArthur_breadFlr = 208,
            Wegmans_pastryFlr = 92),
  water = 248,
  pros = 'perfect wetness (bread flour ran out)')


wheatBao_duckFat <- \() new(
  Class = 'wheatBao', wheatBao(),
  fat = c(Epic_duck = 19),
  cons = 'Not as white as using pork lard', 
  pros = character())



lowGlutenBao_FAIL <- \() new(
  Class = 'bao',
  flavor = '\u6742\u7cae\u7c89',
  flour = c(KingArthur_gluten0Flr = 150, 
            Wegmans_pastryFlr = 350),
  fat = c(Epic_lard = 16.5),
  sugar_Tbsp = 3, 
  water = 210+10,
  cons = 'too much gluten-free flour!!!'
)



coconutBao_FAIL <- \() new(
  Class = 'bao', 
  class2 = '\u6930\u8089\u7c89\u5305\u5b50\u9992\u5934',
  misc = c(WegmansOrganic_coconutFlr = 125),
  flour = c(KingArthur_breadFlr = 375),
  fat = numeric(),
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





