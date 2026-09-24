
#' @rdname nutrition-class
#' 
#' @examples
#' nutritionlist(
#'  cooking:::Nancys_creamCheese(),
#'  cooking:::Philadelphia_creamCheese(),
#'  cooking:::OrganicValley_creamCheese(),
#'  cooking:::TraderJoes_creamCheese(),
#'  cooking:::Tillamook_creamCheese())
#' 
#' nutritionlist(
#'  cooking:::Philadelphia_creamCheese(), 
#'  cooking:::Philadelphia_creamCheeseSpread(), 
#'  cooking:::PhiladelphiaNeufchatel_creamCheese(), 
#'  cooking:::PhiladelphiaNeufchatel_creamCheeseSpread())
#' 
#' nutritionlist(
#'  cooking:::LandOLakes_whippedHeavyCream(),
#'  cooking:::Lucerne_heavyCream(),
#'  cooking:::Wegmans_heavyCream())
#'  
#' nutritionlist(
#'  cooking:::TraderJoes_goat_kefir(), 
#'  cooking:::Meyenberg_goat_kefir())
#' 




FageTotal0_yogurtGreek <- \() new(
  Class = 'nutrition',  
  brand = style_hyperlink(text = 'Fage Total 0%', url = 'https://usa.fage/products/yogurt/fage-total-0') |> 
    c(),
  name = 'Nonfat Greek\U0001f1ec\U0001f1f7 Yogurt', alias = '\u8131\u8102\u5e0c\u814a\u9178\u5976',
  servingGram = 170, # sold at Costco, 3lb, 1360g
  servingCup = 3/4, # packaging
  calorie = 90,
  sodium = .065, 
  carbohydrate = 5, sugar = 5, protein = 18,
  fdc = 170903L, water = 170*.836)




MembersMark_yogurtGreek <- \() new(
  Class = 'nutrition',  
  sams = 'prod23131577', usd = 4.87/1130*170, date = as.Date('2026-09-17'), # sold at Sams, 2.5lb
  name = 'Nonfat Greek\U0001f1ec\U0001f1f7 Yogurt', alias = '\u8131\u8102\u5e0c\u814a\u9178\u5976',
  servingGram = 170, 
  servingCup = 3/4,
  calorie = 100,
  cholesterol = .01, sodium = .055, 
  carbohydrate = 6, sugar = 6, protein = 18,
  fdc = 170903L, water = 170*.836)



SimpleTruth_yogurt <- \() new(
  Class = 'nutrition',  
  url = 'https://www.kroger.com/p/simple-truth-organic-plain-lowfat-yogurt/0001111045530',
  brand = 'Simple Truth Organic', # Kroger is the parent company 
  name = 'Low-Fat Yogurt', alias = '\u4f4e\u8102\u9178\u5976',
  servingGram = 170, servingCup = 2/3,
  calorie = 120,
  fat = 2.5, sodium = .110, 
  carbohydrate = 16, sugar = 12, protein = 8,
  fdc = 171284L, water = 170*.879)




Stonyfield_yogurt <- \() new(
  Class = 'nutrition',  
  stonyfield = 'nonfat-yogurt-plain-32-oz',
  name = 'Nonfat Yogurt', alias = '\u8131\u8102\u9178\u5976',
  wegmans = '112660', 
  usd = 5.49/907*170, date = as.Date('2026-09-17'),
  servingGram = 170, servingCup = 3/4,
  cholesterol = .005, sodium = .12, 
  carbohydrate = 11, sugar = 7, protein = 7,
  fdc = 171284L, water = 170*.879)




Nancys_yogurt <- \() new(
  Class = 'nutrition', 
  nancysyogurt = 'organic-100-grass-fed-yogurt',
  name = 'Organic 100% Grass-Fed Yogurt', alias = '\u9178\u5976',
  wegmans = '838502', usd = 5.99/680*170,
  servingGram = 170, 
  servingCup = 3/4, # no label
  fat = 6, sodium = .115, cholesterol = .025,
  carbohydrate = 11, sugar = 11, protein = 7,
  fdc = 171284L, water = 170*.879,
  review = 'has a very pleasant signature flavor')



