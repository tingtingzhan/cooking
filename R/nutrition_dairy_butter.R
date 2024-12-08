

Kerrygold_butter <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  kerrygold = 'kerrygold-pure-irish-unsalted-butter',
  kerrygoldusa = 'unsalted-butter',
  name = 'Irish Butter\U1f9c8', alias = '\u9ec4\u6cb9',
  serving_oz = 8/16, servingTbsp = 1, 
  costcoBiz = '100362700',
  usd = 11.99/4/16, # in 2022 at least
  calorie = 100,
  fat = 226.796/16*.82, # package 12g, 
  cholesterol = .03,
  water = 226.796/16*(1- .82 - .02)
  # water amount: 
  # https://blogs.extension.iastate.edu/answerline/2016/09/01/which-butter-for-baking/
  # https://tastecooking.com/all-about-butter/
)


Kerrygold_salted_butter <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  kerrygoldusa = 'salted-butter',
  kerrygold = 'kerrygold-pure-irish-salted-butter',
  name = 'Irish Salted Butter\U1f9c8', alias = '\u9ec4\u6cb9',
  serving_oz = 8/16, servingTbsp = 1, 
  costcoBiz = '100339833',
  calorie = 100,
  fat = 11, sodium = .1,
  water = 226.796/16*(1- .82 - .02)
  # water amount: 
  # https://blogs.extension.iastate.edu/answerline/2016/09/01/which-butter-for-baking/
  # https://tastecooking.com/all-about-butter/
)


Plugra_butter <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Plugr\u00e0\U1f1fa\U1f1f8', url = 'https://plugra.com/product/unsalted_8_oz_solid/')),
  name = '\u9ec4\u6cb9 European Butter\U1f9c8',
  acme = 960051793L, usd = 2.99/16,
  serving_oz = 8/16, servingTbsp = 1, 
  calorie = 100,
  fat = 11, cholesterol = .030,
  water = 226.796/16*(1- .82 - .02)
)



Wuthrich_butter <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Wu\u0308thrich\U1f1fa\U1f1f8', url = 'https://www.grassland.com/product/wuthrich-83-european-style-unsalted-butter-solid/')),
  name = '\u9ec4\u6cb9 European Butter\U1f9c8',
  webstaurant = '999RE3120', usd = 7.99/(16*2),
  serving_oz = 8/16, servingTbsp = 1, 
  calorie = 110,
  fat = 226.796/16*.83, # on package 12g
  cholesterol = .025,
  water = 226.796/16*(1- .83 - .02))


Lucerne_European_butter <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = 'Lucerne', name = '\u9ec4\u6cb9 European Butter\U1f9c8',
  acme = 960493010L, usd = 2.99/16,
  serving_oz = 8/16, servingTbsp = 1,
  calorie = 100,
  fat = 226.796/16*.82, # on package 12g
  cholesterol = .030,
  water = 226.796/16*(1- .82 - .02))


Minerva_Amish_butter <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  # wegmans = 43730L, # this is the salted version
  brand = c(style_hyperlink(text = 'Minerva\U1f1fa\U1f1f8', url = 'https://minervadairy.com/product/unsalted/')),
  name = '\u9ec4\u6cb9 Amish Butter\U1f9c8',
  url = 'https://minervadairy.com/product/2lbs-unsalted-roll-butter/',
  webstaurant = '874880039', usd = 92.49/6/(2*16),
  serving_oz = 8/16, servingTbsp = 1,
  calorie = 100,
  fat = 226.796/16*.85, # on package 12g
  cholesterol = .035,
  water = 226.796/16*(1- .85 - .02))



LandOLakes_butter <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  landolakes = 'butter-spreads/unsalted-butter',
  name = '\u9ec4\u6cb9 Butter\U1f9c8',
  serving_oz = 8/16, servingTbsp = 1,
  calorie = 100,
  fat = 226.796/16*.8, # on package 11g
  cholesterol = .030, water = 226.796/16*(1- .8 - .02))






WegmansOrganic_ghee <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmansorganic = 258519L,
  name = 'Ghee',
  usd = 7.99/213*15,
  servingGram = 15, servingTbsp = 1, 
  calorie = 130,
  fat = 15)
