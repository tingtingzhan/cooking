

Kikkoman_soyLite <- function() new(
  Class = 'nutrition', url = 'kikkomanusa.com/homecooks/products/less-sodium-soy-sauce/',
  brand = 'Kikkoman\u4e80\u7532\u842c\U1f1ef\U1f1f5', 
  name = '\u6e1b\u5869\u91a4\u6cb9 Soy Sauce, Less Sodium',
  fdc = 174277L,
  walmart = '161737082', usd = 7.28/1200*15,
  servingGram = 15, servingTbsp = 1, 
  water = 15 * .712,
  sodium = .59, carbohydrate = 1, protein = 1)

Kikkoman_soy <- function() new(
  Class = 'nutrition', url = 'kikkomanusa.com/homecooks/products/soy-sauce-non-gmo/',
  brand = 'Kikkoman\u4e80\u7532\u842c\U1f1ef\U1f1f5', name = '\u9171\u6cb9 Soy Sauce',
  fdc = 174277L,
  walmart = '10307429', usd = 7.27/1200*15,
  servingGram = 15, servingTbsp = 1, 
  water = 15 * .712,
  sodium = .96, protein = 2)


mizkan_brownRiceVinegar <- function() new(
  Class = 'nutrition', 
  #url = 'www.mizkan.co.jp/product/group/?gid=01007',
  mizkanjpn = '01007',
  #brand = 'mizkan\u30df\u30c4\u30ab\u30f3\U1f1ef\U1f1f5', 
  name = '\u7d14\u7384\u7c73\u9ed2\u9162 Brown Rice Vinegar',
  amazon = 'B000FQNWBS', usd = 18.59/500*15,
  servingGram = 15, servingTbsp = 1
)



LeaPerrins_Worcestershire <- function() new(
  Class = 'nutrition', 
  brand = styleURL(text_ = 'Lea & Perrins\U1f1ec\U1f1e7', 
                   url_ = 'www.kraftheinz.com/lea-perrins/products/00051600002505'),
  name = '\u55bc\u6c41 Worcestershire Sauce',
  servingTsp = 1, servingGram = 5, sodium = .065, sugar = 1)


Bachans_original <- function() new(
  Class = 'nutrition', url = 'bachans.com/products/the-original-japanese-barbecue-sauce',
  brand = 'Bachan\'s', name = 'Original Japanese Barbecue Sauce',
  servingGram = 19, servingTbsp = 1, calorie = 35,
  sodium = .52, addedSugar = 7)



GreyPoupon_Dijon <- function() new(
  Class = 'nutrition', costco = '100381596',
  brand = styleURL(text_ = 'Grey Poupon\U1f1eb\U1f1f7', 
                   url_ = 'greypouponmustard.com/products/grey-poupon-french-dijon-mustard-215g'),
  name = 'Dijon Mustard',
  servingTsp = 1, servingGram = 5, sodium = .12)


Heinz_whiteVinegar <- function() new(
  Class = 'nutrition', 
  brand = styleURL(text_ = 'Heinz\U1f1fa\U1f1f8', 
                   url_ = 'www.heinz.com/products/00013000008525'),
  name = '\u767d\u918b White Vinegar, 5% Acidity',
  servingTbsp = 1, servingGram = 14.4) 



Hellmanns_mayonnaise <- function() new(
  Class = 'nutrition', url = 'www.hellmanns.com/us/en/p/real-mayonnaise.html/00048001213487',
  brand = 'Hellmanns', name = 'Mayonnaise',
  servingTbsp = 1, servingGram = 13, fat = 10, sodium = .09)

HellmannsOrganic_mayonnaise <- function() new(
  Class = 'nutrition', url = 'www.hellmanns.com/us/en/p/organic-mayonnaise.html/00048001572713',
  brand = 'Hellmanns', name = 'Organic Mayonnaise',
  servingTbsp = 1, servingGram = 14, fat = 11, sodium = .09)

HellmannsLight_mayonnaise <- function() new(
  Class = 'nutrition', url = 'www.hellmanns.com/us/en/p/light-mayonnaise.html/00048001213586',
  brand = 'Hellmanns', name = 'Light Mayonnaise',
  servingTbsp = 1, servingGram = 15, fat = 3.5, sodium = .11)






Dukes_mayonnaise <- function() new(
  Class = 'nutrition', url = 'dukesmayo.com/products/real-mayonnaise',
  servingTbsp = 1, servingGram = 14, fat = 12, sodium = .07)

DukesLight_mayonnaise <- function() new(
  Class = 'nutrition', url = 'dukesmayo.com/products/light-mayonnaise',
  servingTbsp = 1, servingGram = 15, fat = 5, sodium = .1)






ThaiKitchen_greenCurry <- function() new(
  Class = 'nutrition', url = 'www.mccormick.com/thai-kitchen/products/sauces-and-pastes/green-curry-paste',
  brand = 'Thai Kitchen', name = 'Green Curry Paste',
  servingGram = 6, servingTsp = 1, sodium = .14, review = 'Love!')

ThaiKitchen_redCurry <- function() new(
  Class = 'nutrition', url = 'www.mccormick.com/thai-kitchen/products/sauces-and-pastes/red-curry-paste',
  brand = 'Thai Kitchen', name = 'Red Curry Paste',
  servingGram = 5, servingTsp = 1, sodium = .095, review = 'Love!')

