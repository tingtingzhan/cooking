


setClass(Class = 'fruitFrappe', contains = 'recipe', prototype = prototype(
  alias_class = '\u6c34\u679c\u5976\u6614',
  nutribullet20 = nutribullet20()
))

# what I am actually having
strawberry_frappe <- function() new(
  Class = 'fruitFrappe',
  strawberry = c(Kirkland_strawberry = 200), # to confirm
  banana = 75, # to confirm
  homemade = c(soymilk = 225), # to confirm
  review = 'to confirm'
)


strawberry_frappe0 <- function() new(
  Class = 'fruitFrappe',
  strawberry = c(Kirkland_strawberry = 275), # yes, cannot pack any tighter!!
  iceWater = 225, # yes, need that much..
  #drymilk = c(Carnation_drymilk = 25, Nido_drymilk = 15)
  drymilk = 30, # before I go to Walmart again..
  cons = c(
    'needs Vitamix to break strawberry seeds',
    'real strawberry quite sour. must add sugar'
  )
)



Starbucks_strawberryFrappuccino <- function() new(
  Class = 'nutrition', starbucks_iced = 2122724L,
  name = 'Strawberry Frappuccino',
  servingGram = 470, serving_floz = 16, # 473.176ml
  calorie = 370,
  fat = 16, cholesterol = .05, sodium = .24,
  carbohydrate = 51, sugar = 51, protein = 5)
