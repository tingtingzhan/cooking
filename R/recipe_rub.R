

# Costco steak price (KoP)
# #33605 tenderloin steak-filet mignon: $22.29/lb; Mar 30, 24
# #42357 top sirloin (prime): $9.99/lb; Mar 30, 24
# #34323 ribeye (prime): $16.99/lb; Mar 30, 24
# #33666 ribeye (choice): $12.99/lb; Mar 30, 24
# #????? New York strip (prime); $???/lb.   Effie diarrhea if had too much!
# #33593 New York strip (choice); $8.99/lb; Mar 30, 24


#' @title \linkS4class{rub}
#' 
#' @description ..
#' 
#' @examples
#' cuminMontreal_rub()
#' #Montreal_rub()
#' 
#' 
#' @name rub
#' @aliases rub-class
#' @export
setClass(Class = 'rub', contains = 'recipe', prototype = prototype(
  alias_class = '\u814c\u6599',
  #instruction = c(
  #  'Rest in fridge overnight. Most liquid will be absorbed'
  #) # this is sous vide instruction
  portion = c(
    'New York strip (Choice or Prime)' = 10,
    'Top sirloin (Prime)' = 7
  )
))

#' @rdname rub
#' @export
cuminMontreal_rub <- function() new(
  Class = 'rub',
  alias_flavor = 'Cumin+Montreal',
  cumin_tsp = 1,
  spice_tsp = c(
    McCormick_MontrealSteak = 1.5,
    Kirkland_noSaltSeasoning = 2
  ),
  pros = c(
    'Lamb\U1f411 loin chop'
  )
)


Montreal_rub_try1 <- function() new(
  Class = 'rub',
  alias_flavor = 'Montreal',
  spice_tsp = c(
    McCormick_MontrealSteak = 1,
    Kirkland_noSaltSeasoning = 3
  ),
  review = 'I like the reduced sodium for New York strip  steak'
)


#' @rdname rub
#' @export
Montreal_rub <- function() new( # inspired by Guga
  Class = 'rub',
  alias_flavor = 'Montreal',
  brownSugar_tsp = 1,
  # cinnamon_tsp = 1/8, # leave this to next try
  spice_tsp = c(
    McCormick_MontrealSteak = 2,
    Kirkland_noSaltSeasoning = 3
  ),
  pros = c(
    'New York strip, Prime'
  )
)



#' @title Chili Rub over the World!
#' 
#' @description
#' ..
#' 
#' @name chiliRub
#' @aliases chiliRub-class
#' @export
setClass(Class = 'chiliRub', contains = 'rub', prototype = prototype(
  alias_class = '\u9999\u8fa3\u814c\u6599',
  spice_tsp = c(
    Kirkland_noSaltSeasoning = 3
  )
))


#' @rdname chiliRub
#' @export
Southwest_rub <- function() new(
  Class = 'chiliRub', alias_flavor = 'Southwest',
  salt_tsp = .75,
  
  # chiliMix_tsp = c(SimplyOrganic_Southwest = 3), # a little too hot
  chiliMix_tsp = c(SimplyOrganic_Southwest = 2), # try
  
  pros = 'try again')

#' @rdname chiliRub
#' @export
harissa_rub <- function() new(
  Class = 'chiliRub', alias_flavor = 'Harissa',
  salt_tsp = .75,
  chiliMix_tsp = c(FrontierCoop_harissa = 3),
  pros = 'not bad!')


setClass(Class = 'curryRub', contains = 'rub', prototype = prototype(
  alias_class = '\u5496\u55b1\u814c\u6599',
  spice_tsp = c(
    Kirkland_noSaltSeasoning = 3
  ),
  portion = c(
    'New York strip (Choice or Prime)' = 10,
    'Top sirloin (Prime)' = 7
  )
))


#' @rdname chiliRub
#' @export
vindaloo_rub <- function() new(
  Class = 'curryRub', alias_flavor = 'Vindaloo',
  salt_tsp = .75,
  curry_tsp = c(FrontierCoop_vindaloo = 3),
  pros = 'I am addicted!!')









Guga_rub <- function() new(
  Class = 'rub',
  alias_flavor = 'Guga', youtube = 'omXFw_JnP4E',
  salt_cup = 1/4,
  brownSugar_cup = 1/4,
  paprika_cup = 1/4,
  garlic_Tbsp = 1,
  onion_Tbsp = 1,
  blackPepper_Tbsp = 1,
  turmeric_Tbsp = 1,
  cinnamon_tsp = 1)


# Guga has more: https://www.youtube.com/watch?v=lF2uz5Nz02E


kalbi_rub <- function() new( # confirm next time!
  Class = 'rub',
  alias_flavor = '\u97e9\u5f0f\u725b\u4ed4\u9aa8',
  sauce_Tbsp = c(
    LeeKumKee_blackPepper = 3*2,
    #LeeKumKee_coconutCurry = 1
    LeeKumKee_satay = 1
  ),
  portion = c('Costco Korean BBQ style short ribs (2000g)' = 120)
)
