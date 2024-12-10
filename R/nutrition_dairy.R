
#' @title Dairy Products
#' 
#' @examples
#' diagnose(
#'  Nancys_creamCheese,
#'  Philadelphia_creamCheese,
#'  OrganicValley_creamCheese,
#'  TraderJoes_creamCheese,
#'  Tillamook_creamCheese
#' )
#' 
#' @keywords internal
#' @name nutrition_dairy
NULL


#' @rdname nutrition_dairy
#' @export
FageTotal0_yogurtGreek <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Fage Total 0%', url = 'https://usa.fage/products/yogurt/fage-total-0')),
  name = 'Nonfat Greek Yogurt', alias = '\u8131\u8102\u5e0c\u814a\u9178\u5976',
  servingGram = 170, # sold at Costco, 3lb, 1360g
  servingCup = 3/4, # packaging
  calorie = 90,
  sodium = .065, sugar = 5, protein = 18,
  fdc = 170903L, water = 170*.836)


#' @rdname nutrition_dairy
#' @export
MembersMark_yogurtGreek <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  sams = 'prod23131577', usd = 4.38/1130*170, # sold at Sams, 2.5lb
  name = 'Nonfat Greek Yogurt', alias = '\u8131\u8102\u5e0c\u814a\u9178\u5976',
  servingGram = 170, 
  servingCup = 3/4,
  calorie = 100,
  cholesterol = .01, sodium = .055, sugar = 6, protein = 18,
  fdc = 170903L, water = 170*.836)

#' @rdname nutrition_dairy
#' @export
SimpleTruth_yogurt <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  url = 'https://www.kroger.com/p/simple-truth-organic-plain-lowfat-yogurt/0001111045530',
  brand = 'Simple Truth Organic', 
  name = 'Low-Fat Yogurt', alias = '\u4f4e\u8102\u9178\u5976',
  servingGram = 170, servingCup = 2/3,
  calorie = 120,
  fat = 2.5, sodium = .110, sugar = 12, protein = 8,
  fdc = 171284L, water = 170*.879)


#' @rdname nutrition_dairy
#' @export
Stonyfield_yogurt <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  stonyfield = 'nonfat-yogurt-plain-32-oz',
  name = 'Nonfat Yogurt', alias = '\u8131\u8102\u9178\u5976',
  wegmans = 33829L, usd = 4.99/907*170,
  servingGram = 170, servingCup = 3/4,
  cholesterol = .005, sodium = .12, sugar = 7, protein = 7,
  fdc = 171284L, water = 170*.879)


#' @rdname nutrition_dairy
#' @export
Nancys_yogurt <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nancysyogurt = 'organic-100-grass-fed-yogurt',
  name = 'Organic 100% Grass-Fed Yogurt', alias = '\u9178\u5976',
  wegmans = 224506L, usd = 5.99/680*170,
  servingGram = 170, 
  servingCup = 3/4, # no label
  fat = 6, sodium = .115, cholesterol = .025, sugar = 11, protein = 7,
  fdc = 171284L, water = 170*.879,
  review = 'has a very pleasant signature flavor')

#' @rdname nutrition_dairy
#' @export
UpstateFarms_buttermilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 237692L,
  brand = 'Upstate Farms', name = 'Whole Buttermilk', alias = '\u916a\u6d46',
  # https://www.upstatefarms.com/products # no whole version!!
  servingGram = 240, servingCup = 1,
  fat = 8, cholesterol = .03, sodium = .22, sugar = 13, protein = 9,
  fdc = 172225L, # water = 240*.879 # greater than total weight!
  water = floor(240 - 8 - .03 - .22 - 13 - 9)
)

#' @rdname nutrition_dairy
#' @export
NatureByNature_buttermilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = c(style_hyperlink(url = 'https://naturalbynaturedairy.com/products/dairy/', text = 'Nature By Nature')), 
  name = 'Low-Fat Buttermilk', alias = '\u4f4e\u8102\u916a\u6d46',
  servingGram = 240, servingCup = 1,
  calorie = 80,
  fat = .5, cholesterol = .005, sodium = .24, carbohydrate = 8, sugar = 1, protein = 7,
  water = floor(240 - .5 - .005 - .24 - 8 - 7)
)

