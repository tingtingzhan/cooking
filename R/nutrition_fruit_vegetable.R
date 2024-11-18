# dried fruits
OceanSpray_cranberry <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(url = 'https://www.oceanspray.com/products/craisins-original-dried-cranberries-6-oz', text = 'Ocean Spray')), 
  name = 'Dried Cranberries',
  costco = '100400518',
  servingGram = 40, sugar = 29)

SunnyFruit_fig <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(url = 'https://sunnyfruit.com/products/organic-dried-figs', text = 'Sunny Fruit')), 
                  name = 'Dried Figs',
  costcoBiz = '100362726',
  servingGram = 40, sugar = 21)

SunnyFruit_date <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(url = 'https://sunnyfruit.com/products/organic-pitted-dates', text = 'Sunny Fruit')), 
  name = 'Pitted Dates',
  servingGram = 40, sugar = 30)

Kirkland_plum <- function() new(
  Class = 'nutrition', 
  costco = '100334316',
  name = 'Dried Plums',
  servingGram = 40, sugar = 14)


Kirkland_mixedVeggies <- function() new(
  Class = 'nutrition',
  name = '\u51b7\u51bb\u6742\u852c Mixed Vegetables\U1f955\U1fadb\U1f33d',
  costcoBiz = '100351236',
  servingGram = 90, fat = .5, sodium = .02, sugar = 4, protein = 2)

Kirkland_blueberry <- function() new(
  Class = 'nutrition', 
  costcoBiz = '100206942',
  name = 'Frozen Blueberry\U1fad0',
  servingGram = 140, 
  calorie = 70,
  sugar = 12, protein = 1,
  water = 140*.866, fdc = 173950L)

Kirkland_strawberry <- function() new(
  Class = 'nutrition', 
  costcoBiz = c(
    '100273803' # frequently seen in store
    # '11273181' # rarely seen in store
  ),
  name = '\u8349\u8393 Strawberry\U1f353',
  servingGram = 140, servingCup = 1, 
  calorie = 50, 
  carbohydrate = 13, sugar = 6)

Kirkland_yellowCorn <- function() new(
  Class = 'nutrition', url = 'https://costcofdb.com/product/kirkland-signature-organic-yellow-sweet-corn-5-lbs',
  brand = 'Kirkland\U1f1fa\U1f1f8', name = '\u51b7\u51bb\u751c\u7389\u7c73 Frozen Yellow Corn\U1f33d',
  servingGram = 90, 
  #servingCup = 2/3, # packaging
  servingCup = 90/128,# actual experiment 1cup = 128g
  fat = 1.5, sugar = 7, protein = 3)



Kirkland_peach <- function() new(
  Class = 'nutrition', costcoBiz = '100237862',
  name = 'Sliced Peaches',
  servingGram = 120, sodium = .01, sugar = 14,
  machine = function(x) { # `x` is class(recipe)
    switch(x, c('Drain Kirkland Sliced Peaches and discard syrup (contains added sugar)'))
  })


mango <- function() new( 
  Class = 'nutrition', 
  fdc = 169910L, # water 83.5%
  brand = 'Ultra Organics', name = '\u8292\u679c(\u6ce5) Mango\U1f96d',
  costcoBiz = '100370260',
  servingGram = 140, 
  servingCup = 1, # puree density; confirm with experiment!!
  sugar = 19, protein = 1,
  water = 140*.744 # old experiment on \linkS4class{mantou}, not reliable!!
)





HappyVillage_strawberry <- function() new( # frozen; sold at Costco
  Class = 'nutrition', 
  brand = 'Happy Village', 
  name = '\u8349\u8393 Strawberry\U1f353',
  url = 'www.instacart.com/products/25833270-happy-village-frozen-organic-strawberries-4-lb',
  servingGram = 140, servingCup = 1, 
  calorie = 50, sugar = 6, protein = 1)

HappyVillage_darkCherry <- function() new(
  Class = 'nutrition', costcoBiz = '100313436',
  brand = 'Happy Village', name = '\u751c\u6a31\u6843 Dark Cherry\U1f352',
  servingGram = 140, servingCup = 1,
  calorie = 90,
  water = 140*240/310, # tested with bao()
  carbohydrate = 21, sugar = 16, protein = 1)