UpstateFarms_buttermilk <- \() new(
  Class = 'nutrition',
  wegmans = '94864',
  brand = 'Upstate Farms', name = 'Buttermilk, Lowfat', alias = '\u916a\u6d46',
  # https://www.upstatefarms.com/products # no whole version!!
  servingGram = 240, servingCup = 1,
  fat = 2, cholesterol = .01, sodium = .22, 
  carbohydrate = 14, sugar = 13, protein = 9,
  fdc = 172225L, # water = 240*.879 # greater than total weight!
  water = floor(240 - 2 - .01 - .22 - 14 - 9)
)



NaturalByNature_buttermilk <- \() new(
  Class = 'nutrition', 
  brand = c(style_hyperlink(url = 'https://naturalbynaturedairy.com/products/dairy/', text = 'Natural By Nature')), 
  name = 'Low-Fat Buttermilk', alias = '\u4f4e\u8102\u916a\u6d46',
  servingGram = 240, servingCup = 1,
  calorie = 80,
  fat = .5, cholesterol = .005, sodium = .24, carbohydrate = 8, sugar = 1, protein = 7,
  water = floor(240 - .5 - .005 - .24 - 8 - 7)
)



OakFarms_buttermilk <- \() new(
  Class = 'nutrition', 
  brand = c(style_hyperlink(text = 'Oak Farms\U1f1fa\U1f1f8', url = 'https://oakfarmsdairy.com/products/bulgarian-buttermilk-plastic-half-gallon/')),
  name = 'Bulgarian\U1f1e7\U1f1ec Buttermilk', alias = '\u916a\u6d46',
  servingGram = 240, servingCup = 1,
  calorie = 160,
  fat = 8, cholesterol = .035, sodium = .25, carbohydrate = 13, sugar = 12, protein = 9,
  fdc = 172225L, # water = 240*.879 # greater than total weight!
  water = floor(240 - 8 - .035 - .25 - 13 - 9)
)




Carnation_evapMilk <- \() new(
  Class = 'nutrition',  nestle = '11002753',
  brand = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', 
  name = 'Evaporated Milk', alias = '\u6de1\u5976',
  walmart = '10291864', usd = 1.72/12,
  # 12floz, full can 422g, empty can 46g,
  servingGram = (422 - 46)/12, serving_floz = 1, #servingTbsp = 2, # 12floz in total
  calorie = 40,
  fat = 2, sugar = 3, sodium = .03, protein = 2)

# https://www.walmart.com/ip/Nestle-Carnation-Lowfat-2-Evaporated-Milk-Vitamins-A-and-D-Added-12-fl-oz/10804669?from=/search



CarnationFatFree_evapMilk <- \() new(
  Class = 'nutrition',  
  walmart = '1363902922', usd = 6.88/4/12, # 2023-11-11
  brand = 'Nestl\u00e9 Carnation\U1f1fa\U1f1f8', 
  name = 'Fat Free Evaporated Milk', alias = '\u8131\u8102\u6de1\u5976',
  # fullweight = 431, emptyweight = 46,
  servingGram = (431-46)/12, serving_floz = 1, #servingTbsp = 2,
  calorie = 25,
  sodium = .035, sugar = 3, protein = 2)