#' @rdname nutrition_dairy
#' @export
OakFarms_buttermilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = 'Oak Farms\U1f1fa\U1f1f8', url = 'https://oakfarmsdairy.com/products/bulgarian-buttermilk-plastic-half-gallon/')),
  name = 'Bulgarian\U1f1e7\U1f1ec Buttermilk', alias = '\u916a\u6d46',
  servingGram = 240, servingCup = 1,
  calorie = 160,
  fat = 8, cholesterol = .035, sodium = .25, carbohydrate = 13, sugar = 12, protein = 9,
  fdc = 172225L, # water = 240*.879 # greater than total weight!
  water = floor(240 - 8 - .035 - .25 - 13 - 9)
)


#' @rdname nutrition_dairy
#' @export
Carnation_evaporatedMilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], nestle = '11002753',
  brand = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', 
  name = 'Evaporated Milk', alias = '\u6de1\u5976',
  walmart = '10291864', usd = 1.72/12,
  # 12floz, full can 422g, empty can 46g,
  servingGram = (422 - 46)/12, serving_floz = 1, #servingTbsp = 2, # 12floz in total
  calorie = 40,
  fat = 2, sugar = 3, sodium = .03, protein = 2)

# https://www.walmart.com/ip/Nestle-Carnation-Lowfat-2-Evaporated-Milk-Vitamins-A-and-D-Added-12-fl-oz/10804669?from=/search

#' @rdname nutrition_dairy
#' @export
CarnationFatFree_evaporatedMilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  walmart = '1363902922', usd = 6.88/4/12, # 2023-11-11
  brand = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', 
  name = 'Fat Free Evaporated Milk', alias = '\u8131\u8102\u6de1\u5976',
  # fullweight = 431, emptyweight = 46,
  servingGram = (431-46)/12, serving_floz = 1, #servingTbsp = 2,
  calorie = 25,
  sodium = .035, sugar = 3, protein = 2)



#' @rdname nutrition_dairy
#' @export
Carnation_condensedMilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], url = 'https://www.verybestbaking.com/carnation/products/nestle-carnation-sweetened-condensed-milk-14-oz/',
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


#' @rdname nutrition_dairy
#' @export
Philadelphia_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  kraftheinzawayfromhome = '10021000616005',
  philadelphia = '00021000612239',
  name = 'Cream Cheese',
  contain = c('carob bean gum'), # same as 'locust bean gum'
  serving_oz = 1, servingTbsp = 2,
  calorie = 100,
  fat = 9, cholesterol = .03, sodium = .11, carbohydrate = 1, sugar = 1, protein = 2)

#' @rdname nutrition_dairy
#' @export
Philadelphia_creamCheeseSpread <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  philadelphia = '00021000000142',
  kraftheinzawayfromhome = '10021000614063',
  name = '\u5976\u6cb9\u5976\u916a\u62b9\u6599 Cream Cheese Spread',
  contain = c('guar gum'),
  servingGram = 31, servingTbsp = 2,
  calorie = 80,
  fat = 7, cholesterol = .02, sodium = .125, carbohydrate = 2, sugar = 1, protein = 2)


#' @rdname nutrition_dairy
#' @export
PhiladelphiaNeufchatel_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  kraftheinzawayfromhome = '10021000616401',
  philadelphia = '00021000612475',
  name = 'Neufcha\u0302tel Cream Cheese', alias = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a',
  walmart = '36647454', usd = 4.98/16, # 2023-11-11
  contain = c('xanthan gum', 'carob bean gum', 'guar gum'),
  serving_oz = 1, 
  calorie = 70,
  fat = 6, cholesterol = .02, sodium = .125, carbohydrate = 2, sugar = 1, protein = 2)

#' @rdname nutrition_dairy
#' @export
PhiladelphiaNeufchatel_creamCheeseSpread <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  philadelphia = '00021000000289',
  kraftheinzawayfromhome = '10021000726704',
  name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a\u62b9\u6599 Neufcha\u0302tel Cream Cheese Spread',
  contain = c('carob bean gum', 'guar gum', 'natamycin'),
  servingGram = 31, servingTbsp = 2,
  calorie = 60,
  fat = 5, cholesterol = .02, sodium = .12, carbohydrate = 2, sugar = 2, protein = 3)

# diagnose(Philadelphia_creamCheese, Philadelphia_creamCheeseSpread, PhiladelphiaNeufchatel_creamCheese, PhiladelphiaNeufchatel_creamCheeseSpread)

#' @rdname nutrition_dairy
#' @export
LucerneNeufchatel_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], acme = 137100657L,
  brand = 'Lucerne', name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a Neufcha\u0302tel Cheese',
  serving_oz = 1, fat = 6, sodium = .105, sugar = 2, protein = 2)


