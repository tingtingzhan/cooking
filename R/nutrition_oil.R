

Mazola_corn_oil <- function() new(
  Class = 'nutrition', url = 'www.mazola.com/products/mazolareg-corn-oil/',
  brand = 'Mazola', name = '\u7389\u7c73\u6cb9 Corn\U1f33d Oil',
  servingGram = 14, servingTbsp = 1, fat = 14)



Wegmans_corn_oil <- function() new(
  Class = 'nutrition', wegmans = 42111L,
  name = '\u7389\u7c73\u6cb9 Corn\U1f33d Oil',
  servingGram = 14, servingTbsp = 1, fat = 14)

Wegmans_basting_oil <- function() new(
  Class = 'nutrition', wegmans = 262361L,
  name = '\u9999\u6599\u6a44\u6984\u6cb9 Basting Oil',
  # Pure Olive Oil, Dried Thyme, Dried Parsley, Organic Natural Garlic Flavor.
  usd = 8.49/250*15,
  servingGram = 14, servingTbsp = 1,
  calorie = 120,
  fat = 14)


Wegmans_vegetable_oil <- function() new(
  Class = 'nutrition', wegmans = 5904L,
  name = '\u690d\u7269\u6cb9 Vegetable Oil',
  servingGram = 14, servingTbsp = 1, fat = 14)



Wegmans_olive_oil <- function() new(
  Class = 'nutrition', wegmans = 15183L, # usd = 10.99/??
  name = 'Mediterranean Blend Extra Virgin Olive Oil',
  servingGram = 15, servingTbsp = 1, fat = 14)



Kadoya_sesameOil <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Kadoya\u52a0\u767b\u5c4b\u88fd\u6cb9\u6240\U1f1ef\U1f1f5', url = 'https://www.kadoya.com/english/products/family.html')),
  name = '\u829d\u9ebb\u6cb9 Sesame Oil',
  servingGram = 14, servingTbsp = 1, 
  calorie = 130,
  fat = 14)


YouJia_greenPeppercornOil <- function() new(
  Class = 'nutrition',
  brand = unclass(style_hyperlink(text = '\u53cb\u52a0\U1f1e8\U1f1f3', url = 'https://www.youjiafood.com/productinfo.aspx?ContentID=102')),
  name = '\u85e4\u6912\u6cb9 Green Peppercorn Oil',
  usd = 4.99/250*15,
  servingGram = 14, servingTbsp = 1, fat = 14)



Epic_lard <- function() new(
  Class = 'nutrition', 
  epicprovisions = 'organic-pork-fat',
  name = '\u732a\u6cb9 Pork\U1f416 Lard',
  servingGram = 14, 
  servingTbsp = 1, # packaging
  usd = 13.89/312*14,
  calorie = 130,
  fat = 14)

Morrell_lard <- function() new(
  Class = 'nutrition',
  walmart = '13439653', usd = 2.32/454*13,
  brand = 'John Morrell\U1f1fa\U1f1f8', name = '\u732a\u6cb9 Lard',
  servingGram = 13, servingTbsp = 1, # packaging
  fat = 13)

Epic_tallow <- function() new(
  Class = 'nutrition', 
  epicprovisions = 'beef-tallow-animal-oil-single-jar',
  name = '\u725b\u6cb9 Beef\U1f402 Tallow',
  usd = 13.89/312*14,
  calorie = 130,
  servingGram = 14, servingTbsp = 1, fat = 14)

Epic_duck <- function() new(
  Class = 'nutrition', 
  epicprovisions = 'duck-fat-animal-oil-single-jar',
  name = '\u9e2d\u6cb9 Duck\U1f986 Fat',
  usd = 13.89/312*14,
  calorie = 130,
  servingGram = 14, servingTbsp = 1, fat = 14)

