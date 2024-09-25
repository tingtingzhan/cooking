

eggYolk <- function() new(
  Class = 'nutrition', fdc = 172184L,
  name = '\u9e21\u86cb\u9ec4 Egg\U1f95a Yolk, Large',
  wegmans = 3464L, usd = 2.29/18, # in store price cheaper than online
  servingGram = 17.3, 
  # servingGram = 100, # fdc numbers are per 100g
  calorie = 322/100*17.3,
  water = .523*17.3, protein = .159*17.3, fat = .265*17.3, cholesterol = 1.08/100*17.3, sugar = .0056*17.3, sodium = .00048*17.3
)

eggWhite <- function() new(
  Class = 'nutrition', fdc = 172183L,
  name = '\u9e21\u86cb\u6e05 Egg\U1f95a White, Large',
  wegmans = 3464L, usd = 2.29/18, # in store price cheaper than online
  servingGram = 34.7, 
  # servingGram = 100, # fdc numbers are per 100g
  calorie = 52/100*34.7,
  water = .876*34.7, protein = .109*34.7, fat = .0017*34.7, sugar = .0071*34.7, sodium = .00166*34.7)



pork_belly <- function() new(
  Class = 'nutrition', fdc = 167812L,
  name = '\u732a\u4e94\u82b1(\u7626) Pork\U1f416 Belly',
  costcoBiz = '100174353', usd = 3.99/454*100, # Costco, Jan 2024
  servingGram = 100, 
  calorie = 518,
  water = 36.7, fat = 53, protein = 9.34, sodium = .032)

pork_fatbelly <- function() new( # my guess :)
  Class = 'nutrition', #url = 'www.healthline.com/nutrition/pork-belly-nutrition#nutrients',
  name = '\u732a\u4e94\u82b1(\u80a5) Pork\U1f416 Fat Belly',
  costcoBiz = '100174353', usd = 3.99/454*100, # Costco, Jan 2024
  servingGram = 100, water = 36.7, fat = 60, protein = 3, sodium = .032)

pork_fat <- function() new(
  Class = 'nutrition', url = 'nutrientoptimiser.com/nutritional-value-pork-fresh-separable-fat-raw/',
  name = '\u732a\u80a5\u8089 Pork\U1f416 Fat',
  costcoBiz = '100174353', servingGram = 100, 
  calorie = 628,
  water = 23, fat = 66, cholesterol = .072, sodium = .047, protein = 9)

pork_tenderloin <- function() new(
  Class = 'nutrition', 
  swiftmeats = 'pork-tenderloin', 
  name = '\u732a\u5c0f\u91cc\u810a Pork\U1f416 Tenderloin',
  #wegmans = 760L, usd = 2.69 / 454 * 100,
  fdc = 168249L, water = 112*.76, # fdc data
  costcoBiz = '100082095', usd = 2 / 454 * 112,
  servingGram = 112, 
  calorie = 130,
  fat = 4, cholesterol = .075, protein = 23, sodium = .060)

pork_butt <- function() new(
  Class = 'nutrition',
  swiftmeats = 'pork-butt',
  name = '\u6885\u82b1\u8089 Pork\U1f416 Shoulder Butt',
  servingGram = 112,
  calorie = 210,
  fat = 14, cholesterol = .07, sodium = .07, protein = 20,
  costcoBiz = '11113588', # not swift brand
  fdc = 167850L, water = 112*.55)


beef_heel <- function() new(
  Class = 'nutrition',
  brand = unclass(style_hyperlink(text = 'Swift\U1f1fa\U1f1f8', url = 'https://www.sayweee.com/en/product/Swift-Boneless-Beef-Round-Heel-Muscle--Frozen-1/11275')),
  name = '\u725b\u8171 Beef\U1f402 Round Heel Muscle',
  usd = 10.66/454*100, # weee! 
  url = 'https://www.americanfoodsgroup.com/products/products/heel-meat-muscle-no-roll-2', # source of nutrition
  servingGram = 100, # 3.5 oz
  calorie = 130,
  fat = 4, cholesterol = .040, sodium = .065, protein = 22)

beef_brisket_flat <- function() new(
  Class = 'nutrition', fdc = c(
    173128L#, # choice
    #168666L # all grades
  ), 
  name = '\u725b\u80f8\u8169 Beef\U1f402 Brisket, Flat Cut, \u215binch Fat',
  costcoBiz = '100076487', usd = 5/454*100, # Costco
  servingGram = 100, 
  calorie = 278,
  water = 59.1, protein = 17.9, fat = 22.2, sodium = .059, cholesterol = .092)