#' @rdname nutrition_dairy
#' @export
GreatValueNeufchatel_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  walmart = '10452358', usd = 1.48/8,
  name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a Neufcha\u0302tel Cheese',
  serving_oz = 1, fat = 6, sodium = .105, sugar = 2, protein = 2)



#' @rdname nutrition_dairy
#' @export
Tillamook_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Tillamook', url = 'https://www.tillamook.com/products/cream-cheese/brick-cream-cheese')),
  name = 'Cream Cheese',
  servingTbsp = 2, serving_oz = 1,
  calorie = 100,
  fat	= 10, cholesterol	= .03, sodium = .105, carbohydrate = 2, sugar = 2, protein = 2)

#' @rdname nutrition_dairy
#' @export
OrganicValleyNeufchatel_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  organicvalley = 'cream-cheese/neufchatel/neufchatel-8-oz-bar',
  name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a Neufcha\u0302tel Cheese',
  wegmans = 182L, usd = 4.59/8,
  serving_oz = 1, servingTbsp = 2,
  calorie = 70,
  fat = 6, sodium = .115, sugar = 1, protein = 2)


#' @rdname nutrition_dairy
#' @export
OrganicValley_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  organicvalley = 'cream-cheese/cream-cheese/cream-cheese-8-oz-bar/',
  name = 'Cream Cheese',
  wegmans = 11914L, usd = 4.59/8,
  serving_oz = 1, servingTbsp = 2,
  calorie = 110,
  fat = 10, cholesterol = 30, sodium = .1, 
  carbohydrate = 2, sugar = 1, protein = 2)


#' @rdname nutrition_dairy
#' @export
TraderJoes_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  traderjoes = '012491',
  name = 'Cream Cheese',
  contain = c('xanthan gum', 'carob bean gum', 'guar gum'),
  serving_oz = 1, servingTbsp = 2, 
  calorie = 90,
  fat = 9, cholesterol = .03, sodium = .095, carbohydrate = 2, sugar = 1, protein = 1)



#' @rdname nutrition_dairy
#' @export
TraderJoesLight_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = 'Trader Joe\'s', name = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a Light Cream Cheese',
  contain = c('whey proteins', 'xanthan gum', 'locust bean gum', 'guar gum', 'microbial rennet'),
  serving_oz = 1, 
  fat = 9, sodium = .095, sugar = 1)



#' @rdname nutrition_dairy
#' @export
WholeFoods365_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wholefoods = 'b074h6qz3j',
  name = 'Cream Cheese', 
  contain = 'locust bean gum',
  serving_oz = 1, servingTbsp = 2, 
  calorie = 100,
  fat = 10, cholesterol = .03, sodium = .095, carbohydrate = 2, protein = 2)



#' @rdname nutrition_dairy
#' @export
Nancys_creamCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  nancysyogurt = 'organic-natural-cream-cheese',
  wegmans = 260929L, usd = 4.59/227*30, # in store price cheaper than online, 2023-11-11
  name = 'Organic Cultured Cream Cheese', alias = '\u5976\u6cb9\u5976\u916a',
  serving_oz = 1, servingTbsp = 2,
  calorie = 110,
  fat = 10, cholesterol = .025, sodium = .04, carbohydrate = 2, sugar = 1, protein = 1)


#' @rdname nutrition_dairy
#' @export
Daisy_sourCream <- function() new( # no filler
  Class = 'nutrition', call = match.call()[[1L]], 
  daisybrand = 'sour-cream',
  name = 'Sour Cream', alias = '\u9178\u5976\u6cb9',
  servingGram = 30, servingTbsp = 2,
  calorie = 60,
  fdc = 171257L, water = 30*.731,
  fat = 5, cholesterol = .02, sodium = .015, sugar = 1, protein = 1)



#' @rdname nutrition_dairy
#' @export
DaisyLight_sourCream <- function() new( # no filler
  Class = 'nutrition', call = match.call()[[1L]], daisybrand = 'sour-cream',
  name = 'Light Sour Cream',
  servingGram = 30, servingTbsp = 2,
  calorie = 35,
  fdc = 173443L, water = 30*.781,
  fat = 2.5, cholesterol = .01, sodium = .015, sugar = 1, protein = 2,
  review = 'Do not buy. This is a mixture of cultured cream and skim milk')





#' @rdname nutrition_dairy
#' @export
Daisy_cottageCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], daisybrand = 'cottage-cheese',
  name = 'Cottage Cheese',
  walmart = '15716748', usd = 3.78/680*113,
  wegmans = 265495L,
  serving_oz = 4, servingCup = 1/2,
  fdc = 172179L, water = 113*.798,
  fat = 5, cholesterol = .02, sodium = .39, sugar = 4, protein = 13)


