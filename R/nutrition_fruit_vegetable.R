
#' @title Fruit and Vegetable
#' 
#' @keywords internal
#' @name nutrition_fruit_vegetable
NULL

Kirkland_honey <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  costco = '100516925',
  name = 'Wild Flower Honey\U1f36f', alias = '\u8702\u871c',
  servingGram = 21, servingTbsp = 1, 
  calorie = 60, carbohydrate = 17, sugar = 17, addedSugar = 17)

Kirkland_rawHoney <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  costco = '100334136',
  name = 'Organic Raw Honey\U1f36f', alias = '\u8702\u871c',
  servingGram = 21, servingTbsp = 1, 
  calorie = 60, carbohydrate = 17, sugar = 16)

# dried fruits
OceanSpray_cranberry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(url = 'https://www.oceanspray.com/products/craisins-original-dried-cranberries-6-oz', text = 'Ocean Spray')), 
  name = 'Dried Cranberries',
  costco = '100400518',
  servingGram = 40, sugar = 29)

SunnyFruit_fig <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(url = 'https://sunnyfruit.com/products/organic-dried-figs', text = 'Sunny Fruit')), 
                  name = 'Dried Figs',
  costcoBiz = '100362726',
  servingGram = 40, sugar = 21)

SunnyFruit_date <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(url = 'https://sunnyfruit.com/products/organic-pitted-dates', text = 'Sunny Fruit')), 
  name = 'Pitted Dates',
  servingGram = 40, sugar = 30)

Kirkland_plum <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  costco = '100334316',
  name = 'Dried Plums',
  servingGram = 40, sugar = 14)


Kirkland_mixedVeggies <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = '\u51b7\u51bb\u6742\u852c Mixed Vegetables\U1f955\U1fadb\U1f33d',
  costcoBiz = '100351236',
  servingGram = 90, fat = .5, sodium = .02, sugar = 4, protein = 2)

Kirkland_blueberry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  costcoBiz = '100206942',
  name = 'Frozen Blueberry\U1fad0',
  servingGram = 140, 
  calorie = 70,
  sugar = 12, protein = 1,
  water = 140*.866, fdc = 173950L)

Kirkland_strawberry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  costcoBiz = c(
    '100273803' # frequently seen in store
    # '11273181' # rarely seen in store
  ),
  name = '\u8349\u8393 Strawberry\U1f353',
  servingGram = 140, servingCup = 1, 
  calorie = 50, 
  carbohydrate = 13, sugar = 6)

Kirkland_yellowCorn <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], url = 'https://costcofdb.com/product/kirkland-signature-organic-yellow-sweet-corn-5-lbs',
  brand = 'Kirkland\U1f1fa\U1f1f8', name = '\u51b7\u51bb\u751c\u7389\u7c73 Frozen Yellow Corn\U1f33d',
  servingGram = 90, 
  #servingCup = 2/3, # packaging
  servingCup = 90/128,# actual experiment 1cup = 128g
  fat = 1.5, sugar = 7, protein = 3)



Kirkland_peach <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], costcoBiz = '100237862',
  name = 'Sliced Peaches',
  servingGram = 120, sodium = .01, sugar = 14,
  machine = \(x) { # `x` is class(recipe)
    switch(x, c('Drain Kirkland Sliced Peaches and discard syrup (contains added sugar)'))
  })


mango <- function() new( 
  Class = 'nutrition', call = match.call()[[1L]], 
  fdc = 169910L, # water 83.5%
  brand = 'Ultra Organics', name = '\u8292\u679c(\u6ce5) Mango\U1f96d',
  costcoBiz = '100370260',
  servingGram = 140, 
  servingCup = 1, # puree density; confirm with experiment!!
  sugar = 19, protein = 1,
  water = 140*.744 # old experiment on \linkS4class{mantou}, not reliable!!
)





HappyVillage_strawberry <- function() new( # frozen; sold at Costco
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = 'Happy Village', 
  name = '\u8349\u8393 Strawberry\U1f353',
  url = 'www.instacart.com/products/25833270-happy-village-frozen-organic-strawberries-4-lb',
  servingGram = 140, servingCup = 1, 
  calorie = 50, sugar = 6, protein = 1)

HappyVillage_darkCherry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], costcoBiz = '100313436',
  brand = 'Happy Village', name = '\u751c\u6a31\u6843 Dark Cherry\U1f352',
  servingGram = 140, servingCup = 1,
  calorie = 90,
  water = 140*240/310, # tested with bao()
  carbohydrate = 21, sugar = 16, protein = 1)

