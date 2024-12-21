
#' @title Dry Spice
#' 
#' @keywords internal
#' @name nutrition_dryspice
NULL



McCormick_creamTartar <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], url = 'https://www.mccormick.com/spices-and-flavors/herbs-and-spices/spices/cream-of-tartar',
  brand = 'McCormick\U1f1fa\U1f1f8', name = 'Cream of Tartar',
  servingGram = 3, servingTsp = 1)


McCormick_chive <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'chives-freeze-dried',
  name = '\u51bb\u5e72\u97ed\u83dc Chives, Freeze Dried',
  servingGram = 4.5, # .16 oz
  servingTbsp = 3 # my guess
)

McCormick_blackPepper <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'black-pepper-pure-ground',
  name = '\u9ed1\u80e1\u6912\u7c89 Black Pepper, Ground',
  servingGram = 4.5, # .16 oz
  servingTbsp = 3 # my guess
)

McCormick_turmeric <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'turmeric',
  name = '\u59dc\u9ec4\u7c89 Turmeric, Ground',
  servingGram = 4.5, # .16 oz
  servingTbsp = 3 # my guess
)

McCormick_parsley <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'parsley-flakes',
  name = 'Parsley Flakes',
  amazon = 'B0000EYJ1M', usd = 6.29/56*4.5,
  servingGram = 4.5, # ???
  servingTbsp = 3 # ???
)
  
  
McCormick_garlic_powder <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'garlic-powder',
  name = '\u849c\u7c89 Garlic\U1f9c4 Powder', 
  amazon = 'B008OGCEHO', usd = 11.87/595*4.5, # 21oz = 595g
  servingGram = 9, # no nutrition info available
  servingTbsp = 1 # actual experiment 3tbsp = 28g
)

McCormick_onion_powder <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'onion-powder',
  name = '\u6d0b\u8471\u7c89 Onion\U1f9c5 Powder',
  amazon = 'B008OGCPSM', usd = 17.90/566*4.5, # 1.25lb = 566g
  servingGram = 4.5, # ???
  servingTbsp = 3 # ???
)

McCormick_cilantro <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'cilantro-freeze-dried',
  name = '\u51bb\u5e72\u82ab\u837d Cilantro, Freeze Dried',
  amazon = 'B00B0424FE', usd = 13.89/35,
  servingGram = 1,
  servingTbsp = 1 #??
)


McCormick_cumin <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'cumin-ground',
  name = '\u5b5c\u7136\u7c89 Cumin, Ground',
  amazon = 'B008OGCCLC', usd = 12.75/396*1,
  servingGram = 1,
  servingTbsp = 1 #??
)

McCormick_oldBay <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], oldbay = 'old-bay-seasoning',
  name = '\u9a6c\u91cc\u5170\u6d77\u9c9c\u814c\u6599 Old Bay',
  servingGram = .6, servingTsp = 1/4, sodium = .14,
  contain = c('salt', 'celery seed', 'red pepper', 'black pepper', 'paprika'))

McCormick_5spice <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'chinese-five-spice',
  name = 'Chinese Five Spice', alias = '\u4e94\u9999\u7c89',
  amazon = 'B005D8T86G', usd = 23.99/453,
  contain = c('anise', 'cinnamon', 'star anise', 'clove', 'ginger', 'sulfiting agents'),
  servingGram = 1, servingTbsp = 1 #??
)



McCormick_ginger <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormickculinary = 'ginger-ground',
  name = '\u59dc\u7c89 Ginger\U1fada, Ground',
  servingGram = 1,
  servingTbsp = 1 #??
)

McCormick_oldBay_lowSodium <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], mccormick = 'old-bay/products/seasonings-and-sauces/old-bay-less-sodium-seasoning',
  name = 'Old Bay, Less Sodium', alias = '\u9a6c\u91cc\u5170\u6d77\u9c9c\u814c\u6599(\u4f4e\u76d0)',
  servingGram = .6, servingTsp = 1/4, sodium = .095)



McCormick_MontrealSteak <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], grillmates = 'montreal-steak',
  name = 'Montreal Steak Seasoning',
  costco = '100381527', usd = 9.49/822*.8,
  contain = c(
    'black pepper', 'red pepper', 'garlic', 'onion', 'sunflower oil', 'paprika'
  ),
  servingGram = .8, 
  # servingTsp = 1/4, # label
  servingTsp = .8/14*3, # actual 1tbsp = 14g
  sodium = .180)




