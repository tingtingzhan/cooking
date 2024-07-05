# people typically say 1 cup butter is 227g.


Kerrygold_butter <- function() new(
  Class = 'nutrition', url = c(
    'www.kerrygoldusa.com/products/unsalted-butter/'
  ),
  kerrygold = 'kerrygold-pure-irish-unsalted-butter',
  name = '\u9ec4\u6cb9 Irish Butter\U0001f9c8',
  servingGram = 227/16, servingTbsp = 1, 
  costcoBiz = '100362700',
  usd = 11.99/4/16, # in 2022 at least
  calorie = 100,
  fat = 227/16*.82, # package 12g, 
  cholesterol = .03,
  water = 227/16*(1- .82 - .02)
  # water amount: 
  # https://blogs.extension.iastate.edu/answerline/2016/09/01/which-butter-for-baking/
  # https://tastecooking.com/all-about-butter/
)


Kerrygold_salted_butter <- function() new(
  Class = 'nutrition', url = c(
    'www.kerrygoldusa.com/products/salted-butter/'
  ),
  kerrygold = 'kerrygold-pure-irish-salted-butter',
  name = 'Irish Salted Butter\U0001f9c8',
  servingGram = 227/16, servingTbsp = 1, 
  costcoBiz = '100339833',
  calorie = 100,
  fat = 11, sodium = .1,
  water = 227/16*(1- .82 - .02)
  # water amount: 
  # https://blogs.extension.iastate.edu/answerline/2016/09/01/which-butter-for-baking/
  # https://tastecooking.com/all-about-butter/
)


Plugra_butter <- function() new(
  Class = 'nutrition', url = 'plugra.com/product/unsalted_8_oz_solid/',
  brand = 'Plugr\u00e0\U0001f1fa\U0001f1f8', name = 'European Butter\U0001f9c8',
  acme = 960051793L, usd = 2.99/16,
  servingGram = 227/16, servingTbsp = 1, 
  calorie = 100,
  fat = 11, cholesterol = .030,
  water = 227/16*(1- .82 - .02)
)



Wuthrich_butter <- function() new(
  Class = 'nutrition', url = 'www.grassland.com/product/wuthrich-83-european-style-unsalted-butter-solid/',
  brand = 'Wu\u0308thrich\U0001f1fa\U0001f1f8', name = 'European Butter\U0001f9c8',
  webstaurant = '999RE3120', usd = 7.99/(16*2),
  servingGram = 227/16, servingTbsp = 1, 
  calorie = 110,
  fat = 227/16*.83, # on package 12g
  cholesterol = .025,
  water = 227/16*(1- .83 - .02))


Lucerne_European_butter <- function() new(
  Class = 'nutrition',
  brand = 'Lucerne', name = 'European Butter',
  acme = 960493010L, usd = 2.99/16,
  servingGram = 227/16, servingTbsp = 1,
  calorie = 100,
  fat = 227/16*.82, # on package 12g
  cholesterol = .030,
  water = 227/16*(1- .82 - .02))


Minerva_Amish_butter <- function() new(
  Class = 'nutrition',
  # wegmans = 43730L, # this is the salted version
  brand = 'Minerva\U0001f1fa\U0001f1f8', name = 'Amish Butter',
  url = c(
    'minervadairy.com/product/unsalted/',
    'minervadairy.com/product/2lbs-unsalted-roll-butter/'
  ),
  webstaurant = '874880039', usd = 92.49/6/(2*16),
  servingGram = 227/16, servingTbsp = 1,
  calorie = 100,
  fat = 227/16*.85, # on package 12g
  cholesterol = .035,
  water = 227/16*(1- .85 - .02))








WegmansOrganic_ghee <- function() new(
  Class = 'nutrition', wegmansorganic = 258519L,
  name = 'Ghee',
  usd = 7.99/213*15,
  servingGram = 15, servingTbsp = 1, 
  calorie = 130,
  fat = 15)
