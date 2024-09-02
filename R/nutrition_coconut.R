
if (FALSE) {
  nutrition_(
    Edward_shreddedCoconut,
    Edward_shreddedCoconutLite,
    Edward_coconutFlour,
    WegmansOrganic_coconutFlour,
    AnthonysGoods_coconutFlour,
    BobsRedMill_coconutFlour
  )
  
}


Edward_shreddedCoconutLite <- function() new(
  Class = 'nutrition', url = 'store.edwardandsons.com/collections/lets-do-organic/products/lets-do-organic-reduced-fat-shredded-coconut',
  brand = 'Edward & Sons\U1f1fa\U1f1f8', name = '\u51cf\u8102\u6930\u84c9 Less Fat Shredded Coconut\U1f965',
  usd = 3.89/250*16,
  servingGram = 16, 
  servingTbsp = 4, # packaging
  calorie = 90,
  fat = 7, sodium = .005, carbohydrate = 7, sugar = 1, protein = 1,
  warning = c(
    'I have diarrhea if eat too much!!',
    'Use coconut flour instead!!!!',
    'Need to look for a brand with finer shreds of coconut, the term could be `Desiccated Coconut`'
  ))


Edward_shreddedCoconut <- function() new(
  Class = 'nutrition', url = 'store.edwardandsons.com/collections/lets-do-organic/products/organic-shredded-coconut',
  brand = 'Edward & Sons\U1f1fa\U1f1f8', name = '\u6930\u84c9 Shredded Coconut\U1f965',
  usd = 3.89/227*15,
  servingGram = 15, 
  servingTbsp = 2.5, # packaging
  calorie = 100,
  fat = 10, sodium = .005, carbohydrate = 4, sugar = 1, protein = 1,
  warning = 'I have diarrhea if eat too much')

Edward_coconutFlour <- function() new(
  Class = 'nutrition', url = 'store.edwardandsons.com/collections/lets-do-organic/products/lets-do-organic-coconut-flour',
  brand = 'Edward & Sons\U1f1fa\U1f1f8', name = '\u6930\u8089\u7c89 Coconut\U1f965 Flour',
  usd = 5.99/454*14,
  servingGram = 14, 
  servingTbsp = 2, # packaging
  calorie = 60,
  fat = 2, sodium = .005, carbohydrate = 9, sugar = 1, protein = 2)

BobsRedMill_coconutFlour <- function() new(
  Class = 'nutrition', bobsredmill = 'organic-coconut-flour',
  name = '\u6930\u8089\u7c89 Coconut\U1f965 Flour',
  servingGram = 14, 
  servingTbsp = 2, # packaging
  calorie = 60,
  fat = 1.5, sodium = .01, carbohydrate = 9, sugar = 3, protein = 3)

AnthonysGoods_coconutFlour <- function() new(
  Class = 'nutrition', 
  url = 'anthonysgoods.com/products/anthonys-organic-coconut-flour-4lb',
  brand = 'Anthony\'s Goods', 
  name = '\u6930\u8089\u7c89 Coconut\U1f965 Flour',
  usd = 18.99/1810*14,
  servingGram = 14,
  servingTbsp = 2, # packaging
  calorie = 60,
  fat = 2, sodium = .01, carbohydrate = 8, sugar = 2, protein = 2)


WegmansOrganic_coconutFlour <- function() new(
  Class = 'nutrition', 
  wegmansorganic = 253623L, usd = 3.79/454*14,
  name = '\u6930\u8089\u7c89 Coconut\U1f965 Flour',
  servingGram = 14, 
  #servingTbsp = 2, # packaging
  servingTbsp = 14/(66*2) * 16, # actual experiment: 66g = 1/2 cup
  calorie = 60,
  fat = 2, sodium = .01, carbohydrate = 8, sugar = 1, protein = 2)

ThaiKitchen_coconutmilkLite <- function() new(
  Class = 'nutrition', url = 'www.mccormick.com/thai-kitchen/products/coconut-milk/organic-lite-coconut-milk',
  brand = 'Thai Kitchen', name = 'Lite Coconut\U1f965 Milk',
  warning = 'Effie diarrhea!!',
  walmart = '23591412', usd = 2.46/403*80, # 2023-11-07
  # fullweight = 475, emptyweight = 59,
  servingGram = (475-59)/403*80, servingCup = 1/3,
  fat = 5, sugar = 1, sodium = .02)


ThaiKitchen_coconutmilk <- function() new(
  Class = 'nutrition', url = 'www.mccormick.com/thai-kitchen/products/coconut-milk/organic-coconut-milk',
  brand = 'Thai Kitchen', name = 'Coconut\U1f965 Milk',
  warning = 'Effie diarrhea!!',
  usd = (11.59/6)/403*80, # sold at Costco, price retrieved 2022-09-02
  # fullweight = 475, emptyweight = 59, 
  servingGram = (475-59)/403*80, servingCup = 1/3,
  fat = 12, sugar = 1, sodium = .03)

# coconutmilk fdc water 94.57%
# https://fdc.nal.usda.gov/fdc-app.html#/food-details/1097553/nutrients

Silk_coconutmilk <- function() new(
  Class = 'nutrition', url = 'silk.com/plant-based-products/coconutmilk/unsweet-coconutmilk/',
  brand = 'Silk', name = 'Coconutmilk\U1f965',
  target = 'A-15423909', usd = 4.99/8,
  servingGram = 240, servingCup = 1, # 240ml
  water = 240*.9457,
  fat = 4, sodium = .045)

SoDelicious_coconutmilk <- function() new(
  Class = 'nutrition', 
  brand = 'So Delicious', name = 'Coconutmilk\U1f965',
  url = c(
    'sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/organic-unsweetened-original-32oz' # shelf stable
    # 'sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/organic-unsweetened-original-64oz' # need to chill
  ),
  walmart = '667624971', usd = 2.68/4,
  servingGram = 240, servingCup = 1, # 240ml
  water = 240*.9457,
  fat = 4, sodium = .01)

