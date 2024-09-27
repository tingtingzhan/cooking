

FageTotal0_yogurtGreek <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Fage Total 0%', url = 'https://usa.fage/products/yogurt/fage-total-0')),
  name = '\u8131\u8102\u5e0c\u814a\u9178\u5976 Nonfat Greek Yogurt',
  servingGram = 170, # sold at Costco, 3lb, 1360g
  servingCup = 3/4, # packaging
  sodium = .065, sugar = 5, protein = 18,
  fdc = 170903L, water = 170*.836)


MembersMark_yogurtGreek <- function() new(
  Class = 'nutrition', 
  sams = 'prod23131577', usd = 4.38/1130*170, # sold at Sams, 2.5lb
  name = '\u8131\u8102\u5e0c\u814a\u9178\u5976 Nonfat Greek Yogurt',
  servingGram = 170, 
  servingCup = 3/4,
  cholesterol = .01, sodium = .055, sugar = 6, protein = 18,
  fdc = 170903L, water = 170*.836)


SimpleTruth_yogurt <- function() new(
  Class = 'nutrition', url = 'https://www.kroger.com/p/simple-truth-organic-plain-lowfat-yogurt/0001111045530',
  brand = 'Simple Truth Organic', 
  name = '\u4f4e\u8102\u9178\u5976 Low-Fat Yogurt',
  servingGram = 170, servingCup = 2/3,
  fat = 2.5, sodium = .110, sugar = 12, protein = 8,
  fdc = 171284L, water = 170*.879)



Stonyfield_yogurt <- function() new(
  Class = 'nutrition', url = 'https://www.stonyfield.com/products/nonfat-yogurt-plain-32-oz/',
  brand = 'Stonyfield Organic', name = '\u9178\u5976 Yogurt',
  wegmans = 33829L, usd = 4.99/907*170,
  servingGram = 170, servingCup = 3/4,
  cholesterol = .005, sodium = .12, sugar = 7, protein = 7,
  fdc = 171284L, water = 170*.879)

Nancys_yogurt <- function() new(
  Class = 'nutrition',
  nancysyogurt = 'organic-100-grass-fed-yogurt',
  name = '\u9178\u5976 Organic 100% Grass-Fed Yogurt',
  # Nancy's yogurt has a very pleasant signature flavor!!!
  wegmans = 224506L, usd = 5.99/680*170,
  servingGram = 170, 
  servingCup = 3/4, # no label
  fat = 6, sodium = .115, cholesterol = .025, sugar = 11, protein = 7,
  fdc = 171284L, water = 170*.879)






UpstateFarms_buttermilk <- function() new(
  Class = 'nutrition', wegmans = 237692L,
  brand = 'Upstate Farms', name = '\u916a\u6d46 Whole Buttermilk',
  # https://www.upstatefarms.com/products # no whole version!!
  servingGram = 240, servingCup = 1,
  fat = 8, cholesterol = .03, sodium = .22, sugar = 13, protein = 9,
  fdc = 172225L, # water = 240*.879 # greater than total weight!
  water = floor(240 - 8 - .03 - .22 - 13 - 9)
)



Carnation_evaporatedMilk <- function() new(
  Class = 'nutrition', nestle = '11002753',
  brand = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', name = '\u6de1\u5976 Evaporated Milk',
  walmart = '10291864', usd = 1.08/354*30,
  # 354ml, full can 422g, empty can 46g,
  servingGram = (422 - 46)/354*30, servingTbsp = 2,
  fat = 2, sugar = 3, sodium = .03, protein = 2)

# https://www.walmart.com/ip/Nestle-Carnation-Lowfat-2-Evaporated-Milk-Vitamins-A-and-D-Added-12-fl-oz/10804669?from=/search