beef_brisket_flat_lean <- function() new(
  Class = 'nutrition', fdc = 170613L,
  name = '\u725b\u80f8\u8169(\u7626) Beef\U1f402 Brisket, Flat Cut, Lean',
  costcoBiz = '100076487', usd = 5/454*100, # Costco
  servingGram = 100, 
  calorie = 213,
  water = 58.9, protein = 32.9, fat = 8.01, sodium = .054, cholesterol = .092)

beef_brisket_lean <- function() new(
  Class = 'nutrition', fdc = 168607L, # brisket, whole, separable lean only, all grades, raw
  name = '\u725b\u80f8\u8169(\u7626) Beef\U1f402 Brisket, Separable Lean',
  costcoBiz = '100076487', usd = 5/454*100, # Costco
  servingGram = 100, 
  calorie = 157,
  water = 70.3, protein = 20.7, fat = 7.37, sodium = .079, cholesterol = .062)



beef_chuck <- function() new(
  Class = 'nutrition', fdc = 170783L,
  name = '\u725b\u524d\u80a9\u80db Beef\U1f402 Chuck Short Ribs',
  usd = 14/454*100, #brand = 'Kirkland\U1f1fa\U1f1f8', # costco
  servingGram = 100, water = 68.7, protein = 19.4, fat = 10.7, sodium = .081,
  review = c(spam = 'Beef chuck has too much fat and connective tissue for spam'))

beef_rib <- function() new(
  Class = 'nutrition', fdc = 170783L, wegmans = 42139L,
  name = 'Beef\U1f402 Boneless Short Ribs',
  usd = 15.49/454*100,
  calorie = 175,
  servingGram = 100, water = 68.7, protein = 19.4, fat = 10.7, sodium = .081)

beef_rib_Angus <- function() new(
  Class = 'nutrition', fdc = 170783L, wegmans = 2874L,
  name = 'Angus Beef\U1f402 Boneless Short Ribs',
  usd = 15.99/454*100,
  calorie = 175,
  servingGram = 100, water = 68.7, protein = 19.4, fat = 10.7, sodium = .081)


beef_eyeRound <- function() new(
  Class = 'nutrition', fdc = 171762L,
  name = '\u725b\u540e\u817f\u773c\u8089 Beef\U1f402 Eye Round',
  servingGram = 100, water = 73.4, fat = 3.04, protein = 23.4, sodium = .053)

beef_tendon <- function() new(
  Class = 'nutrition', url = 'www.fatsecret.com/calories-nutrition/generic/beef-tendon',
  name = '\u725b\u7b4b Beef\U1f402 Tendon',
  servingGram = 100, fat = .62, cholesterol = .079, sodium = .053, protein = 34.6)


beef_stew <- function() new(
  Class = 'nutrition', fdc = 171204L,
  name = '(\u7096)\u725b\u8089 Beef\U1f402 for Stew', 
  usd = 4.99/454*100, # Costco, Feb 2024
  servingGram = 100,
  water = 61, protein = 32.3, fat = 6.34, sodium = .068, cholesterol = .102)

lamb_leg <- function() new(
  Class = 'nutrition', fdc = 174311L,
  name = '\u7f8a\u817f(\u53bb\u8102\u80aa) Lamb\U1f411 Leg',
  servingGram = 100, water = 64.3, fat = 17.1, protein = 17.9, sodium = .056,
  review = c(spam = 'Must fully remove fat cap from lamb leg, otherwise lamb fat will separate'))

lamb_loinchop <- function() new(
  Class = 'nutrition', fdc = 1098346L,
  name = '\u7f8a\u810a\u9aa8(\u7626\u8089) Lamb\U1f411 Loin Chop',
  usd = 5.99/(.85*454)*100, # Costco
  servingGram = 100, water = 60.48, fat = 9.65, protein = 29.74, sodium = .406)

chicken_thigh <- function() new(# meat and skin
  Class = 'nutrition', fdc = 172385L,
  name = '(\u53bb\u76ae)\u9e21\u817f\u8089 Chicken Thigh',
  servingGram = 100, water = 66.5, fat = 16.6, protein = 16.5, sodium = .081)

chicken_breast <- function() new(# skinless, boneless
  Class = 'nutrition', fdc = 171077L,
  name = 'Chicken Breast',
  servingGram = 100, water = 73.9, fat = 2.62, protein = 22.5, sodium = .045)


