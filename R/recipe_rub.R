

# Costco steak price (KoP)
# #33605 tenderloin steak-filet mignon: $22.29/lb; Mar 30, 24
# #42357 top sirloin (prime): $9.99/lb; Mar 30, 24
# #34323 ribeye (prime): $16.99/lb; Mar 30, 24
# #33666 ribeye (choice): $12.99/lb; Mar 30, 24
# #????? New York strip (prime); $???/lb.   Effie diarrhea if had too much!
# #33593 New York strip (choice); $8.99/lb; Mar 30, 24


#' @title \linkS4class{rub} Recipes
#' 
#' @description ..
#' 
#' @examples
#' cuminMontreal_rub()
#' 
#' @name rub
#' @aliases rub-class
#' @export
setClass(Class = 'rub', contains = 'recipe', prototype = prototype(
  alias_class = '\u814c\u6599', # \u7a7a\u6c14\u70b8\u9505
  
  portion = c(
    'whole duck\U1f986, 3-3.5lb, inside rub' = 18,
    'New York strip steak\U1f969' = 10 # to confirm!!!
  ),
  
  InstantPot = InstantPot(
    name2 = Staub_deepSkillet()@name,
    program = '\u4f4e\u6e29\u6c34\u6d74\u7a0b\u5e8f Sous Vide program',
    fahrenheit = c(140),
    minute = c('New York strip steak\U1f969, 1-1.5inch' = 60),
    cooling = c(
      'let stand 10min in bag', 
      'pat dry',
      'pan-sear fat cap'
    )
  ),
  
  Staub_vertRoaster = Staub_vertRoaster(
    treatment = c(
      'scald trussed poultry skin using boiling water',
      'pat dry; season inside',
      'stand on vertical roaster, brush coating on skin'
    ),
    fahrenheit = 350,
    minute = c('whole duck\U1f986, 3-3.5lb' = 90),
    cooling = 'let stand 30min+ before carving'
  ),
  
  PhilipsHD9867 = PhilipsHD9867(
    fahrenheit = 350,
    minute = c('half duck\U1f986, 3-3.5lb, skin face up' = 35)
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
    #Kirkland_noSaltSeasoning = 2 # for previous 'sousvide'
    Kirkland_noSaltSeasoning = .5
  ),
  # sodium with [McCormick_MontrealSteak] needs to be a little lower
  review = 'retry'
  #pros = c(
  #  'Lamb\U1f411 loin chop'
  #)
)




#' @rdname rub
#' @export
Montreal_rub <- function() new( # inspired by Guga
  Class = 'rub',
  brownSugar_tsp = .5,
  cinnamon_tsp = 1/8,
  spice_tsp = c(
    McCormick_MontrealSteak = 2,
    #Kirkland_noSaltSeasoning = 3 # for previous 'sousvide'
    Kirkland_noSaltSeasoning = .5
  ),
  review = 'retry'
  #pros = c(
  #  'New York strip, Prime'
  #)
)






if (FALSE) {
  
  duckPaste <- function() new(
    Class = 'recipe',
    alias = 'Duck Paste',
    msg = 6*50,
    sugar = 500+2*50,
    garlic = c(garlic = 2.5*500),
    sauce = c(
      LeeKumKee_ChuHou = 4*500,
      LeeKumKee_hoisin = 2*500,
      LeeKumKee_sesameSauce = 500+2*50,
      LeeKumKee_chickenBouillon = 500/2,
      LeeKumKee_peanutSauce = 455/2,
      LeeKumKee_soySauce = 250/2,
      Squid_fishSauce = 4*50
    )
    # 麦芽粉 1两???
  )
  
  duckSalt <- function() new(
    Class = 'recipe',
    alias = 'Duck Salt',
    sugar = 10*500,
    salt = 5*500,
    msg = 1*500,
    greenPeppercornOil = 3*50, # cannot find szechuan peppercorn powder
    spice = c(
      SimplyOrganic_5spice = 3*50,
      McCormick_whitePepper = 3*50,
      TakShing_starAnise = 3*50,
      TakShing_KGalanga = 3*50
    )
  )
}


#' @rdname rub
#' @export
duck_rub <- function() new(
  Class = 'rub',
  alias = 'Duck Salt',
  spice_tsp = c(
    SimplyOrganic_5spice = 1.5 #my experiment using a Chinese brand
  ),
  salt_tsp = 1.5,
  sugar_tsp = c(Domino_10x = 1.5),
  date = as.Date('2025-02-15')
)

if (FALSE) {
  new(Class = 'recipe', 
      spice_tsp = c(
        SimplyOrganic_5spice = 1.5 #my experiment using a Chinese brand
      ))

}




#' @rdname rub
#' @export
Southwest_rub <- function() new(
  Class = 'rub', 
  salt_tsp = 2.75,
  spice_Tbsp = c(Kirkland_noSaltSeasoning = 1),
  chiliMix_tsp = c(SimplyOrganic_Southwest = 2), # try
  pros = 'try')

#' @rdname rub
#' @export
harissa_rub <- function() new(
  Class = 'rub',
  #salt_tsp = .75, # for previuos 'sousvide', I wrote `pros = 'not bad!'`
  salt_tsp = 2.75, # 
  spice_Tbsp = c(Kirkland_noSaltSeasoning = 1),
  chiliMix_Tbsp = c(FrontierCoop_harissa = 1),
  review = 'try!')





#' @rdname rub
#' @export
vindaloo_rub <- function() new(
  Class = 'rub',
  salt_tsp = 2.75,
  spice_Tbsp = c(Kirkland_noSaltSeasoning = 1),
  curry_Tbsp = c(FrontierCoop_vindaloo = 1),
  date = as.Date('2024-12-20'),
  pros = 'perfect sodium level!'
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