# fresh fruit
LuckyTaro_durian <- function() new(
  Class = 'nutrition', 
  costcoBiz = '2001112853',
  brand = 'Lucky Taro', name = 'Durian',
  # servingGram = mean.default(c(955)) - 642, # subtract seed
  # Nutrition label: 1/2 tray, 200g 
  # fat = .4*2, sodium = .023*2, sugar = 19.6*2, protein = 1.2*2,
  
  servingGram = 200, usd = 25/2, # vague memory
  fat = .4, sodium = .023, sugar = 19.6, protein = 1.2,
  review = 'I have severe bad reaction to real durian')





Wegmans_pineapple <- function() new(
  Class = 'nutrition', wegmans = 10230L,
  name = '\u83e0\u841d\u7f50\u5934 Crushed Pineapple\U1f34d',
  servingGram = 122, servingCup = 1/2, 
  sugar = 13, superior = 'Dole_pineapple')

Libbys_pineapple <- function() new(
  Class = 'nutrition', 
  wegmans = 20294L,
  brand = 'Libby\'s\U1f1fa\U1f1f8', name = '\u83e0\u841d\u7f50\u5934 Crushed Pineapple\U1f34d',
  servingGram = 122, servingCup = 1/2, 
  sugar = 13, review = 'Don\'t buy. Chopped, not crushed. More expensive than Wegmans.')

Dole_pineapple <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(url = 'dolesunshine.com/us/en/products/pantry/canned-fruit/', text = 'Dole\U1f33a')),
  name = '\u83e0\u841d\u7f50\u5934 Pineapple\U1f34d in 100% Juice',
  # fdc = 167767L, # water = 83.5%, not accurate!!
  amazon = 'B00GFROV7A', usd = 22.46/12/567*122, 
  servingGram = 122, servingCup = 1/2,
  water = 122 * (240/270), # confirmed with bao()
  #sugar = 15, # on package label, but add up to more than 122..
  sugar = (122 * (30/270) - 1) * .99,
  protein = 1)


DelMonte_pear <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Del Monte\U1f1fa\U1f1f8', url = 'www.delmonte.com/products/fruits/pears/sliced-pears-no-sugar-added')),
  name = '\u68a8\u7f50\u5934 Sliced Pears\U1f350',
  servingGram = 121, servingCup = 1/2,
  water = 121 * 240/255, # tested with bao()
  calorie = 40, sodium = .005, sugar = 7) 


DelMonte_mandarine <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Del Monte\U1f1fa\U1f1f8', url = 'www.delmonte.com/products/fruits/mandarin-oranges/mandarin-oranges-no-sugar-added')),
  name = '\u6a58\u5b50\u7f50\u5934 Mandarin Oranges\U1f34a',
  servingGram = 123, servingCup = 1/2,
  water = 123 * 240/245, # tested with bao()
  calorie = 60, 
  #sugar = 5, protein = 1 # packaging; add up to more than 100%
  sugar = 123*5/245
) 


DelMonte_peach <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Del Monte\U1f1fa\U1f1f8', url = 'www.delmonte.com/products/fruits/peaches/sliced-yellow-cling-peaches-no-sugar-added')),
  name = '\u9ec4\u6843 Yellow Cling Peaches\U1f351',
  servingGram = 121, servingCup = 1/2,
  calorie = 35,
  water = 121* 240/255, # tested with bao()
  #carbohydrate = 8, # add up to more than 100%
  carbohydrate = 121* 15/255,
  sugar = 7)

Bruces_yam <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Bruce\'s', url = 'brucesyams.com/products/bruces-yams-cut-sweet-potatoes-in-syrup/')),
  name = 'Yam',
  review = 'may need Vitamix immersion blender - dont know how to use, dont buy for now',
  servingGram = 166, sodium = .07, sugar = 9, protein = 2)


Wegmans_peanutButter <- function() new(
  Class = 'nutrition', wegmans = 26774L,
  name = 'Peanut Butter',
  servingTbsp = 2, servingGram = 32, fat = 16, sugar = 2, protein = 8)


Wegmans_beet <- function() new(
  Class = 'nutrition', wegmansorganic = 137496L,
  name = '\u751c\u83dc\u7c89 Beet Root Powder',
  extra = new(Class = 'extra', water = .6), # tested with bao()
  usd = 10.99/227*9.6,
  servingGram = 9.6, 
  # servingTbsp = 1, # packaging
  servingTbsp = 9.6/(37/4), # actual experiment: 1/4 cup = 37g
  sodium = .06, sugar = 2, protein = 1)