#' @rdname nutrition_dairy
#' @export
DaisyLite_cottageCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], daisybrand = 'cottage-cheese',
  name = 'Low Fat Cottage Cheese',
  walmart = '15716747', usd = 3.78/680*113,
  wegmans = 265512L,
  serving_oz = 4, servingCup = 1/2,
  fdc = 328841L, water = 113*.811,
  fat = 2.5, cholesterol = .01, sodium = .35, sugar = 4, protein = 13)


#' @rdname nutrition_dairy
#' @export
Lucerne_cottageCheese <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = 'Lucerne', name = 'Cottage Cheese',
  acme = 960109551L, usd = 4.19/680*113,
  serving_oz = 4, servingCup = 1/2,
  cholesterol = .005, sodium = .42, protein = 12)




#' @rdname nutrition_dairy
#' @export
TraderJoesLight_sourCream <- function() new( # no filler
  Class = 'nutrition', call = match.call()[[1L]],
  brand = 'Trader Joe\'s', name = 'Light Sour Cream',
  servingGram = 30, servingTbsp = 2,
  fat = 2.5, sodium = .03, sugar = 2, protein = 2)


# whole milk nutrition 
# fdc = 171265L
# contains 88.1% water

#' @rdname nutrition_dairy
#' @export
Wegmans_whole_milk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 171265L,
  wegmans = 26105632L, usd = 3.19/16, # 1 gal
  name = 'Vitamin D, Whole Milk', alias = '\u5168\u8102\u725b\u5976',
  servingGram = 250, servingCup = 1, 
  calorie = 150,
  water = 250*.881, 
  fat = 8, cholesterol = .025, sodium = .115, carbohydrate = 12, sugar = 12, protein = 8)

#' @rdname nutrition_dairy
#' @export
WegmansOrganic_whole_milk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 171265L, 
  wegmansorganic = 9975L, usd = 6.99/16, # 1 gal
  name = 'Vitamin D, Whole Milk', alias = '\u5168\u8102\u725b\u5976',
  servingGram = 250, servingCup = 1, 
  water = 250*.881, 
  calorie = 150,
  fat = 8, cholesterol = .025, sodium = .115, carbohydrate = 12, sugar = 12, protein = 8)

#' @rdname nutrition_dairy
#' @export
Horizon_wholeDHA_milk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Organic Whole Milk with DHA Omega-3', alias = '\u5168\u8102\u725b\u5976',
  horizon = 'organic-milk/organic-whole-dha-omega-3-milk',
  servingGram = 250, servingCup = 1,
  water = 250*.881, 
  calorie = 160,
  fat = 8, cholesterol = .035, sodium = .135, carbohydrate = 13, sugar = 12, protein = 8)

#' @rdname nutrition_dairy
#' @export
Wawa_2perc_milk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wawa = '4ff1fb27-adc2-4cfc-95be-08f519fd8f32',
  name = '2% Reduced Fat Milk',
  servingGram = 240, serving_ml = 240,
  usd = 2.75/8,
  calorie = 120,
  fat = 5, cholesterol = .02, sodium = .115, carbohydrate = 12, sugar = 12, protein = 8)


# Water content of heavy cream is 57.7%, 
# fdc = 170859L

#' @rdname nutrition_dairy
#' @export
Wegmans_heavyCream <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  wegmans = 
    # 21152L, # discontinued?
    # 220504L # discontinued
    149508L,
  fdc = 170859L,
  name = 'Heavy Cream',
  servingGram = 15, 
  servingTbsp = 1, # packaging
  usd = 6.29/64, # 1floz = 2Tbsp; 32floz in total
  calorie = 50,
  fat = 6, cholesterol = .02, sodium = .005, water = 15 * .577) 


#' @rdname nutrition_dairy
#' @export
WholeFoods365_heavyCream <- function() new( # no filler
  Class = 'nutrition', call = match.call()[[1L]], wholefoods = 'b07qf6f984',
  name = 'Heavy Cream', 
  servingGram = 15, servingTbsp = 1,
  calorie = 50,
  fat = 6, cholesterol = .015, water = 15 * .577)

#' @rdname nutrition_dairy
#' @export
TraderJoes_heavyCream <- function() new( # 
  Class = 'nutrition', call = match.call()[[1L]],
  brand = 'Trader Joe\'s', name = 'Heavy Cream', 
  # the version labelled as 'organic' contains gellan gum
  # the version without 'organic' contains no filler
  servingGram = 15, servingTbsp = 1,
  fat = 6, water = 15 * .577)


