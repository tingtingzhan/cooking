


#' @title \linkS4class{meatchop} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' porkchop()
#' 
#' 
#' @name meatchop-class
#' @export
setClass(Class = 'meatchop', contains = 'recipe', prototype = prototype(
  class2 = '\u7092\u81ca\u5b50',
  portion = c(
    'lasagna, Emile Henry Oval Individual' = 100 # ??
  )#,
  # 500g meat
  #instruction (legacy) = c(
  #  'Meat chopper, not grinder',
  #  'Paddle in all dry seasoning',
  #  'Saute. **Drained oil**',
  #  paste(col_green('optional'), 'add sauce, briefly saute'),
  #  'Serve with noodle or lasagna'
  #)
))


#' @rdname meatchop-class
#' @aliases porkchop-class
#' @export
setClass(Class = 'porkchop', contains = 'meatchop', prototype = prototype(
  # 500g meat
  salt_tsp = 1/2,
  spice_tsp = c(
    McCormick_whitePepper = 1/2,
    SimplyOrganic_ginger = 1/2,
    SimplyOrganic_coriander = 1/4,
    Chinata_paprika = 1/2, # from my porkmash()
    SimplyOrganic_5spice = 1/4 # from my porkmash()
  ),
  oil_Tbsp = c(Kadoya_sesame_oil = 1), # from my porkmash()
  oil_tsp = c(YaoMaZi_rattanPepper_oil = 2)
))

#' @rdname meatchop-class
#' @export
porkchop <- \() new(
  Class = 'porkchop',
  pork = c(tenderloin = 400, fat = 100),
  review = 'retry to confirm, should be perfect!'
)


#' @rdname meatchop-class
#' @aliases beefchop-class
#' @export
setClass(Class = 'beefchop', contains = 'meatchop', prototype = prototype(
  
))


#' @rdname meatchop-class
#' @export
beefchop_stew <- \() new(
  Class = 'beefchop',
  beef = c(stew = 1190),
  tool = list(KSEG950ESS(
    waterLost = 270
  )),
  oil_tsp = c(
    Wegmans_vegetable_oil = 4,
    YaoMaZi_rattanPepper_oil = 1.75,
    Kadoya_sesame_oil = 1.5
  ),
  sauce = c(
    LeeKumKee_5spiceMarinade = 30,
    LeeKumKee_blackPepper = 35
  ),
  review = 'a little too sweet')