# fresh fruit
LuckyTaro_durian <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  costcoBiz = '2001112853',
  brand = 'Lucky Taro', name = 'Durian',
  # servingGram = mean.default(c(955)) - 642, # subtract seed
  # Nutrition label: 1/2 tray, 200g 
  # fat = .4*2, sodium = .023*2, sugar = 19.6*2, protein = 1.2*2,
  
  servingGram = 200, usd = 25/2, # vague memory
  fat = .4, sodium = .023, sugar = 19.6, protein = 1.2,
  review = 'I have severe bad reaction to real durian')





Wegmans_pineapple <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 10230L,
  name = 'Crushed Pineapple\U1f34d', alias = '\u83e0\u841d\u7f50\u5934',
  servingGram = 122, servingCup = 1/2, 
  calorie = 70,
  carbohydrate = 16, sugar = 13, 
  superior = 'Dole_pineapple')

Libbys_pineapple <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  wegmans = 20294L,
  brand = 'Libby\'s\U1f1fa\U1f1f8', 
  name = 'Crushed Pineapple\U1f34d', alias = '\u83e0\u841d\u7f50\u5934',
  servingGram = 122, servingCup = 1/2, 
  carbohydrate = 17, sugar = 15, 
  superior = 'Dole_pineapple')

#' @rdname nutrition_fruit_vegetable
#' @export
Dole_pineapple <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  dolesunshine = 'canned-crushed-pineapple-in-100-pineapple-juice-20oz',
  name = 'Pineapple\U1f34d in 100% Juice', alias = '\u83e0\u841d\u7f50\u5934',
  # fdc = 167767L, # water = 83.5%, not accurate!!
  amazon = 'B00GFROV7A', usd = 22.46/12/567*122, 
  wegmans = 53679L,
  servingGram = 122, servingCup = 1/2,
  calorie = 80,
  water = 122-18-1, # 122 * (240/270) #, # confirmed with bao()
  carbohydrate = 18, fiber = 1, sugar = 15, protein = 1)

Dole_sweetened_pineapple <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  dolesunshine = 'canned-crushed-pineapple-in-heavy-syrup-20oz/',
  name = 'Pineapple\U1f34d in Heavy Syrup', alias = '\u52a0\u7cd6\u83e0\u841d\u7f50\u5934',
  servingGram = 123, servingCup = 1/2,
  # usd = /567*123,
  calorie = 100,
  water = 123-26,
  carbohydrate = 26, fiber = 2, sugar = 25, addedSugar = 10,
  review = 'looks like they only added sugar, but not evaporated water',
  superior = 'Dole_pineapple')


DelMonte_pear <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  delmonte = 'fruits/pears/sliced-pears-no-sugar-added',
  name = 'Sliced Pears\U1f350', alias = '\u68a8\u7f50\u5934',
  servingGram = 121, servingCup = 1/2,
  water = 121-10-1, # 121 * 240/255, # tested with bao()
  calorie = 40, 
  sodium = .005, 
  carbohydrate = 10, sugar = 7) 


DelMonte_mandarine <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  delmonte = 'fruits/mandarin-oranges/mandarin-oranges-no-sugar-added',
  name = 'Mandarin Oranges\U1f34a', alias = '\u6a58\u5b50\u7f50\u5934',
  servingGram = 123, servingCup = 1/2,
  water = 123-13-4-1, # 123 * 240/245, # tested with bao()
  calorie = 60, 
  carbohydrate = 13,
  sugar = 5, # sugarAlcohol = 4, # slot not written yet
  protein = 1) 


DelMonte_peach <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  delmonte = 'fruits/peaches/sliced-yellow-cling-peaches-no-sugar-added',
  name = 'Yellow Cling Peaches\U1f351', alias = '\u9ec4\u6843\u7f50\u5934',
  servingGram = 121, servingCup = 1/2,
  calorie = 35,
  water = 121-8-1, # 121* 240/255, # tested with bao()
  sodium = .005,
  carbohydrate = 8, sugar = 7)

Bruces_yam <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Bruce\'s', url = 'brucesyams.com/products/bruces-yams-cut-sweet-potatoes-in-syrup/')),
  name = 'Yam',
  review = 'may need Vitamix immersion blender - dont know how to use, dont buy for now',
  servingGram = 166, sodium = .07, sugar = 9, protein = 2)