Carnation_condensMilk <- \() new(
  Class = 'nutrition',  url = 'https://www.verybestbaking.com/carnation/products/nestle-carnation-sweetened-condensed-milk-14-oz/',
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






Philadelphia_creamCheese <- \() new(
  Class = 'nutrition', 
  kraftheinzawayfromhome = '10021000616005',
  philadelphia = '00021000612239',
  name = 'Cream Cheese', alias = '\u5976\u6cb9\u5976\u916a',
  contain = c('carob bean gum'), # same as 'locust bean gum'
  serving_oz = 1, servingTbsp = 2,
  calorie = 100,
  fat = 9, cholesterol = .03, sodium = .11, carbohydrate = 1, sugar = 1, protein = 2)



Philadelphia_creamCheeseSpread <- \() new(
  Class = 'nutrition', 
  philadelphia = '00021000000142',
  kraftheinzawayfromhome = '10021000614063',
  alias = '\u5976\u6cb9\u5976\u916a\u62b9\u6599', name = 'Cream Cheese Spread',
  contain = c('guar gum'),
  servingGram = 31, servingTbsp = 2,
  calorie = 80,
  fat = 7, cholesterol = .02, sodium = .125, carbohydrate = 2, sugar = 1, protein = 2)




PhiladelphiaNeufchatel_creamCheese <- \() new(
  Class = 'nutrition',  
  kraftheinzawayfromhome = '10021000616401',
  philadelphia = '00021000612475',
  name = 'Neufcha\u0302tel Cream Cheese', alias = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a',
  walmart = '36647454', usd = 4.98/16, # 2023-11-11
  contain = c('xanthan gum', 'carob bean gum', 'guar gum'),
  serving_oz = 1, servingTbsp = 2,
  calorie = 70,
  fat = 6, cholesterol = .02, sodium = .125, carbohydrate = 2, sugar = 1, protein = 2)



PhiladelphiaNeufchatel_creamCheeseSpread <- \() new(
  Class = 'nutrition',  
  philadelphia = '00021000000289',
  kraftheinzawayfromhome = '10021000726704',
  alias = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a\u62b9\u6599', name = 'Neufcha\u0302tel Cream Cheese Spread',
  contain = c('carob bean gum', 'guar gum', 'natamycin'),
  servingGram = 31, servingTbsp = 2,
  calorie = 60,
  fat = 5, cholesterol = .02, sodium = .12, carbohydrate = 2, sugar = 2, protein = 3)





LucerneNeufchatel_creamCheese <- \() new(
  Class = 'nutrition',  acme = '137100657',
  brand = 'Lucerne', alias = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a', name = 'Neufcha\u0302tel Cheese',
  serving_oz = 1, fat = 6, sodium = .105, sugar = 2, protein = 2)




GreatValueNeufchatel_creamCheese <- \() new(
  Class = 'nutrition',  
  walmart = '10452358', usd = 1.48/8,
  alias = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a', name = 'Neufcha\u0302tel Cheese',
  serving_oz = 1, fat = 6, sodium = .105, sugar = 2, protein = 2)





Tillamook_creamCheese <- \() new(
  Class = 'nutrition',  
  brand = c(style_hyperlink(text = 'Tillamook', url = 'https://www.tillamook.com/products/cream-cheese/brick-cream-cheese')),
  name = 'Cream Cheese', alias = '\u5976\u6cb9\u5976\u916a',
  servingTbsp = 2, serving_oz = 1,
  calorie = 100,
  fat	= 10, cholesterol	= .03, sodium = .105, carbohydrate = 2, sugar = 2, protein = 2)



OrganicValleyNeufchatel_creamCheese <- \() new(
  Class = 'nutrition',  
  organicvalley = 'cream-cheese/neufchatel/neufchatel-8-oz-bar',
  alias = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a', name = 'Neufcha\u0302tel Cheese',
  # wegmans = ???, usd = 4.59/8, # no longer at Wegmans
  serving_oz = 1, servingTbsp = 2,
  calorie = 70,
  fat = 6, sodium = .115, sugar = 1, protein = 2)




OrganicValley_creamCheese <- \() new(
  Class = 'nutrition',  
  organicvalley = 'cream-cheese/cream-cheese/cream-cheese-8-oz-bar/',
  name = 'Cream Cheese', alias = '\u5976\u6cb9\u5976\u916a',
  wegmans = '888993', usd = .62, 
  date = as.Date('2026-09-17'),
  serving_oz = 1, servingTbsp = 2,
  calorie = 110,
  fat = 10, cholesterol = .030, sodium = .1, 
  carbohydrate = 2, sugar = 1, protein = 2)




TraderJoes_creamCheese <- \() new(
  Class = 'nutrition', 
  traderjoes = '012491',
  name = 'Cream Cheese', alias = '\u5976\u6cb9\u5976\u916a',
  contain = c('xanthan gum', 'carob bean gum', 'guar gum'),
  serving_oz = 1, servingTbsp = 2, 
  calorie = 90,
  fat = 9, cholesterol = .03, sodium = .095, carbohydrate = 2, sugar = 1, protein = 1)





TraderJoesLight_creamCheese <- \() new(
  Class = 'nutrition', 
  brand = 'Trader Joe\'s', alias = '\u4f4e\u8102\u5976\u6cb9\u5976\u916a', name = 'Light Cream Cheese',
  contain = c('whey proteins', 'xanthan gum', 'locust bean gum', 'guar gum', 'microbial rennet'),
  serving_oz = 1, 
  fat = 9, sodium = .095, sugar = 1)





WholeFoods365_creamCheese <- \() new(
  Class = 'nutrition',  wholefoods = 'b074h6qz3j',
  name = 'Cream Cheese', alias = '\u5976\u6cb9\u5976\u916a',
  contain = 'locust bean gum',
  serving_oz = 1, servingTbsp = 2, 
  calorie = 100,
  fat = 10, cholesterol = .03, sodium = .095, carbohydrate = 2, protein = 2)





Nancys_creamCheese <- \() new(
  Class = 'nutrition',  
  nancysyogurt = 'organic-natural-cream-cheese',
  wegmans = '879678', usd = .62, date = as.Date('2026-09-17'),
  name = 'Organic Cultured Cream Cheese', alias = '\u5976\u6cb9\u5976\u916a',
  serving_oz = 1, servingTbsp = 2,
  calorie = 110,
  fat = 10, cholesterol = .025, sodium = .04, carbohydrate = 2, sugar = 1, protein = 1)




Daisy_sourCream <- \() new( # no filler
  Class = 'nutrition',  
  daisybrand = 'sour-cream',
  name = 'Sour Cream', alias = '\u9178\u5976\u6cb9',
  servingGram = 30, servingTbsp = 2,
  calorie = 60,
  fdc = 171257L, water = 30*.731,
  fat = 5, cholesterol = .02, sodium = .015, sugar = 1, protein = 1)

DaisyLight_sourCream <- \() new( # no filler
  Class = 'nutrition',  
  daisybrand = 'sour-cream',
  name = 'Light Sour Cream',
  servingGram = 30, servingTbsp = 2,
  calorie = 35,
  fdc = 173443L, water = 30*.781,
  fat = 2.5, cholesterol = .01, sodium = .015, sugar = 1, protein = 2,
  review = 'Do not buy. This is a mixture of cultured cream and skim milk')

#WegmansOrganic_sourCream <- \() new(
#  Class = 'nutrition',
#  wegmans = '63577',
#  name = 'Sour Cream'#,
#  # no nutrition info!!!
#)





Daisy_cottageCheese <- \() new(
  Class = 'nutrition',
  name = 'Cottage Cheese, 4% Milkfat',
  daisybrand = 'cottage-cheese',
  walmart = '15716748', usd = 4.97/680*113,
  wegmans = '894345',
  serving_oz = 4, servingCup = 1/2,
  fdc = 172179L, water = 113*.798,
  fat = 5, cholesterol = .02, sodium = .39, sugar = 4, protein = 13)




DaisyLite_cottageCheese <- \() new(
  Class = 'nutrition',
  name = 'Cottage Cheese, 2% Milkfat',
  daisybrand = 'cottage-cheese',
  walmart = '15716747', usd = 4.97/680*113,
  wegmans = '894518',
  serving_oz = 4, servingCup = 1/2,
  fdc = 328841L, water = 113*.811,
  fat = 2.5, cholesterol = .01, sodium = .35, sugar = 4, protein = 13)




Lucerne_cottageCheese <- \() new(
  Class = 'nutrition',  
  brand = 'Lucerne', name = 'Cottage Cheese',
  acme = '960109551', usd = 4.29/680*113, date = as.Date('2026-09-11'),
  serving_oz = 4, servingCup = 1/2,
  cholesterol = .005, sodium = .42, protein = 12)






TraderJoesLight_sourCream <- \() new( # no filler
  Class = 'nutrition', 
  brand = 'Trader Joe\'s', name = 'Light Sour Cream',
  servingGram = 30, servingTbsp = 2,
  fat = 2.5, sodium = .03, sugar = 2, protein = 2)


# whole milk nutrition 
# fdc = 171265L
# contains 88.1% water



Wegmans_whole_milk <- \() new(
  Class = 'nutrition',  fdc = 171265L,
  wegmans = '94427', usd = 4.09/16, # 1 gal
  name = 'Vitamin D, Whole Milk', alias = '\u5168\u8102\u725b\u5976',
  servingGram = 250, servingCup = 1, 
  calorie = 150,
  water = 250*.881, 
  fat = 8, cholesterol = .025, sodium = .115, carbohydrate = 12, sugar = 12, protein = 8)



WegmansOrganic_2perc_milk <- \() new(
  Class = 'nutrition',  fdc = 2483143L,
  wegmans = '33312', usd = 6.99/16, # 1 gal
  name = '2% Reduced Fat Milk', alias = '\u534a\u8102\u725b\u5976',
  servingGram = 250, servingCup = 1, 
  calorie = 120,
  water = 250*.891, 
  fat = 5, cholesterol = .02, sodium = .115, carbohydrate = 12, sugar = 12, protein = 8)






WegmansOrganic_whole_milk <- \() new(
  Class = 'nutrition',  fdc = 171265L, 
  wegmans = '33261', usd = 6.99/16, # 1 gal
  name = 'Vitamin D, Whole Milk', alias = '\u5168\u8102\u725b\u5976',
  servingGram = 250, servingCup = 1, 
  water = 250*.881, 
  calorie = 150,
  fat = 8, cholesterol = .025, sodium = .115, carbohydrate = 12, sugar = 12, protein = 8)



Horizon_wholeDHA_milk <- \() new(
  Class = 'nutrition', 
  name = 'Organic Whole Milk with DHA Omega-3', alias = '\u5168\u8102\u725b\u5976',
  horizon = 'organic-milk/organic-whole-dha-omega-3-milk',
  servingGram = 250, servingCup = 1,
  water = 250*.881, 
  calorie = 160,
  fat = 8, cholesterol = .035, sodium = .135, carbohydrate = 13, sugar = 12, protein = 8)



Wawa_2perc_milk <- \() new(
  Class = 'nutrition',  wawa = '4ff1fb27-adc2-4cfc-95be-08f519fd8f32',
  name = '2% Reduced Fat Milk',
  servingGram = 240, servingCup = 1,
  usd = 2.75/8,
  calorie = 120,
  fat = 5, cholesterol = .02, sodium = .115, carbohydrate = 12, sugar = 12, protein = 8)


# Water content of heavy cream is 57.7%, 
# fdc = 170859L

Byrne_heavyCream <- \() new(
  Class = 'nutrition',  
  brand = 'https://www.byrnedairy.com/creams-near-ny-state/' |> 
    style_hyperlink(text = 'Byrne\U1f1fa\U1f1f8', url = _) |> 
    c(),
  name = 'Heavy Cream 40%', alias = '\u91cd\u5976\u6cb9',
  # nutrition from https://www.fooducate.com/product/Byrne-Dairy-Heavy-Whipping-Cream/61EE9DAB-F8E3-1A30-4818-B69A923F5C70
  servingGram = 15, servingTbsp = 1,
  calorie = 50,
  fat = 6, cholesterol = .015, water = 15 * .577)




Wegmans_heavyCream <- \() new(
  Class = 'nutrition',  
  fdc = 170859L,
  name = 'Heavy Cream', alias = '\u91cd\u5976\u6cb9',
  servingGram = 15, 
  servingTbsp = 1, # packaging
  wegmans = '58945', usd = 6.29/64, # 1floz = 2Tbsp; 32floz in total
  calorie = 50,
  fat = 6, cholesterol = .02, sodium = .005, water = 15 * .577) 




WholeFoods365_heavyCream <- \() new( # no filler
  Class = 'nutrition',  wholefoods = 'b07qf6f984',
  name = 'Heavy Cream', alias = '\u91cd\u5976\u6cb9',
  servingGram = 15, servingTbsp = 1,
  calorie = 50,
  fat = 6, cholesterol = .015, water = 15 * .577)



TraderJoes_heavyCream <- \() new( # 
  Class = 'nutrition', 
  brand = 'Trader Joe\'s', name = 'Heavy Cream', alias = '\u91cd\u5976\u6cb9',
  # the version labelled as 'organic' contains gellan gum
  # the version without 'organic' contains no filler
  servingGram = 15, servingTbsp = 1,
  fat = 6, water = 15 * .577)




NaturalByNature_heavyCream <- \() new( # no filler, sold at Giant
  Class = 'nutrition',  
  brand = c(style_hyperlink(url = 'https://naturalbynaturedairy.com/products/dairy/', text = 'Natural By Nature')), 
  name = 'Heavy Cream', alias = '\u91cd\u5976\u6cb9',
  servingGram = 15, servingTbsp = 1,
  calorie = 60,
  fat = 6, cholesterol = .015, water = 15 * .577)




LandOLakes_whippedHeavyCream <- \() new(
  Class = 'nutrition', 
  landolakes = 'whipping-cream-and-half-half/aerosol-whipped-cream',
  name = 'Whipped Heavy Cream', alias = '\u6253\u53d1\u91cd\u5976\u6cb9',
  costcoBiz = '100284038',
  servingGram = 6, servingTbsp = 2,
  fat = 2, cholesterol = .01, sugar = 1)





# Supervalu, Inc. light cream
# does not have water content
# fdc = 2399202L

# water content of light cream 63.5%, 
# fdc = 170858L



Lucerne_lightCream <- \() new(
  Class = 'nutrition',  
  name = 'Light Cream',
  lucerne = 960044744L, usd = 3.19/32,
  servingGram = 15, servingTbsp = 1,
  calorie = 30,
  water = 15*.635,
  fat = 3, cholesterol = .01, sodium = .015, sugar = 1)




Lucerne_heavyCream <- \() new(
  Class = 'nutrition',  
  name = 'Heavy Cream', alias = '\u91cd\u5976\u6cb9',
  fdc = 170859L,
  lucerne = 136150034L, usd = 3.19/32, # disappeared?
  servingGram = 240/16, servingTbsp = 1, # actual experiment: 1 cup = 240g
  calorie = 50,
  water = 15*.577,
  fat = 5, cholesterol = .02, sodium = .005, carbohydrate = 1)






TraderJoes_goat_kefir <- \() new(
  Class = 'nutrition', 
  brand = 'Trader Joe\'s', 
  name = 'Goat\U1f410 Milk Kefir', alias = '\u7f8a\u5976\u9152',
  usd = 5.69/32*8,
  servingGram = (1039-59)/32*8, servingCup = 1, # 8floz
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .120, carbohydrate = 10, sugar = 5, protein = 8)



Meyenberg_goat_kefir <- \() new(
  Class = 'nutrition',  meyenberg = 'goat-kefir/goat-kefir-plain',
  name = 'Goat\U1f410 Kefir', alias = '\u7f8a\u5976\u9152',
  wegmans = '948523', usd = 8.99/32*8, 
  servingGram = (1060-60)/4, servingCup = 1,
  # full bottle with cap 1060g; empty bottle with cap 60g
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .12, carbohydrate = 10, sugar = 5, protein = 8)






GreenValley_kefir <- \() new(
  Class = 'nutrition', 
  brand = c(style_hyperlink(text = 'Green Valley\U1f1fa\U1f1f8', url = 'https://greenvalleylactosefree.com/product/lactose-free-lowfat-kefir')),
  name = 'Lowfat Kefir', alias = '\u4f4e\u8102\u725b\u5976\u9152',
  wegmans = '979978', usd = 6.99/32*8,
  # full bottle (with cap): 1086g, 32floz
  # empty bottle (with cap): 59g
  servingGram = (1086-59)/32*8, servingCup = 1, # 8floz
  calorie = 120,
  fat = 2, cholesterol = .015, sodium = .115, carbohydrate = 13, sugar = 12, protein = 11)



Siggis_filmjolk <- \() new(
  Class = 'nutrition', 
  siggis = 'plain-nonfat',
  name = 'Swedish\U1f1f8\U1f1ea Filmj\u00f6lk',
  wegmans = '575914', usd = 4.99/32*6,
  # full bottle (with cap): 1009g; 32oz
  # empty bottle (with cap): 44g
  servingGram = (1009-44)/32*6, serving_floz = 6,
  calorie = 60,
  cholesterol = .005, sodium = .115, carbohydrate = 9, sugar = 7, protein = 6,
  superior = c('Meyenberg_goat_kefir', 'GreenValley_kefir'),
  review = 'too sour')


Nanak_mango_rasmalai <- \() new(
  Class = 'nutrition',
  name = 'Mango\U0001f96d Rasmalai', alias = '\u8292\u679c \u5976\u8c46\u8150',
  nanak = 'mango-rasmalai',
  servingGram = 70, #servingTbsp = 1, 
  calorie = 170, 
  fat = 7, cholesterol = .025, sodium = .035,
  carbohydrate = 18, sugar = 13, addedSugar = 6, protein = 9) 



Nanak_mango_lassi <- \() new(
  Class = 'nutrition',
  name = 'Mango\U0001f96d Lassi', alias = '\u8292\u679c \u5370\u5ea6\u9178\u5976',
  nanak = 'mango-lassi',
  servingGram = 250, servingCup = 1, # weight guessed
  calorie = 140, 
  cholesterol = .005, sodium = .065,
  carbohydrate = 29, sugar = 28, addedSugar = 22, protein = 5) 