CarnationFatFree_evaporatedMilk <- function() new(
  Class = 'nutrition', 
  walmart = '1363902922', usd = 6.88/354*30, # 2023-11-11
  brand = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', name = '\u8131\u8102\u6de1\u5976 Fat Free Evaporated Milk',
  # fullweight = 431, emptyweight = 46,
  servingGram = (431-46)/354*30, servingTbsp = 2,
  sodium = .035, sugar = 3, protein = 2)




Carnation_condensedMilk <- function() new(
  Class = 'nutrition', url = 'https://www.verybestbaking.com/carnation/products/nestle-carnation-sweetened-condensed-milk-14-oz/',
  brand = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', name = 'Sweetened Condensed Milk',
  servingGram = 397/10, servingTbsp = 2,
  usd = 2.99/10,
  fdc = 365332L,
  # https://en.wikipedia.org/wiki/Condensed_milk # 60% water removed. 
  # whole milk has 87% water.
  # .87 * .4 = .35
  # condensed milk has .13 (solid) + .35 (remaining water)
  # water content .35/(.13 + .35) = 73% # ???
  fat = 3.5, sodium = .045, sugar = 22, protein = 3) # remaining weight ~11g


# whole milk contains 87% water https://www.hsph.harvard.edu/nutritionsource/milk/


Philadelphia_creamCheese <- function() new(
  Class = 'nutrition',
  brand = unclass(style_hyperlink(text = 'Philadelphia\U1f1fa\U1f1f8', url = 'https://www.kraftheinzawayfromhome.com/products/10021000616005/')),
  name = '\u5976\u6cb9\u5976\u916a Cream Cheese',
  contain = c('carob bean gum'), # same as 'locust bean gum'
  servingGram = 28, # no volume info!!
  calorie = 100,
  fat = 9, cholesterol = .03, sodium = .11, carbohydrate = 1, sugar = 1, protein = 2)



PhiladelphiaNeufchatel_creamCheese <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Philadelphia\U1f1fa\U1f1f8', url = 'https://www.kraftheinzawayfromhome.com/products/10021000616401/')),
  name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a Neufcha\u0302tel Cream Cheese',
  walmart = '36647454', usd = 4.98/2/227*28, # 2023-11-11
  contain = c('xanthan gum', 'carob bean gum', 'guar gum'),
  servingGram = 28, 
  calorie = 70,
  fat = 6, cholesterol = .02, sodium = .125, carbohydrate = 2, sugar = 1, protein = 2)


LucerneNeufchatel_creamCheese <- function() new(
  Class = 'nutrition', acme = 137100657L,
  brand = 'Lucerne', name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a Neufcha\u0302tel Cheese',
  servingGram = 28, fat = 6, sodium = .105, sugar = 2, protein = 2)


GreatValueNeufchatel_creamCheese <- function() new(
  Class = 'nutrition', 
  walmart = '10452358', usd = 1.48/227*28,
  name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a Neufcha\u0302tel Cheese',
  servingGram = 28, fat = 6, sodium = .105, sugar = 2, protein = 2)


OrganicValleyNeufchatel_creamCheese <- function() new(
  Class = 'nutrition', 
  organicvalley = 'cream-cheese/neufchatel/neufchatel-8-oz-bar',
  name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a Neufcha\u0302tel Cheese',
  wegmans = 182L, usd = 4.59/8,
  servingGram = 28, servingTbsp = 2,
  calorie = 70,
  fat = 6, sodium = .115, sugar = 1, protein = 2)


OrganicValley_creamCheese <- function() new(
  Class = 'nutrition', 
  organicvalley = 'cream-cheese/cream-cheese/cream-cheese-8-oz-bar/',
  name = '\u5976\u6cb9\u5976\u916a Cream Cheese',
  wegmans = 11914L, usd = 4.59/8,
  servingGram = 28, servingTbsp = 2,
  calorie = 110,
  fat = 10, cholesterol = 30, sodium = .1, 
  carbohydrate = 2, sugar = 1, protein = 2)