Wegmans_peanutButter <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 26774L,
  name = 'Peanut\U1f95c Butter',
  servingTbsp = 2, servingGram = 32, 
  calorie = 190,
  fat = 16, carbohydrate = 7, sugar = 2, protein = 8)


Wegmans_beet <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmansorganic = 137496L,
  name = '\u751c\u83dc\u7c89 Beet Root Powder',
  extra = new(Class = 'extra', water = .6), # tested with bao()
  usd = 10.99/227*9.6,
  servingGram = 9.6, 
  # servingTbsp = 1, # packaging
  servingTbsp = 9.6/(37/4), # actual experiment: 1/4 cup = 37g
  sodium = .06, sugar = 2, protein = 1)


Wegmans_acai <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmansorganic = 138189L,
  name = '\u5df4\u897f\u8393\u7c89 A\u00e7a\u00ed Powder',
  usd = 16.79/113*3,
  servingGram = 3, 
  servingTsp = 2, # packaging
  extra = new(Class = 'extra', water = 5/38.2)) # tested on bao(): 8.5tbsp needs 5g water extra

Navitas_acai <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  navitas = 'acai-powder',
  name = '\u5df4\u897f\u8393\u7c89 A\u00e7a\u00ed Powder',
  usd = 39.99*(1-.2)/227*3, # subscribe discount
  servingGram = 3,
  servingTsp = 1.5, # packaging
  calorie = 20,
  fat = 1.5, carbohydrate = 1)


# fresh vegetables
bambooShoot <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 169210L,
  name = 'Bamboo Shoots', alias = '\u7af9\u7b0b', # \U1f38d
  servingGram = 100, water = 91, protein = 2.6, fat = .3, sugar = 3, sodium = .004)

garlic <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 2597546L,
  name = 'Garlic\U1f9c4, Fresh', alias = '\u849c\u84c9',
  servingGram = 100, carbohydrate = 20)

celeriac <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 170400L,
  name = 'Celery',
  servingGram = 100, water = 88, protein = 1.5, fat = .3, sodium = .1)

parsley <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 170416L, 
  name = 'Parsley',
  servingGram = 100, water = 87.7, protein = 2.97, fat = .79, sodium = .056)

FlavorFarmer_whitePeach <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 1102677L,
  brand = 'Flavor Farmer', name = 'White Peach, Fresh',
  servingGram = 100, pieceWeight = 130,
  water = 88.3, protein = .91, fat = .27, sodium = .013, sugar = 8.39,
  review = 'Fresh white peach sold at Costco in summer',
  machine = \(x) switch(x, bread = 'Wait until fully ripened, then store in fridge. Remove skin and pit, then blend.'))


kabochaSquash <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 1685816L,
  name = 'Kabocha Squash',
  servingGram = 100, protein = 1.18, sugar = 3.53)

avocado <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 171705L,
  name = '\u725b\u6cb9\u679c Avocado\U1f951',
  servingGram = 100, pieceWeight = 140,
  calorie = 160,
  water = 73.2, protein = 2, fat = 14.7, sugar = .66, sodium = .007)

lemon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 1102594L,
  name = '\u67e0\u6aac Lemon\U1f34b',
  servingGram = 100, water = 88.98, protein = 1.1, fat = .3, sugar = 2.5, sodium = .002)

lemonJuice <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 167747L,
  name = '\u67e0\u6aac\u6c41 Lemon\U1f34b Juice',
  servingGram = 100, pieceWeight = 48,
  water = 92.3, protein = 0.35, fat = 0.24, sugar = 2.52, sodium = .001)


lime <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 168155L,
  name = '\u9752\u67e0 Lime\U1f34b\u200d\U1f7e9',
  servingGram = 100, 
  calorie = 30,
  water = 88.3, protein = .7, fat = .2, sugar = 1.69, sodium = .002)

limeJuice <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 2344679L,
  name = '\u9752\u67e0\u6c41 Lime\U1f34b\u200d\U1f7e9 Juice',
  servingGram = 100, pieceWeight = 44,
  calorie = 25,
  water = 90.8, protein = 0.42, fat = 0.07, sugar = 1.69, sodium = .002)


lemonZest <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 167749L,
  name = 'Lemon\U1f34b Peel',
  servingGram = 100, water = 81.6, protein = 1.5, fat = .3, sugar = 4.17, sodium = .006)


watermelon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 167765L,
  name = 'Watermelon\U1f349',
  servingGram = 100, water = 91.4, protein = .61, fat = .15, sugar = 6.2, sodium = .001)




