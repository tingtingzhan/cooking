

# Costco steak price (KoP)
# #33605 tenderloin steak-filet mignon: $22.29/lb; Mar 30, 24
# #42357 top sirloin (prime): $9.99/lb; Mar 30, 24
# #34323 ribeye (prime): $16.99/lb; Mar 30, 24
# #33666 ribeye (choice): $12.99/lb; Mar 30, 24
# #????? New York strip (prime); $???/lb.   Effie diarrhea if had too much!
# #33593 New York strip (choice); $8.99/lb; Mar 30, 24


#' @title \linkS4class{sousvide} and \linkS4class{airfryer} Rub Recipes
#' 
#' @description ..
#' 
#' @examples
#' cuminMontreal_sousvide()
#' vindaloo_sousvide()
#' 
#' @name rub
#' @aliases sousvide-class
#' @export
setClass(Class = 'sousvide', contains = 'recipe', prototype = prototype(
  alias_class = '\u6c34\u6d74\u814c\u6599',
  instruction = c(
    'Rest in fridge overnight. Most liquid will be absorbed'
  ),
  portion = c(
    'New York strip (Choice or Prime)' = 10,
    'Top sirloin (Prime)' = 7
  )
))

#' @rdname rub
#' @aliases airfryer-class
#' @export
setClass(Class = 'airfryer', contains = 'recipe', prototype = prototype(
  alias_class = '\u7a7a\u6c14\u70b8\u9505\u814c\u6599',
  instruction = c(
    'Rest in fridge 3 day',
    'Wash off before air frying'
  ),
  portion = c(
    'Duck\U1f986, whole' = 25 # ???
  )
))





#' @rdname rub
#' @export
cuminMontreal_sousvide <- function() new(
  Class = 'sousvide',
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


Montreal_sousvide1 <- function() new(
  Class = 'sousvide',
  spice_tsp = c(
    McCormick_MontrealSteak = 1,
    Kirkland_noSaltSeasoning = 3
  ),
  review = 'I like the reduced sodium for New York strip  steak'
)


#' @rdname rub
#' @export
Montreal_sousvide <- function() new( # inspired by Guga
  Class = 'sousvide',
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




#' @rdname rub
#' @export
Southwest_souvide <- function() new(
  Class = 'sousvide', 
  salt_tsp = .75,
  spice_Tbsp = c(Kirkland_noSaltSeasoning = 1),
  # chiliMix_tsp = c(SimplyOrganic_Southwest = 3), # a little too hot
  chiliMix_tsp = c(SimplyOrganic_Southwest = 2), # try
  pros = 'try again')

#' @rdname rub
#' @export
harissa_sousvide <- function() new(
  Class = 'sousvide',
  salt_tsp = .75,
  spice_Tbsp = c(Kirkland_noSaltSeasoning = 1),
  chiliMix_Tbsp = c(FrontierCoop_harissa = 1),
  pros = 'not bad!')




#' @rdname rub
#' @export
vindaloo_sousvide <- function() new(
  Class = 'sousvide',
  #alias_class = '\u5496\u55b1\u814c\u6599',
  salt_tsp = .75,
  spice_Tbsp = c(Kirkland_noSaltSeasoning = 1),
  curry_Tbsp = c(FrontierCoop_vindaloo = 1),
  pros = 'I am addicted!!')


#' @rdname rub
#' @export
vindaloo_airfryer <- function() new(
  Class = 'airfryer',
  salt_Tbsp = 1, # sodium .219
  #salt = 16.5, # sodium .211
  spice_Tbsp = c(Kirkland_noSaltSeasoning = 1),
  curry_Tbsp = c(FrontierCoop_vindaloo = 1),
  review = 'trying (salt = 16.5)'
)





Guga_rub <- function() new(
  Class = 'recipe', guga = 'omXFw_JnP4E',
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
  Class = 'recipe',
  alias_flavor = '\u97e9\u5f0f\u725b\u4ed4\u9aa8',
  sauce_Tbsp = c(
    LeeKumKee_blackPepper = 3*2,
    #LeeKumKee_coconutCurry = 1
    LeeKumKee_satay = 1
  ),
  portion = c('Costco Korean BBQ style short ribs (2000g)' = 120)
)
