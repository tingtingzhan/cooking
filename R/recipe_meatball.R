

#' @title \linkS4class{meatball} Recipes
#' 
#' @description
#' Cantonese style of meatball, squished from the purlicue of chef's hand
#' 
#' @name meatball-class
#' @export
setClass(Class = 'meatball', contains = 'recipe', prototype = prototype(
  class2 = '\u4e38'#,
  #instruction (legacy) = c(
  #  'Food processor, finely blend lean meat/seafood',
  #  'Fast paddle lean meat/seafood for 3min',
  #  'Food processor, finely blend fat',
  #  'Add fat and oil to stand mixer, fast paddle for 30sec'
  #)
))


#' @rdname meatball-class
#' @export
shrimpball <- \() new(
  Class = 'meatball', 
  shrimp = 500, pork = c(fat = 100),
  #shrimp = 540, lard = 60,
  salt_tsp = 1/8,
  sugar_tsp = 2,
  starch = c(Wegmans_corn = 12),
  sesameOil_tsp = 1.5,
  spice_tsp = c(
    McCormick_whitePepper = 1/4,
    SimplyOrganic_ginger = 1/8
  )
)


shrimpball_Argentine <- \() new(
  Class = 'meatball', shrimpball(),
  shrimp = c(Kirkland_shrimpArgentine = 540),
  review = 'try'
)


beefball <- \() new(
  Class = 'meatball',
  beef = c(eyeRound = 500),
  NaHCO3_tsp = 4/16, # 1 Chinese soup spoon 
  iceWater = 400/16, # looks like
  salt_tsp = .5,
  spice = c(McCormick_garlic = 130/16),
  starch_tsp = c(Wegmans_corn = 2.5),
  tallow = 3*500/16)


#' @rdname meatball-class
#' @export
GaaDai_beefball <- \() new(
  Class = 'meatball',
  youtube = '5nJKNVBRztM',
  beef = c(eyeRound = 16*500),
  NaHCO3_tsp = 4, # 1 Chinese soup spoon 
  iceWater = 400, # looks like
  salt = 120,
  msg = 50,
  spice = c(McCormick_garlic = 130),
  starch = c(Wegmans_corn = 100),
  tallow = 3*500)


#' @rdname meatball-class
#' @export
Daat_cuttlefishball <- \() new(
  Class = 'meatball', 
  flavor = '\u8fbe\u54e5\u53a8\u623f \u58a8\u9c7c',
  youtube = 'fLL-DPhSc_E',
  seafood = c(cuttlefish = 250),
  shrimp = 250,
  pork = c(fat = 100),
  salt = 8,
  msg = 9,
  sugar = 13,
  starch = c(Wegmans_corn = 20),
  sesameOil = 5,
  spice_tsp = c(McCormick_whitePepper = 1/4))





#' @title \linkS4class{fishball}
#' 
#' @description ..
#' 
#' @examples 
#' 1+1
#' 
#' @name fishball-class
#' @export
setClass(Class = 'fishball', contains = 'recipe', prototype = prototype(
  class2 = '\u9c7c\u4e38'
))



