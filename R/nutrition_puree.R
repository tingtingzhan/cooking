

# Pumpkin puree water content here \url{https://fdc.nal.usda.gov/fdc-app.html#/food-details/168450/nutrients}
# is *not* accurate!!
Libbys_pumpkin <- function() new(
  Class = 'nutrition', 
  brand = styleURL(text_ = 'Libby\'s\U0001f1fa\U0001f1f8', 
                   url_ = 'www.nestleprofessional.us/libbys/libbys-100-pure-pumpkin-6-x-106-oz-cans'),
  name = '\u5357\u74dc\u6ce5 Pumpkin\U0001f383 Puree',
  #usd = 8.98/(3*822)*122, sams = '162878', # 2023 early Fall, regular price
  usd = 3.91/(3*822)*122, sams = '162878', # 2023-12-24, clearance?
  # BJ's no longer have this at Christmas # 2023-12-24
  # Groupon's Sam's Club member is super cheap ($15) at Christmas! # 2023-12-24
  # usd = 10.49/(3*822)*122, bjs = 'libbys-100-pure-pumpkin-3-pk29-oz/3000000000000146833', # 2023 Fall
  servingGram = 122, servingCup = 1/2,
  calorie = 45,
  fat = .5, sodium = .005, carbohydrate = 10, sugar = 5, protein = 1, 
  #water = 122 * 225/310) # noodle, experiment, actually a little too wet
  #water = 122 * 225/300) # noodle, theory
  water = 122 * 240/300) # bao, I trust best

Libbys_pumpkinPieMix <- function() new(
  Class = 'nutrition',
  brand = 'Libby\'s\U0001f1fa\U0001f1f8', name = 'Pumpkin\U0001f383 Pie Mix',
  target = 'A-14886100', usd = 4.49/850*87,
  servingGram = 87, servingCup = 1/3, 
  sodium = .11, sugar = 18, addedSugar = 16)



Wegmans_tomato <- function() new(
  Class = 'nutrition', wegmans = 109068L,
  name = '\u897f\u7ea2\u67ff\u6ce5 Tomato\U0001f345 Puree',
  servingGram = 63, servingCup = 1/4,
  sodium = .02, sugar = 3, protein = 1, 
  review = 'don\'t buy; buy Wegmans Organic tomato puree')


WegmansOrganic_tomato <- function() new(
  Class = 'nutrition', 
  wegmansorganic = 19227L, usd = 2.89/822*63, # instore should be cheaper
  name = '\u897f\u7ea2\u67ff\u6ce5 Tomato\U0001f345 Puree',
  servingGram = 63, servingCup = 1/4, 
  calorie = 25,
  sodium = .02, sugar = 3, protein = 1, 
  water = 63 * 300/400)


Motts_applesauce <- function() new(
  Class = 'nutrition', url = 'www.motts.com/products/applesauce/no-sugar-added-apple-applesauce',
  brand = 'Motts', name = '\u82f9\u679c\u6ce5 Applesauce\U0001f34e No Sugar',
  fdc = 1102646L, # water 88.22% 
  wegmans = 2450L, usd = 3.99/1300*123,
  # nutrition facts on bottle label (sold at Costco, Wegmans, etc), not from merchandise website
  servingGram = 123, servingCup = 1/2, 
  water = 123*.8822,
  sugar = 12)


#ThriveMarket_apple <- function() new(
#  # ThriveMarket.com now force you to join a paid membership
#  Class = 'nutrition', url = 'thrivemarket.com/p/thrive-market-organic-apple-sauce',
#  brand = 'Thrive Market', name = 'Applesauce\U0001f34e',
#  servingGram = 140, sodium = .025, sugar = 15) # to try. Ingredient apple only

