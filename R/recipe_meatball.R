

#' @title \linkS4class{meatball} Recipes
#' 
#' @description
#' Cantonese style of meatball, squished from the purlicue of chef's hand
#' 
#' @name meatball
#' @aliases meatball-class
#' @export
setClass(Class = 'meatball', contains = 'recipe', prototype = prototype(
  alias_class = '\u4e38',
  instruction = c(
    'Food processor, finely blend lean meat/seafood',
    'Fast paddle lean meat/seafood for 3min',
    'Food processor, finely blend fat',
    'Add fat and oil to stand mixer, fast paddle for 30sec'
  )
))


#' @rdname meatball
#' @export
shrimpball <- function() new(
  Class = 'meatball', 
  shrimp = 500, pork = c(fat = 100),
  #shrimp = 540, lard = 60,
  salt_tsp = 1/8,
  sugar_tsp = 2,
  starch = c(Wegmans_corn = 12),
  sesameOil_tsp = 1.5,
  ginger_tsp = 1/8,
  whitePepper_tsp = 1/4)


shrimpball_Argentine <- function() new(
  Class = 'meatball', shrimpball(),
  shrimp = c(Kirkland_shrimpArgentine = 540),
  review = 'try'
)


beefball <- function() new(
  Class = 'meatball',
  beef = c(eyeRound = 500),
  NaHCO3_tsp = 4/16, # 1 Chinese soup spoon 
  iceWater = 400/16, # looks like
  salt_tsp = .5,
  garlic = 130/16,
  starch_tsp = c(Wegmans_corn = 2.5),
  tallow = 3*500/16)


#' @rdname meatball
#' @export
GaaDai_beefball <- function() new(
  Class = 'meatball',
  youtube = '5nJKNVBRztM',
  beef = c(eyeRound = 16*500),
  NaHCO3_tsp = 4, # 1 Chinese soup spoon 
  iceWater = 400, # looks like
  salt = 120,
  msg = 50,
  garlic = 130,
  starch = c(Wegmans_corn = 100),
  tallow = 3*500)


#' @rdname meatball
#' @export
Daat_cuttlefishball <- function() new(
  Class = 'meatball', 
  alias_flavor = '\u8fbe\u54e5\u53a8\u623f \u58a8\u9c7c',
  youtube = 'fLL-DPhSc_E',
  seafood = c(cuttlefish = 250),
  shrimp = 250,
  pork = c(fat = 100),
  salt = 8,
  msg = 9,
  sugar = 13,
  starch = c(Wegmans_corn = 20),
  sesameOil = 5,
  whitePepper_tsp = 1/4)





#' @title \linkS4class{fishball}
#' 
#' @description ..
#' 
#' @examples 
#' 1+1
#' 
#' @name fishball
#' @aliases fishball-class
#' @export
setClass(Class = 'fishball', contains = 'recipe', prototype = prototype(
  alias_class = '\u9c7c\u4e38'
))



