

# https://shop.wegmans.com/shop/categories/535
# Brie & Other Cave Ripened Soft Cheeses


Wegmans_CambozolaBlueTorte <- function() new(
  Class = 'nutrition', wegmans = 53941L,
  name = 'Cambozola Blue Caramel Torte Cheese',
  servingGram = 28, fat = 11, sodium = .125, sugar = 2, protein = 3,
  review = 'Super nice! Not too salty, not too sweet.  Try to assemble using my invert-sugar-syrup, mixed nuts (from Costco)')



Wegmans_Cambozola <- function() new(
  Class = 'nutrition', wegmans = 8603L,
  name = 'Cambozola Blue Triple Cr\u00e8me Cheese',
  servingGram = 28, fat = 12, sodium = .19, protein = 4)




Wegmans_mildBrie <- function() new(
  Class = 'nutrition', wegmans = 38341L, usd = 21.89/16,
  name = 'Cave-Ripened Mild Brie Cheese, Milky',
  servingGram = 28, 
  calorie = 100,
  fat = 9, cholesterol = .030, sodium = .16, protein = 4,
  review = 'my all-time love!!')





Wegmans_mildTripleCreme <- function() new(
  Class = 'nutrition', wegmans = 873L, usd = 27.59/16,
  name = 'Cave-Ripened Mild Triple Cr\u00e8me Cheese',
  servingGram = 28, 
  calorie = 110,
  fat = 11, cholesterol = .040, sodium = .22, protein = 3,
  review = 'too salty!!')


Wegmans_mildBonVivant <- function() new( # try again?
  Class = 'nutrition', wegmans = 226424L, usd = 24.19/16,
  name = 'Mild Bon Vivant',
  servingGram = 28, 
  calorie = 100,
  fat = 9, cholesterol = .030, sodium = .16, protein = 5)




Wegmans_mildCremeuxDeBourgogne <- function() new( # try again?
  Class = 'nutrition', wegmans = 227321L, usd = 2.14,
  name = 'Mild Cremeux de Bourgogne Soft Ripened Cheese',
  servingGram = 28, 
  calorie = 110,
  fat = 11, cholesterol = .035, sodium = .12, protein = 3)




Wegmans_LangaLaTur <- function() new(
  Class = 'nutrition', wegmans = 25755L, usd = 32.19/16,
  name = 'Caseificio dell\'Alta Langa La Tur Cheese',
  servingGram = 28, 
  calorie = 80,
  fat = 7, cholesterol = .03, sodium = .11, protein = 4)





Wegmans_mildGoatBrie <- function() new(
  Class = 'nutrition', wegmans = 222234L, usd = 1.64,
  name = 'Mild Goat\U1f410 Brie Cheese',
  servingGram = 30, 
  calorie = 90,
  fat = 7, cholesterol = .025, sodium = .13, protein = 6,
  review = 'Stinks!! Dont buy!!!!')


BelGioioso_mascarpone <- function() new(
  Class = 'nutrition', 
  belgioioso = 'mascarpone', name = 'Mascarpone',
  wegmans = 11544L, usd = .65,
  fdc = 1726641L, # this brand!!
  servingGram = 28,
  calorie = 120,
  fat = 13, cholesterol = .035, sodium = .015, carbohydrate = 1, sugar = 1, protein = 2)

BelGioioso_ricotta <- function() new(
  Class = 'nutrition', 
  wegmans = 265931L, usd = 7.49/907*55,
  belgioioso = 'ricotta-con-latte', name = 'Ricotta con Latte',
  fdc = 2288192L, # this brand!!
  # https://www.ams.usda.gov/sites/default/files/media/ricottachees.pdf
  # 75% water # https://www.reasors.com/departments/deli/bel_gioioso_ricotta_cheese_whole_milk_16_oz/p/1276737
  water = 55*.75,
  servingGram = 55, servingCup = 1/4, 
  fat = 7, cholesterol = .03, sodium = .08, sugar = 2, protein = 4)



Friendship_farmer <- function() new(
  Class = 'nutrition', wegmans = 9715L,
  brand = 'Friendship Dairies', name = 'Farmer Cheese, No Salt Added',
  # https://www.friendshipdairies.com/en/products/farmer-cheese # has salt!!
  servingGram = 30, fat = 2.5, sodium = .01, protein = 4)


Wegmans_Castelbelo <- function() new( 
  Class = 'nutrition', wegmans = 25571L,
  name = 'Caseificio dell\'Alta Langa Castelbelo Cheese',
  servingGram = 28, fat = 8, sodium = .14, protein = 5,
  review = 'Much much less salty than Wegmans_mildBrie(), otherwise very similar.  Like it!')

Wegmans_cranberryGoat <- function() new(
  Class = 'nutrition', wegmans = 261050L,
  name = 'Goat\U1f410 Cheese with Cranberries',
  servingGram = 28, fat = 5, 
  sodium = .16, # website says `sodium = .86`, must be wrong
  protein = 4, 
  review = 'Nice!')



NaturalKosher_mozzarella <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Natural & Kosher', url = 'https://naturalandkosher.com/products/')),
  name = 'Shredded Mozzarella',
  servingGram = 28, fat = 6, sodium = .135, protein = 6,
  review = 'Store in freezer. Use directly from freezer')