#' @rdname nutrition_fruit_vegetable
#' @export
Libbys_pumpkin <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Libby\'s\U1f1fa\U1f1f8', url = 'https://www.nestleprofessional.us/libbys/libbys-100-pure-pumpkin-6-x-106-oz-cans')),
  name = 'Pumpkin\U1f383 Puree', alias = '\u5357\u74dc\u6ce5',
  #usd = 8.98/(3*822)*122, sams = '162878', # 2023 early Fall, regular price
  usd = 3.91/(3*822)*122, sams = '162878', # 2023-12-24, clearance?
  # BJ's no longer have this at Christmas # 2023-12-24
  # Groupon's Sam's Club member is super cheap ($15) at Christmas! # 2023-12-24
  # usd = 10.49/(3*822)*122, bjs = 'libbys-100-pure-pumpkin-3-pk29-oz/3000000000000146833', # 2023 Fall
  servingGram = 122, servingCup = 1/2,
  calorie = 45,
  fat = .5, sodium = .005, carbohydrate = 10, fiber = 5, sugar = 5, protein = 1, 
  fdc = 168450L,
  water = 122-10-1-1) #122 * 240/300) # bao, I trust best

Libbys_pumpkinPieMix <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = 'Libby\'s\U1f1fa\U1f1f8', 
  name = 'Pumpkin\U1f383 Pie Mix', alias = '\u8c03\u5473\u5357\u74dc\u6ce5',
  target = 'A-14886100', usd = 4.49/850*87,
  servingGram = 87, servingCup = 1/3, 
  calorie = 80,
  water = (87-16) * 240/300, # using [Libbys_pumpkin] data
  sodium = .11, sugar = 18, addedSugar = 16)



Wegmans_tomato <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 109068L,
  name = 'Tomato\U1f345 Puree', alias = '\u897f\u7ea2\u67ff\u6ce5',
  servingGram = 63, servingCup = 1/4,
  sodium = .02, sugar = 3, protein = 1, 
  superior = 'WegmansOrganic_tomato')


#' @rdname nutrition_fruit_vegetable
#' @export
WegmansOrganic_tomato <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  wegmansorganic = 19227L, usd = 2.89/822*63, # instore should be cheaper
  name = 'Tomato\U1f345 Puree', alias = '\u897f\u7ea2\u67ff\u6ce5',
  servingGram = 63, servingCup = 1/4, 
  calorie = 25,
  sodium = .02, carbohydrate = 6, sugar = 3, protein = 1, 
  water = 63 * 300/400)


#' @rdname nutrition_fruit_vegetable
#' @export
Motts_applesauce <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = style_hyperlink(text = 'Motts', url = 'https://www.motts.com/products/applesauce/no-sugar-added-apple-applesauce') |> c(),
  name = 'Applesauce\U1f34e', alias = '\u82f9\u679c\u6ce5',
  fdc = 1102646L, # water 88.22% 
  wegmans = 2450L, usd = 3.99/1300*123,
  # nutrition facts on bottle label (sold at Costco, Wegmans, etc), not from merchandise website
  servingGram = 123, servingCup = 1/2, 
  calorie = 50,
  water = 123-14-1, # 123*.8822#, # matches
  carbohydrate = 14, sugar = 12)


#ThriveMarket_apple <- function() new(
#  # ThriveMarket.com now force you to join a paid membership
#  Class = 'nutrition', call = match.call()[[1L]], url = 'https://thrivemarket.com/p/thrive-market-organic-apple-sauce',
#  brand = 'Thrive Market', name = 'Applesauce\U1f34e',
#  servingGram = 140, sodium = .025, sugar = 15) # to try. Ingredient apple only



#' @rdname nutrition_fruit_vegetable
#' @export
Laura_soybean <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 174270L,
  name = 'Soy Bean', alias = '\u9ec4\u8c46',
  brand = c(style_hyperlink(text = 'Laura\U1f1fa\U1f1f8', url = 'https://laurasoybeans.com/product-category/laura-soybeans/')),
  amazon = 'B00C3FWXIC', 
  usd = 16.79/(5*453.6)*(100-8.54), # official website
  servingGram = 100 - 8.54, 
  servingCup = (100 - 8.54)/45*(1/4), # actual experiment: 45g = 1/4 cup
  calorie = 446,
  protein = 36.5, fat = 19.9, sugar = 7.33, sodium = .002)

