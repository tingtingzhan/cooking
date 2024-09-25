
Galil_roastedChestnut <- function() new(
  Class = 'nutrition', url = 'shopgalil.com/products/galil-organic-roasted-chestnuts-shelled-3-5oz-pack-of-24',
  brand = 'Galil', name = 'Roasted Chestnut',
  servingGram = 50, fat = .5, sugar = 5, protein = 2
)



SavannaOrchards_cashewAlmondPecanPistachio <- function() new(
  Class = 'nutrition', costco = '100312639',
  brand = 'Savanna Orchards',
  name = 'Honey Roasted Cashew, Almond, Pecan & Pistachio',
  servingGram = 30, fat = 14, sodium = .09, sugar = 4, protein = 5)



Greenmax_blackSesame <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Greenmax\u99ac\u7389\u5c71\U1f1f9\U1f1fc', url = 'https://www.greenmax.com.tw/product_view.php?id=62772')),
  name = '\u9ed1\u829d\u9ebb\u7c89 Black Sesame Powder',
  usd = 5.99/400*40,
  servingGram = 40, 
  calorie = 240,
  fat = 20.5, sodium = .005, carbohydrate = 7, protein = 9)


Jbasket_whiteSesame <- function() new(
  Class = 'nutrition', wegmans = 54348L,
  jfc = '40444',
  brand = 'J-Basket', name = '\u719f\u767d\u829d\u9ebb Roasted White Sesame Seed',
  servingGram = .7, servingTsp = 1/4 # packaging
)

peanut <- function() new(
  Class = 'nutrition', fdc = 172430L,
  name = '\u82b1\u751f Peanut\U1f95c',
  calorie = 567,
  servingGram = 100, water = 6, protein = 25.8, fat = 49.2, sugar = 4.72, sodium = .018)

pecan <- function() new(
  Class = 'nutrition', fdc = 170182L,
  name = '\u80e1\u6843 Pecan',
  servingGram = 100, water = 3.52, protein = 9.17, fat = 72, sugar = 3.97)


Kirkland_cashew <- function() new(
  Class = 'nutrition', costco = '4000043019',
  name = '\u8170\u679c Cashews', # unsalted
  usd = 14.99/(2.5*454)*28,
  servingGram = 28, fat = 14, sugar = 2, protein = 5)

Kirkland_cashew_organic <- function() new(
  Class = 'nutrition', costco = '4000064056',
  name = '\u8170\u679c Organic Cashews', # unsalted unroasted
  usd = 14.99/(2.5*454)*28,
  servingGram = 28, 
  calorie = 150,
  fat = 12, sugar = 2, protein = 5)

Kirkland_Brazilnut <- function() new(
  Class = 'nutrition', costcoBiz = '100392410',
  name = 'Organic Brazil Nuts',
  usd = 9.79/680*30,
  servingGram = 30,
  calorie = 210,
  fat = 20, carbohydrate = 4, sugar = 1, protein = 4,
  review = 'I do not like much..')
