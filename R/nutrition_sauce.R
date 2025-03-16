

Kikkoman_soyLite <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  kikkomanusa = 'less-sodium-soy-sauce',
  name = '\u6e1b\u5869\u91a4\u6cb9 Soy Sauce, Less Sodium',
  fdc = 174277L,
  walmart = '161737082', usd = 7.28/1200*15,
  servingGram = 15, servingTbsp = 1, 
  water = 15 * .712,
  sodium = .59, carbohydrate = 1, protein = 1)

Kikkoman_soy <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  kikkomanusa = 'soy-sauce',
  name = '\u9171\u6cb9 Soy Sauce',
  fdc = 174277L,
  walmart = '10307429', usd = 7.27/1200*15,
  servingGram = 15, servingTbsp = 1, 
  water = 15 * .712,
  sodium = .96, protein = 2)


mizkan_brownRiceVinegar <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  mizkanjpn = '01007',
  name = '\u7d14\u7384\u7c73\u9ed2\u9162 Brown Rice Vinegar',
  amazon = 'B000FQNWBS', usd = 18.59/500*15,
  servingGram = 15, servingTbsp = 1
)



LeaPerrins_Worcestershire <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  leaperrins = '00051600000044',
  # kraftheinzawayfromhome = '10051600003011',
  name = 'Worcestershire Sauce', alias = '\u55bc\u6c41',
  servingTsp = 1, servingGram = 5, 
  calorie = 5,
  carbohydrate = 1, sodium = .065, sugar = 1)

LeaPerrins_WorcestershireLite <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  leaperrins = '00051600002505',
  name = 'Worcestershire Sauce, Less Sodium', alias = '\u51cf\u76d0\u55bc\u6c41',
  servingTsp = 1, servingGram = 5, 
  calorie = 5,
  carbohydrate = 1, sodium = .045, sugar = 1)


Bachans_original <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  bachans = 'the-original-japanese-barbecue-sauce',
  name = 'Original Japanese Barbecue Sauce',
  servingGram = 19, servingTbsp = 1, calorie = 35,
  sodium = .52, addedSugar = 7)



GreyPoupon_Dijon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], costco = '100381596',
  brand = style_hyperlink(text = 'Grey Poupon\U1f1eb\U1f1f7', url = 'https://greypouponmustard.com/products/grey-poupon-french-dijon-mustard-215g') |> c(),
  name = 'Dijon Mustard',
  servingTsp = 1, servingGram = 5, sodium = .12)


Heinz_whiteVinegar <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  heinz = '00013000008525',
  name = '\u767d\u918b White Vinegar, 5% Acidity',
  servingTbsp = 1, servingGram = 14.4) 



Hellmanns_mayonnaise <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  hellmanns = 'real-mayonnaise.html/00048001213487',
  name = 'Mayonnaise',
  servingTbsp = 1, servingGram = 13, fat = 10, sodium = .09)

Hellmanns_mayonnaise_organic <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  hellmanns = 'organic-mayonnaise.html/00048001572713',
  name = 'Organic Mayonnaise',
  servingTbsp = 1, servingGram = 14, fat = 11, sodium = .09)

Hellmanns_mayonnaise_lite <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  hellmanns = 'light-mayonnaise.html/00048001213586',
  name = 'Light Mayonnaise',
  servingTbsp = 1, servingGram = 15, fat = 3.5, sodium = .11)






Dukes_mayonnaise <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  url = 'https://dukesmayo.com/products/real-mayonnaise',
  servingTbsp = 1, servingGram = 14, fat = 12, sodium = .07)

DukesLight_mayonnaise <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], url = 'https://dukesmayo.com/products/light-mayonnaise',
  servingTbsp = 1, servingGram = 15, fat = 5, sodium = .1)






ThaiKitchen_greenCurry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  thaikitchen = 'sauces-and-pastes/green-curry-paste',
  name = 'Green Curry Paste',
  servingGram = 6, servingTsp = 1, 
  calorie = 5,
  carbohydrate = 1, sodium = .14, review = 'Love!')

ThaiKitchen_redCurry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  thaikitchen = 'sauces-and-pastes/red-curry-paste',
  name = 'Red Curry Paste',
  servingGram = 5, servingTsp = 1,
  calorie = 5,
  carbohydrate = 1, sodium = .095, review = 'Love!')



Squid_fishSauce <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = style_hyperlink(text = 'Squid\U1f1f9\U1f1ed', url = 'https://squidbrand.com/en/product-category/export-en/') |> c(),
  name = 'Fish\U1f41f Sauce', alias = '\u9c7c\u9732',
  weee = '27743',
  serving_ml = 15, servingGram = 15, #?
  sodium = 1.46, protein = 2
)