TraderJoes_creamCheese <- function() new(
  Class = 'nutrition',
  traderjoes = 'cream-cheese-012491',
  name = '\u5976\u6cb9\u5976\u916a Cream Cheese',
  contain = c('xanthan gum', 'carob bean gum', 'guar gum'),
  servingGram = 28, servingTbsp = 2, 
  calorie = 90,
  fat = 9, cholesterol = .03, sodium = .095, carbohydrate = 2, sugar = 1)



TraderJoesLight_creamCheese <- function() new(
  Class = 'nutrition',
  brand = 'Trader Joe\'s', name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a Light Cream Cheese',
  contain = c('whey proteins', 'xanthan gum', 'locust bean gum', 'guar gum', 'microbial rennet'),
  servingGram = 28, 
  fat = 9, sodium = .095, sugar = 1)



WholeFoods365_creamCheese <- function() new(
  Class = 'nutrition', wholefoods = 'b074h6qz3j',
  name = '\u5976\u6cb9\u5976\u916a Cream Cheese', 
  contain = 'locust bean gum',
  servingGram = 28, servingTbsp = 2, 
  calorie = 100,
  fat = 10, cholesterol = .03, sodium = .095, carbohydrate = 2, protein = 2)



Nancys_creamCheese <- function() new(
  Class = 'nutrition', 
  nancysyogurt = 'organic-natural-cream-cheese',
  wegmans = 260929L, usd = 4.59/227*30, # in store price cheaper than online, 2023-11-11
  name = '\u5976\u6cb9\u5976\u916a Organic Cultured Cream Cheese',
  servingGram = 30, servingTbsp = 2,
  calorie = 110,
  fat = 10, cholesterol = .025, sodium = .04, carbohydrate = 2, sugar = 1, protein = 1)



Daisy_sourCream <- function() new( # no filler
  Class = 'nutrition', 
  daisybrand = 'sour-cream',
  name = 'Sour Cream',
  servingGram = 30, servingTbsp = 2,
  calorie = 60,
  fdc = 171257L, water = 30*.731,
  fat = 5, cholesterol = .02, sodium = .015, sugar = 1, protein = 1)



DaisyLight_sourCream <- function() new( # no filler
  Class = 'nutrition', daisybrand = 'sour-cream',
  name = 'Light Sour Cream',
  servingGram = 30, servingTbsp = 2,
  calorie = 35,
  fdc = 173443L, water = 30*.781,
  fat = 2.5, cholesterol = .01, sodium = .015, sugar = 1, protein = 2,
  review = 'Do not buy. This is a mixture of cultured cream and skim milk')





Daisy_cottageCheese <- function() new(
  Class = 'nutrition', daisybrand = 'cottage-cheese',
  name = 'Cottage Cheese',
  walmart = '15716748', usd = 3.78/680*113,
  wegmans = 265495L,
  servingGram = 113, servingCup = 1/2,
  fdc = 172179L, water = 113*.798,
  fat = 5, cholesterol = .02, sodium = .39, sugar = 4, protein = 13)

DaisyLite_cottageCheese <- function() new(
  Class = 'nutrition', daisybrand = 'cottage-cheese',
  name = 'Low Fat Cottage Cheese',
  walmart = '15716747', usd = 3.78/680*113,
  wegmans = 265512L,
  servingGram = 113, servingCup = 1/2,
  fdc = 328841L, water = 113*.811,
  fat = 2.5, cholesterol = .01, sodium = .35, sugar = 4, protein = 13)


Lucerne_cottageCheese <- function() new(
  Class = 'nutrition', 
  brand = 'Lucerne', name = 'Cottage Cheese',
  acme = 960109551L, usd = 4.19/680*113,
  servingGram = 113, servingCup = 1/2,
  cholesterol = .005, sodium = .42, protein = 12)




TraderJoesLight_sourCream <- function() new( # no filler
  Class = 'nutrition',
  brand = 'Trader Joe\'s', name = 'Light Sour Cream',
  servingGram = 30, servingTbsp = 2,
  fat = 2.5, sodium = .03, sugar = 2, protein = 2)