#' @rdname nutrition_dairy
#' @export
NatureByNature_heavyCream <- function() new( # no filler, sold at Giant
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(url = 'https://naturalbynaturedairy.com/products/dairy/', text = 'Nature By Nature')), 
  name = 'Heavy Cream',
  servingGram = 15, servingTbsp = 1,
  calorie = 60,
  fat = 6, cholesterol = .015, water = 15 * .577)


#' @rdname nutrition_dairy
#' @export
LandOLakes_whippedHeavyCream <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  landolakes = 'whipping-cream-and-half-half/aerosol-whipped-cream',
  name = 'Whipped Heavy Cream', alias = '\u6253\u53d1\u91cd\u5976\u6cb9',
  costcoBiz = '100284038',
  servingGram = 6, servingTbsp = 2,
  fat = 2, cholesterol = .01, sugar = 1)

if (FALSE) {
  diagnose(
    LandOLakes_whippedHeavyCream,
    Lucerne_heavyCream,
    Wegmans_heavyCream
  )
}




# Supervalu, Inc. light cream
# does not have water content
# fdc = 2399202L

# water content of light cream 63.5%, 
# fdc = 170858L

#' @rdname nutrition_dairy
#' @export
Lucerne_lightCream <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Light Cream',
  lucerne = 960044744L, usd = 3.19/32,
  servingGram = 15, servingTbsp = 1,
  calorie = 30,
  water = 15*.635,
  fat = 3, cholesterol = .01, sodium = .015, sugar = 1)


#' @rdname nutrition_dairy
#' @export
Lucerne_heavyCream <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Heavy Cream',
  fdc = 170859L,
  lucerne = 136150034L, usd = 3.19/32, # disappeared?
  servingGram = 240/16, servingTbsp = 1, # actual experiment: 1 cup = 240g
  calorie = 50,
  water = 15*.577,
  fat = 5, cholesterol = .02, sodium = .005, carbohydrate = 1)




#' @rdname nutrition_dairy
#' @export
TraderJoes_goat_kefir <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = 'Trader Joe\'s', 
  name = 'Goat\U1f410 Milk Kefir', alias = '\u7f8a\u5976\u9152',
  usd = 5.69/32*8,
  servingGram = (1039-59)/32*8, servingCup = 1, # 8floz
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .120, carbohydrate = 10, sugar = 5, protein = 8)

#' @rdname nutrition_dairy
#' @export
Meyenberg_goat_kefir <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], meyenberg = 'goatyogurt-1-1',
  name = 'Goat\U1f410 Kefir', alias = '\u7f8a\u5976\u9152',
  wegmans = 4937L, usd = 8.99/32*8, 
  # https://redwoodhill.com/redwood-hill-to-become-meyenberg
  servingGram = 240, servingCup = 1, # 8floz
  # full bottle with cap 1060g
  # use it as staple
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .12, carbohydrate = 10, sugar = 5, protein = 8)

if (FALSE) {
  diagnose(TraderJoes_goat_kefir, Meyenberg_goat_kefir)
}


#' @rdname nutrition_dairy
#' @export
GreenValley_kefir <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = 'Green Valley\U1f1fa\U1f1f8', url = 'https://greenvalleylactosefree.com/product/lactose-free-lowfat-kefir')),
  name = 'Lowfat Kefir', alias = '\u4f4e\u8102\u725b\u5976\u9152',
  wegmans = 227007L, usd = 6.99/32*8,
  # full bottle (with cap): 1086g, 32floz
  # empty bottle (with cap): 59g
  servingGram = (1086-59)/32*8, servingCup = 1, # 8floz
  calorie = 120,
  fat = 2, cholesterol = .015, sodium = .115, carbohydrate = 13, sugar = 12, protein = 11)

#' @rdname nutrition_dairy
#' @export
Siggis_filmjolk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  siggis = 'plain-drinkable-nonfat-yogurt',
  name = 'Swedish\U1f1f8\U1f1ea Filmj\u00f6lk',
  wegmans = 39729L, usd = 4.99/32*6,
  # full bottle (with cap): 1009g; 32oz
  # empty bottle (with cap): 44g
  servingGram = (1009-44)/32*6, serving_floz = 6,
  calorie = 60,
  cholesterol = .005, sodium = .115, carbohydrate = 9, sugar = 7, protein = 6,
  superior = c('Meyenberg_goat_kefir', 'GreenValley_kefir'),
  review = 'too sour')




