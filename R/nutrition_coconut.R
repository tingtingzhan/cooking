
if (FALSE) {
  diagnose(
    Edward_shreddedCoconut,
    Edward_shreddedCoconutLite,
    Edward_coconutFlour,
    WegmansOrganic_coconutFlour,
    AnthonysGoods_coconutFlour,
    BobsRedMill_coconutFlour
  )
  
}


Edward_shreddedCoconutLite <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Edward & Sons\U1f1fa\U1f1f8', url = 'https://store.edwardandsons.com/collections/lets-do-organic/products/lets-do-organic-reduced-fat-shredded-coconut')),
  name = '\u51cf\u8102\u6930\u84c9 Less Fat Shredded Coconut\U1f965',
  usd = 3.89/250*16,
  servingGram = 16, 
  servingTbsp = 4, # packaging
  calorie = 90,
  fat = 7, sodium = .005, carbohydrate = 7, sugar = 1, protein = 1,
  superior = 'WegmansOrganic_coconutFlour'
  )


Edward_shreddedCoconut <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Edward & Sons\U1f1fa\U1f1f8', url = 'https://store.edwardandsons.com/collections/lets-do-organic/products/organic-shredded-coconut')),
  name = '\u6930\u84c9 Shredded Coconut\U1f965',
  usd = 3.89/227*15,
  servingGram = 15, 
  servingTbsp = 2.5, # packaging
  calorie = 100,
  fat = 10, sodium = .005, carbohydrate = 4, sugar = 1, protein = 1,
  superior = 'WegmansOrganic_coconutFlour')

Edward_coconutFlour <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Edward & Sons\U1f1fa\U1f1f8', url = 'https://store.edwardandsons.com/collections/lets-do-organic/products/lets-do-organic-coconut-flour')),
  name = '\u6930\u8089\u7c89 Coconut\U1f965 Flour',
  usd = 5.99/454*14,
  servingGram = 14, 
  servingTbsp = 2, # packaging
  calorie = 60,
  fat = 2, sodium = .005, carbohydrate = 9, sugar = 1, protein = 2)

BobsRedMill_coconutFlour <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], bobsredmill = 'organic-coconut-flour',
  name = '\u6930\u8089\u7c89 Coconut\U1f965 Flour',
  servingGram = 14, 
  servingTbsp = 2, # packaging
  calorie = 60,
  fat = 1.5, sodium = .01, carbohydrate = 9, sugar = 3, protein = 3)

AnthonysGoods_coconutFlour <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  url = 'anthonysgoods.com/products/anthonys-organic-coconut-flour-4lb',
  brand = 'Anthony\'s Goods', 
  name = '\u6930\u8089\u7c89 Coconut\U1f965 Flour',
  usd = 18.99/1810*14,
  servingGram = 14,
  servingTbsp = 2, # packaging
  calorie = 60,
  fat = 2, sodium = .01, carbohydrate = 8, sugar = 2, protein = 2)


WegmansOrganic_coconutFlour <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  wegmansorganic = 253623L, usd = 3.79/454*14,
  name = '\u6930\u8089\u7c89 Coconut\U1f965 Flour',
  servingGram = 14, 
  #servingTbsp = 2, # packaging
  servingTbsp = 14/(66*2) * 16, # actual experiment: 66g = 1/2 cup
  calorie = 60,
  fat = 2, sodium = .01, carbohydrate = 8, sugar = 1, protein = 2)

ThaiKitchen_coconutmilkLite <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  thaikitchen = 'coconut-milk/organic-lite-coconut-milk',
  name = 'Lite Coconut\U1f965 Milk',
  walmart = '23591412', usd = 2.46/403*80, # 2023-11-07
  # fullweight = 475, emptyweight = 59,
  servingGram = (475-59)/403*80, servingCup = 1/3,
  fat = 5, sugar = 1, sodium = .02)


ThaiKitchen_coconutmilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  thaikitchen = 'coconut-milk/organic-coconut-milk',
  name = 'Coconut\U1f965 Milk',
  costco = '100452749', usd = (12.99/6)/403*80, # price retrieved 2024-09-02
  # fullweight = 475, emptyweight = 59, 
  servingGram = (475-59)/403*80, servingCup = 1/3,
  fat = 12, sugar = 1, sodium = .03)

# coconutmilk fdc water 94.57%
# fdc = 1097553L

Silk_coconutmilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(url = 'https://silk.com/plant-based-products/coconutmilk/unsweet-coconutmilk/', text = 'Silk')), 
  name = 'Coconutmilk\U1f965',
  target = 'A-15423909', usd = 4.99/8,
  servingGram = 240, servingCup = 1, # 240ml
  water = 240*.9457,
  fat = 4, sodium = .045)

SoDelicious_coconutmilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Coconutmilk\U1f965',
  brand = c(style_hyperlink(text = 'So Delicious', url = c(
    'https://sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/organic-unsweetened-original-32oz' # shelf stable
    # 'https://sodeliciousdairyfree.com/dairy-free-foods/plant-based-beverages/coconutmilk/organic-unsweetened-original-64oz' # need to chill
  ))),
  walmart = '667624971', usd = 2.68/4,
  costco = '100449940',
  servingGram = 240, servingCup = 1, # 240ml
  water = 240*.9457,
  fat = 4, sodium = .01)


Freenow_coconutmilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Barista Coconut\U1f965, No Sugar', alias = '0\u7cd6\u539a\u6930\u4e73',
  brand = c(style_hyperlink(text = '\u83f2\u8bfaFreeNow\U1f1e8\U1f1f3', url = 'http://www.freenowmilk.com/col.jsp?id=103')),
  usd = 6.29/1e3*1e2,
  servingGram = 100, serving_ml = 100, # guess
  calorie = 70,
  fat = 5.6, sodium = .081, carbohydrate = 3.9, protein = 1.1,
  contain = c('erythritol'),
  yamibuy = '26796422'
)


Kara_coconutmilk <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Coconut\U1f965 Cream', alias = '\u6930\u6d46',
  brand = c(style_hyperlink(text = 'Kara\U1f1ee\U1f1e9', url = 'https://kara-coconut.com/cn/product/uht-coconut-cream/')),
  usd = 1.89/200*15, # https://www.yamibuy.com/zh/p/kara-coconut-cream-200ml/1020034401 # out of stock right now
  servingGram = 15, serving_ml = 15, # guessed weight
  calorie = 35,
  fat = 3.5
)