# whole milk nutrition 
# fdc = 171265L
# contains 88.1% water

Wegmans_whole_milk <- function() new(
  Class = 'nutrition', fdc = 171265L,
  wegmans = 19907L,
  name = '\u5168\u8102\u725b\u5976 Vitamin D, Whole Milk',
  servingGram = 250, servingCup = 1, 
  water = 250*.881, 
  fat = 8, sodium = .115, sugar = 12, protein = 8)

WegmansOrganic_whole_milk <- function() new(
  Class = 'nutrition', fdc = 171265L, 
  wegmansorganic = 9975L,
  name = '\u5168\u8102\u725b\u5976 Vitamin D, Whole Milk',
  servingGram = 250, servingCup = 1, 
  water = 250*.881, 
  fat = 8, sodium = .115, sugar = 12, protein = 8)

Wawa_2perc_milk <- function() new(
  Class = 'nutrition', wawa = '4ff1fb27-adc2-4cfc-95be-08f519fd8f32',
  name = '2% Reduced Fat Milk',
  servingGram = 240, serving_ml = 240,
  usd = 2.75/8,
  calorie = 120,
  fat = 5, cholesterol = .02, sodium = .115, carbohydrate = 12, sugar = 12, protein = 8)


# Water content of heavy cream is 57.7%, 
# fdc = 170859L

Wegmans_heavyCream <- function() new(
  Class = 'nutrition', wegmans = 21152L, # ? 220504L
  name = '\u91cd\u5976\u6cb9 Heavy Cream',
  servingGram = 15, 
  servingTbsp = 1, # packaging
  usd = 6.49/946*15,
  calorie = 50,
  fat = 5, cholesterol = .015, water = 15 * .577) 


WholeFoods365_heavyCream <- function() new( # no filler
  Class = 'nutrition', wholefoods = 'b07qf6f984',
  name = '\u91cd\u5976\u6cb9 Heavy Cream', 
  servingGram = 15, servingTbsp = 1,
  fat = 6, cholesterol = .015, water = 15 * .577)

TraderJoes_heavyCream <- function() new( # 
  Class = 'nutrition',
  brand = 'Trader Joe\'s', name = '\u91cd\u5976\u6cb9 Heavy Cream', 
  # the version labelled as 'organic' contains gellan gum
  # the version without 'organic' contains no filler
  servingGram = 15, servingTbsp = 1,
  fat = 6, water = 15 * .577)


NatureByNature_heavyCream <- function() new( # no filler, sold at Giant
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(url = 'https://www.naturalbynaturedairy.com/heavy-cream', text = 'Nature By Nature')), 
  name = '\u91cd\u5976\u6cb9 Heavy Cream',
  servingGram = 15, servingTbsp = 1,
  fat = 6, water = 15 * .577)


LandOLakes_whippedHeavyCream <- function() new(
  Class = 'nutrition',
  brand = unclass(style_hyperlink(url = 'https://www.landolakes.com/where-to-buy/aerosol-whipped-cream/', text = 'Land O Lakes')), 
  name = '\u6253\u53d1\u91cd\u5976\u6cb9 Whipped Heavy Cream',
  costcoBiz = '100284038',
  servingGram = 6, servingTbsp = 2,
  fat = 2, cholesterol = .01, sugar = 1)

if (FALSE) {
  nutrition_(
    LandOLakes_whippedHeavyCream,
    Wegmans_heavyCream
  ) # same fat content!!
}




# Supervalu, Inc. light cream
# does not have water content
# fdc = 2399202L

# water content of light cream 63.5%, 
# fdc = 170858L

Lucerne_lightCream <- function() new(
  Class = 'nutrition', 
  brand = 'Lucerne', name = 'Light Cream',
  acme = 960044744L, usd = 3.19/473*14.79,
  servingGram = 15, servingTbsp = 1,
  calorie = 30,
  water = 15*.635,
  fat = 3, cholesterol = .01, sodium = .015, sugar = 1)