Soymerica_soybean <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = '\u9ec4\u8c46 Soy Bean', 
  brand = 'Soymerica\U1f1fa\U1f1f8', amazon = 'B0763GC8SB', usd = 24.99/(7*453.6)*(100-8.54),
  fdc = 174270L,
  servingGram = 100 - 8.54, 
  servingCup = (100 - 8.54)/45*(1/4), # actual experiment with Laura_soybean(): 45g = 1/4 cup
  calorie = 446,
  protein = 36.5, fat = 19.9, sugar = 7.33, sodium = .002,
  superior = 'Laura_soybean'
)


Palouse_chickpea <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 173756L,
  name = '\u9e70\u5634\u8c46 Chickpea', brand = 'Palouse\U1f1fa\U1f1f8',
  url = 'www.palousebrand.com/products/garbanzo-beans-5-lb?variant=40131929407541',
  amazon = 'B001PEWJWC', usd = 18.95/(5*453.6)*(100-7.68),
  servingGram = 100 - 7.68, 
  protein = 20.5, fat = 6.04, carbohydrate = 30, sugar = 10.7, sodium = .024)

HaiTai_mung <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 174256L,
  name = '(\u5e26\u76ae)\u7eff\u8c46 Mung Bean', 
  haitaiusa = 'mung-bean-\ub179\ub450',
  usd = 5.99/910*38, yamibuy = '25775187',
  servingGram = 38, servingCup = 1/4, sodium = .006, carbohydrate = 24, sugar = 3, protein = 8, # package
  #servingGram = 100 - 9.05, protein = 23.9, fat = 1.15, sugar = 6.6, sodium = .015, # fdc
  #machine = \(x) switch(x, cookie = c('Grind dry beans using Niche Zero, Level 9')),
  review = 'Must use peeled mung bean for dessert!')

HaiTai_adzuki <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 543753L,
  name = '\u7ea2\u8c46 Adzuki Bean', 
  haitaiusa = 'red-bean-\ud325-4-lb',
  # servingGram = 100, fat = 1.54, protein = 6.92, sugar = 1.54, sodium = .262, # fdc
  usd = 8.99/907*45, yamibuy = '25775203',
  servingGram = 45, servingCup = 1/4, sodium = .008, carbohydrate = 27, sugar = 1, protein = 8
  #machine = \(x) switch(x, cookie = c('Grind dry beans using Niche Zero, Level 9'))
)

redKidneyBean <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 173744L,
  name = '\u7ea2\u82b8\u8c46 Red Kidney Bean\U1fad8', 
  brand = c(style_hyperlink(text = 'Iberia\U1f1fa\U1f1f8', url = 'https://iberiafoods.com/product/iberia-red-kidney-beans-4-lbs/')),
  amazon = 'B079S8D2YP', usd = 8.86/(4*454)*42,
  #servingGram = 100 - 11.8, protein = 22.5, fat = 1.06, sugar = 2.1, sodium = .012 # fdc
  servingGram = 42, servingCup = 1/4, sodium = .005, carbohydrate = 26, sugar = 1, protein = 9)

pistachio <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 170184L,
  name = 'Pistachio, raw',
  servingGram = 100, protein = 20.2, fat = 45.3, sugar = 7.66, sodium = .001)


OsmanthusFragrans <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'OsmanthusFragrans')


banana <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 1102653L,
  name = '\u9999\u8549 Banana\U1f34c', wegmans = 35418L,
  servingGram = 100,
  calorie = 89, # kcal
  water = 74.91, protein = 1.09, fat = .33, carbohydrate = 22.84, sugar = 12.23, sodium = .001)
  

carrot <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 170393L,
  name = '\u751f\u80e1\u841d\u535c Carrot\U1f955',
  servingGram = 100, 
  calorie = 41,
  water = 88.3, protein = .93, fat = .24, carbohydrate = 9.58, sugar = 4.74, sodium = .069)


walnut <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 2346394L,
  name = '\u751f\u6838\u6843 Walnut',
  servingGram = 100,
  calorie = 730,
  water = 3.14, protein = 14.6, fat = 69.7, carbohydrate = 10.9, sodium = .0025)



Bossen_pineapple <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Pineapple\U1f34d Concentrated Syrup', alias = '\u83e0\u841d\u7cd6\u6d46',
  brand = style_hyperlink(text = '', url = 'https://www.bossenstore.com/products/pineapple-syrup-new') |> c(),
  webstaurant = '535SYPPINAPL',
  usd = 12.93/2500*25,
  # why all added sugar?
  servingGram = 25, carbohydrate = 17, sugar = 17, addedSugar = 17)