Wegmans_acai <- function() new(
  Class = 'nutrition', wegmansorganic = 138189L,
  name = '\u5df4\u897f\u8393\u7c89 A\u00e7a\u00ed Powder',
  usd = 16.79/113*3,
  servingGram = 3, 
  servingTsp = 2, # packaging
  extra = new(Class = 'extra', water = 5/38.2)) # tested on bao(): 8.5tbsp needs 5g water extra

Navitas_acai <- function() new(
  Class = 'nutrition',
  navitas = 'acai-powder',
  name = '\u5df4\u897f\u8393\u7c89 A\u00e7a\u00ed Powder',
  usd = 39.99*(1-.2)/227*3, # subscribe discount
  servingGram = 3,
  servingTsp = 1.5, # packaging
  calorie = 20,
  fat = 1.5, carbohydrate = 1)


# fresh vegetables
bambooShoot <- function() new(
  Class = 'nutrition', fdc = 169210L,
  name = '\u7af9\u7b0b Bamboo Shoots', # \U1f38d
  servingGram = 100, water = 91, protein = 2.6, fat = .3, sugar = 3, sodium = .004)


celeriac <- function() new(
  Class = 'nutrition', fdc = 170400L,
  name = 'Celery',
  servingGram = 100, water = 88, protein = 1.5, fat = .3, sodium = .1)

parsley <- function() new(
  Class = 'nutrition', fdc = 170416L, 
  name = 'Parsley',
  servingGram = 100, water = 87.7, protein = 2.97, fat = .79, sodium = .056)

FlavorFarmer_whitePeach <- function() new(
  Class = 'nutrition', fdc = 1102677L,
  brand = 'Flavor Farmer', name = 'White Peach, Fresh',
  servingGram = 100, pieceWeight = 130,
  water = 88.3, protein = .91, fat = .27, sodium = .013, sugar = 8.39,
  review = 'Fresh white peach sold at Costco in summer',
  machine = function(x) switch(x, bread = 'Wait until fully ripened, then store in fridge. Remove skin and pit, then blend.'))


kabochaSquash <- function() new(
  Class = 'nutrition', fdc = 1685816L,
  name = 'Kabocha Squash',
  servingGram = 100, protein = 1.18, sugar = 3.53)

avocado <- function() new(
  Class = 'nutrition', fdc = 171705L,
  name = '\u725b\u6cb9\u679c Avocado\U1f951',
  servingGram = 100, pieceWeight = 140,
  calorie = 160,
  water = 73.2, protein = 2, fat = 14.7, sugar = .66, sodium = .007)

lemon <- function() new(
  Class = 'nutrition', fdc = 1102594L,
  name = '\u67e0\u6aac Lemon\U1f34b',
  servingGram = 100, water = 88.98, protein = 1.1, fat = .3, sugar = 2.5, sodium = .002)

lemonJuice <- function() new(
  Class = 'nutrition', fdc = 167747L,
  name = '\u67e0\u6aac\u6c41 Lemon\U1f34b Juice',
  servingGram = 100, pieceWeight = 48,
  water = 92.3, protein = 0.35, fat = 0.24, sugar = 2.52, sodium = .001)


lime <- function() new(
  Class = 'nutrition', fdc = 168155L,
  name = '\u9752\u67e0 Lime\U1f34b\u200d\U1f7e9',
  servingGram = 100, 
  calorie = 30,
  water = 88.3, protein = .7, fat = .2, sugar = 1.69, sodium = .002)

limeJuice <- function() new(
  Class = 'nutrition', fdc = 2344679L,
  name = '\u9752\u67e0\u6c41 Lime\U1f34b\u200d\U1f7e9 Juice',
  servingGram = 100, pieceWeight = 44,
  calorie = 25,
  water = 90.8, protein = 0.42, fat = 0.07, sugar = 1.69, sodium = .002)


lemonZest <- function() new(
  Class = 'nutrition', fdc = 167749L,
  name = 'Lemon\U1f34b Peel',
  servingGram = 100, water = 81.6, protein = 1.5, fat = .3, sugar = 4.17, sodium = .006)


watermelon <- function() new(
  Class = 'nutrition', fdc = 167765L,
  name = 'Watermelon\U1f349',
  servingGram = 100, water = 91.4, protein = .61, fat = .15, sugar = 6.2, sodium = .001)



Laura_soybean <- function() new(
  Class = 'nutrition', fdc = 174270L,
  name = '\u9ec4\u8c46 Soy Bean', 
  brand = unclass(style_hyperlink(text = 'Laura\U1f1fa\U1f1f8', url = 'https://laurasoybeans.com/product-category/laura-soybeans/')),
  amazon = 'B00C3FWXIC', 
  usd = 16.79/(5*453.6)*(100-8.54), # official website
  servingGram = 100 - 8.54, 
  servingCup = (100 - 8.54)/45*(1/4), # actual experiment: 45g = 1/4 cup
  calorie = 446,
  protein = 36.5, fat = 19.9, sugar = 7.33, sodium = .002)