McCormick_whitePepper <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  mccormickculinary = 'white-pepper-ground',
  #brand = 'McCormick Gourmet\U1f1fa\U1f1f8', url = 'https://www.mccormick.com/gourmet/spices-and-flavors/organic/organic-white-pepper-ground', name = 'Organic White Pepper', 
  name = 'White Pepper, Ground', 
  alias = '\u767d\u80e1\u6912\u7c89',
  servingGram = 49, usd = 5.12, # 2023-11-09 Walmart
  servingTbsp = 7) # https://freefoodtips.com/white-pepper-ground-spices-grams-to-ml/




McCormick_rum <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  # 'Imitation' contains chemicals (i.e., not natural)
  # mccormickculinary = 'imitation-rum-extract',
  # name = 'Imitation Rum Extract',
  #webstaurant = 'mccormick-16-oz-imitation-rum-extract/104MC30638', 
  #usd = 9.03/473*4.92892, # 2023-12-09, 473ml ()
  # alcohol = .29*4.2,
  #servingGram = 4.2, servingTsp = 1,
  # 2 tsp of rum extract equals 1 TBSP of dark rum
  # 1 TBSP of rum extract equals 5 TBSP of light rum
  
  url = 'https://www.mccormick.com/spices-and-flavors/extracts-and-food-colors/extracts/rum-extract',
  walmart = '843682904', usd = 4.36 # 59ml
  # serving size not available, yet
  # 1/2 tsp Rum Flavor = 1 Tbsp light rum
  # 1 1/2 tsp Rum Flavor = 1 Tbsp dark rum
)


SpiceIslands_cumin <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = 'Spice Islands\U1f1fa\U1f1f8', name = '\u5b5c\u7136\u7c89 Cumin Seed',
  url = 'https://spiceislands.com/product/ground-cumin-seed/',
  # sold at Costco, 425g
  #servingGram = .7, servingTsp = 1, # label
  servingGram = 8, servingTbsp = 1 # actual experiment
)

Kirkland_noSaltSeasoning <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Organic No-Salt Seasoning',
  costco = '100334965',
  usd = 9.99/411*9,
  servingGram = 9, servingTbsp = 1, # actual
  contain = c(
    'onion', 'garlic', 'carrot', 'black pepper', 'red bell pepper', 'tomato granules', 'orange peel', 'parsley', 'bay leaves', 'thyme', 'basil', 'celery', 'lemon peel', 'oregano', 'mustard seed', 'cumin', 'marjoram', 'coriander', 'cayenne pepper', 'citric acid', 'rosemary'
  ))



# @examples
# fourC_panko() + fourC_panko_seasoned() / 3
#' @title 4C Panko
#' 
#' @name fourC
#' @export
fourC_panko_seasoned <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  fourC = 'seasoned-panko-bread-crumbs',
  name = 'Seasoned Panko Bread Crumbs', alias = '\u8c03\u5473\u9762\u5305\u7ce0',
  servingCup = 1/2, servingGram = 28, fat = 1, sodium = .47, sugar = 1, protein = 3,
  superior = 'fourC_panko')

#' @rdname fourC
#' @export
fourC_panko <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  fourC = 'plain-panko-bread-crumbs',
  name = 'Plain Panko Bread Crumbs', alias = '\u9762\u5305\u7ce0',
  servingCup = 1/2, servingGram = 28, sodium = .045, sugar = 2, protein = 3)








# Spices with no nutrition 

# Simply Organic (ginger powder)
# glass jar (no cap): 143g
# glass jar + water filled to neck: 292g
# volume: (292-143) / 14.7868 approx 10Tbsp

SimplyOrganic_Italian <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'italian-seasoning-0-95-oz',
  name = 'Italian Seasoning',
  servingGram = 27, usd = 6.29, # 2023-11-09
  servingTbsp = 10,
  contain = c('oregano', 'marjoram', 'thyme', 'basil', 'rosemary', 'sage'))

SimplyOrganic_Provence <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'simply-organic-herbes-de-provence-1-oz',
  name = 'Herbes de Provence',
  servingGram = 28, usd = 6.29, # Dec 2024
  servingTbsp = 10,
  contain = c('thyme', 'rosemary', 'basil', 'parsley', 'oregano', 'marjoram', 'lavender flowers'))


