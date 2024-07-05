


#' @title \linkS4class{meatchop} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' porkchop()
#' 
#' 
#' @name meatchop
#' @aliases meatchop-class
#' @export
setClass(Class = 'meatchop', contains = 'recipe', prototype = prototype(
  alias_class = '\u7092\u81ca\u5b50',
  portion = c(
    'lasagna, Emile Henry Oval Individual' = 100 # ??
  ),
  # 500g meat
  instruction = c(
    'Meat chopper, not grinder',
    'Paddle in all dry seasoning',
    'Saute. **Drained oil**',
    '(Optional) add sauce, briefly saute',
    'Serve with noodle or lasagna'
  )
))


#' @rdname meatchop
#' @aliases porkchop-class
#' @export
setClass(Class = 'porkchop', contains = 'meatchop', prototype = prototype(
  # 500g meat
  # difficult to quantify `fatLost` and `waterLost` in stir frying
  salt_tsp = 1/2,
  whitePepper_tsp = 1/2,
  ginger_tsp = 1/2,
  coriander_tsp = 1/4,
  paprika_tsp = 1/2, # from my porkmash()
  spice5_tsp = 1/4, # from my porkmash()
  sesameOil_Tbsp = 1, # from my porkmash()
  greenPeppercornOil_tsp = 2
))

#' @rdname meatchop
#' @export
porkchop <- function() new(
  Class = 'porkchop',
  pork = c(tenderloin = 400, fat = 100),
  review = 'retry to confirm, should be perfect!'
)


#' @rdname meatchop
#' @aliases beefchop-class
#' @export
setClass(Class = 'beefchop', contains = 'meatchop', prototype = prototype(
  
))


#' @rdname meatchop
#' @export
beefchop_stew <- function() new(
  Class = 'beefchop',
  beef = c(stew = 1190),
  waterLost = 270,
  oil_tsp = c(Wegmans_vegetable = 4),
  greenPeppercornOil = 1.75, 
  sesameOil_tsp = 1.5,
  sauce = c(
    LeeKumKee_5spiceMarinade = 30,
    LeeKumKee_blackPepper = 35
  ),
  review = 'a little too sweet')