Soymerica_soybean <- function() new(
  Class = 'nutrition',
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
  Class = 'nutrition', fdc = 173756L,
  name = '\u9e70\u5634\u8c46 Chickpea', brand = 'Palouse\U1f1fa\U1f1f8',
  url = 'www.palousebrand.com/products/garbanzo-beans-5-lb?variant=40131929407541',
  amazon = 'B001PEWJWC', usd = 18.95/(5*453.6)*(100-7.68),
  servingGram = 100 - 7.68, 
  protein = 20.5, fat = 6.04, carbohydrate = 30, sugar = 10.7, sodium = .024)

HaiTai_mung <- function() new(
  Class = 'nutrition', fdc = 174256L,
  name = '(\u5e26\u76ae)\u7eff\u8c46 Mung Bean', 
  haitaiusa = 'mung-bean-\ub179\ub450',
  usd = 5.99/910*38, # https://www.yamibuy.com/zh/p/mung-bean-2lb/1149010281
  servingGram = 38, servingCup = 1/4, sodium = .006, carbohydrate = 24, sugar = 3, protein = 8, # package
  #servingGram = 100 - 9.05, protein = 23.9, fat = 1.15, sugar = 6.6, sodium = .015, # fdc
  #machine = function(x) switch(x, cookie = c('Grind dry beans using Niche Zero, Level 9')),
  review = 'Must use peeled mung bean for dessert!')

HaiTai_adzuki <- function() new(
  Class = 'nutrition', fdc = 543753L,
  name = '\u7ea2\u8c46 Adzuki Bean', 
  haitaiusa = 'red-bean-\ud325-4-lb',
  # servingGram = 100, fat = 1.54, protein = 6.92, sugar = 1.54, sodium = .262, # fdc
  usd = 8.99/907*45, 
  # url = 'www.yamibuy.com/zh/p/red-bean-2lb/1149010271'
  servingGram = 45, servingCup = 1/4, sodium = .008, carbohydrate = 27, sugar = 1, protein = 8
  #machine = function(x) switch(x, cookie = c('Grind dry beans using Niche Zero, Level 9'))
)

redKidneyBean <- function() new(
  Class = 'nutrition', fdc = 173744L,
  name = '\u7ea2\u82b8\u8c46 Red Kidney Bean\U1fad8', 
  brand = unclass(style_hyperlink(text = 'Iberia\U1f1fa\U1f1f8', url = 'https://iberiafoods.com/product/iberia-red-kidney-beans-4-lbs/')),
  amazon = 'B079S8D2YP', usd = 8.86/(4*454)*42,
  #servingGram = 100 - 11.8, protein = 22.5, fat = 1.06, sugar = 2.1, sodium = .012 # fdc
  servingGram = 42, servingCup = 1/4, sodium = .005, carbohydrate = 26, sugar = 1, protein = 9)

pistachio <- function() new(
  Class = 'nutrition', fdc = 170184L,
  name = 'Pistachio, raw',
  servingGram = 100, protein = 20.2, fat = 45.3, sugar = 7.66, sodium = .001)


OsmanthusFragrans <- function() new(Class = 'nutrition', name = 'OsmanthusFragrans')


banana <- function() new(
  Class = 'nutrition', fdc = 1102653L,
  name = '\u9999\u8549 Banana\U1f34c', wegmans = 35418L,
  servingGram = 100,
  calorie = 89, # kcal
  water = 74.91, protein = 1.09, fat = .33, carbohydrate = 22.84, sugar = 12.23, sodium = .001)
  

carrot <- function() new(
  Class = 'nutrition', fdc = 170393L,
  name = '\u751f\u80e1\u841d\u535c Carrot\U1f955',
  servingGram = 100, 
  calorie = 41,
  water = 88.3, protein = .93, fat = .24, carbohydrate = 9.58, sugar = 4.74, sodium = .069)


walnut <- function() new(
  Class = 'nutrition', fdc = 2346394L,
  name = '\u751f\u6838\u6843 Walnut',
  servingGram = 100,
  calorie = 730,
  water = 3.14, protein = 14.6, fat = 69.7, carbohydrate = 10.9, sodium = .0025)