SimplyOrganic_Southwest <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], # discontinued
  brand = 'Simply Organic\U1f1fa\U1f1f8', name = 'Southwest Seasoning',
  servingGram = .6, 
  #servingTsp = 1/4 # packaging
  servingTsp = .6/113*10*3,
  sodium = .03)


SimplyOrganic_parsley <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'parsley-0-26-oz',
  name = 'Parsley',
  servingGram = 7, usd = 5.39, # Feb 2024
  servingTbsp = 10)

#' @rdname nutrition_dryspice
#' @export
SimplyOrganic_pumpkinSpice <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'pumpkin-spice-1-94-oz',
  name = 'Pumpkin\U1f383 Spice', alias = '\u5357\u74dc\u8089\u6842\u9999\u6599',
  servingGram = 55, usd = 6.79, # 2023-12-06
  servingTbsp = 10,
  contain = c('cinnamon', 'ginger', 'nutmeg', 'clove'))

#' @rdname nutrition_dryspice
#' @export
SimplyOrganic_5spice <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'five-spice-powder-2-01-oz',
  name = 'Five Spice Powder', alias = '\u4e94\u9999\u7c89',
  wegmans = 202649L, usd = 5.99, # 2024-12-06
  servingGram = 57, 
  servingTbsp = 10,
  contain = c('cinnamon', 'fennel', 'clove', 'star anise', 'white pepper'))

SimplyOrganic_ginger <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'ginger-root-ground-1-64-oz',
  name = 'Ginger\U1fada Root, Ground', alias = '\u59dc\u7c89',
  servingGram = 46, usd = 6.79,  # 2023-11-09
  servingTbsp = 10)

SimplyOrganic_dill <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'dill-weed-0-81-oz',
  name = 'Dill Weed', alias = '\u83b3\u841d\u8349',
  servingGram = 23, usd = 6.79,  # 2023-11-09
  servingTbsp = 10)


SimplyOrganic_clove <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'cloves-ground-2-82-oz',
  name = 'Cloves', alias = '\u4e01\u9999',
  servingGram = 80, usd = 8.99, # 2023-11-09
  servingTbsp = 10)

SimplyOrganic_cinnamonCeylon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'ceylon-cinnamon-ground-2-08-oz',
  name = 'Ceylon Cinnamon', alias = '\u8089\u6842\u7c89',
  servingGram = 59, usd = 10.89, # 2023-11-09
  servingTbsp = 10)


SimplyOrganic_cumin <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'cumin-seed-ground-2-31-oz',
  name = 'Cumin Seed, Ground', alias = '\u5b5c\u7136\u7c89',
  servingGram = 65, usd = 6.79, # 2023-11-09
  servingTbsp = 10)

SimplyOrganic_coriander <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'coriander-seed-ground-2-29-oz',
  name = 'Coriander Seed', alias = '\u82ab\u837d\u7c7d\u7c89',
  servingGram = 65, usd = 6.29,  # 2023-11-09
  servingTbsp = 10)


SimplyOrganic_garlic <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], simplyorganic = 'garlic-powder-3-64-oz',
  name = 'Garlic\U1f9c4', alias = '\u849c\u7c89',
  servingGram = 103, usd = 8.99, # Jan 2024
  servingTbsp = 10)






Chinata_paprika <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = c(style_hyperlink(text = 'La Chinata\U1f1ea\U1f1f8', url = 'https://www.lachinatausa.com/index.php/buy-our-smoked-paprika-powder/tin-70-gr-d-o-sweet.html')),
  name = '\u7ea2\u751c\u6912\u7c89 Sweet Smoked Paprika\U1f336', 
  servingGram = 15, servingTbsp = 2
  # https://www.aqua-calc.com/calculate/food-volume-to-weight
  # https://www.traditionaloven.com/foods/exchange/tbsp/g-gram/spice-paprika.html
  ) 


TakShing_starAnise <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  tsemporium = '640769097776',
  name = 'Dried Star Anise Powder', alias = '\u516b\u89d2\u7c89',
  serving_oz = 16, usd = 9.99
)


TakShing_KGalanga <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  tsemporium = '640769094966',
  name = 'Kaempferia Galanga Powder', alias = '\u6c99\u59dc\u7c89',
  serving_oz = 16, usd = 10.99
)

