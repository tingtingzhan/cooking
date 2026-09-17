

# https://shop.wegmans.com/shop/categories/535
# Brie & Other Cave Ripened Soft Cheeses


Wegmans_CambozolaBlueTorte <- \() new(
  Class = 'nutrition', 
  # wegmans = ??, # not on website right now
  name = 'Cambozola Blue Caramel Torte Cheese',
  serving_oz = 1, fat = 11, sodium = .125, sugar = 2, protein = 3,
  review = 'Super nice! Not too salty, not too sweet.  Try to assemble using my invert-sugar-syrup, mixed nuts (from Costco)')



Wegmans_Cambozola <- \() new(
  Class = 'nutrition', 
  # wegmans = ??, # not on website right now
  name = 'Cambozola Blue Triple Cr\u00e8me Cheese',
  serving_oz = 1, fat = 12, sodium = .19, protein = 4)




Wegmans_mildBrie <- \() new(
  Class = 'nutrition',  
  name = 'Cave-Ripened Mild Brie Cheese, Milky',
  wegmans = '201731', usd = 21.99/16, date = as.Date('2026-09-17'),
  serving_oz = 1, 
  calorie = 100,
  fat = 9, cholesterol = .030, sodium = .16, protein = 4,
  review = 'my all-time love!!')





Wegmans_mildTripleCreme <- \() new(
  Class = 'nutrition',  
  name = 'Cave-Ripened Mild Triple Cr\u00e8me Cheese',
  wegmans = '108112', usd = 26.99/16, date = as.Date('2026-09-17'),
  serving_oz = 1, 
  calorie = 110,
  fat = 11, cholesterol = .040, sodium = .22, protein = 3,
  review = 'too salty!!')


Wegmans_mildBonVivant <- \() new( # try again?
  Class = 'nutrition',
  name = 'Mild Bon Vivant',
  wegmans = '840554', usd = 23.99/16, date = as.Date('2026-09-17'),
  serving_oz = 1, 
  calorie = 100,
  fat = 9, cholesterol = .030, sodium = .16, protein = 5)




Wegmans_mildCremeuxDeBourgogne <- \() new( # try again?
  Class = 'nutrition',  
  name = 'Mild Cremeux de Bourgogne Soft Ripened Cheese',
  wegmans = '51985', usd = 2.00, date = as.Date('2026-09-17'),
  serving_oz = 1, 
  calorie = 110,
  fat = 11, cholesterol = .035, sodium = .12, protein = 3)




Wegmans_LangaLaTur <- \() new(
  Class = 'nutrition',
  name = 'Caseificio dell\'Alta Langa La Tur Cheese',
  wegmans = '416528', usd = 28.99/16, date = as.Date('2026-09-17'),
  serving_oz = 1, 
  calorie = 80,
  fat = 7, cholesterol = .03, sodium = .11, protein = 4)





Wegmans_mildGoatBrie <- \() new(
  Class = 'nutrition',  
  name = 'Mild Goat\U1f410 Brie Cheese',
  wegmans = '50306', usd = 1.43, date = as.Date('2026-09-17'),
  servingGram = 30, 
  calorie = 90,
  fat = 7, cholesterol = .025, sodium = .13, protein = 6,
  review = 'Stinks!! Dont buy!!!!')


BelGioioso_mascarpone <- \() new(
  Class = 'nutrition',  
  belgioioso = 'mascarpone', name = 'Mascarpone',
  wegmans = '870051', usd = 0.56, date = as.Date('2026-09-17'),
  fdc = 1726641L, # this brand!!
  # package is 1 pound 453g, 2 cups
  serving_oz = 1, servingTbsp = 2,
  calorie = 120,
  fat = 13, cholesterol = .035, sodium = .015, carbohydrate = 1, sugar = 1, protein = 2)

BelGioioso_ricotta <- \() new(
  Class = 'nutrition',  
  wegmans = '894048', usd = 9.49/907*55, date = as.Date('2026-09-17'),
  belgioioso = 'ricotta-con-latte', name = 'Ricotta con Latte',
  fdc = 2288192L, # this brand!!
  # https://www.ams.usda.gov/sites/default/files/media/ricottachees.pdf
  # 75% water # https://www.reasors.com/departments/deli/bel_gioioso_ricotta_cheese_whole_milk_16_oz/p/1276737
  water = 55*.75,
  servingGram = 55, servingCup = 1/4, 
  fat = 7, cholesterol = .03, sodium = .08, sugar = 2, protein = 4)



Friendship_farmer <- \() new(
  Class = 'nutrition',
  brand = 'Friendship Dairies', name = 'Farmer Cheese, No Salt Added',
  wegmans = '23257', usd = .53, date = as.Date('2026-09-17'),
  # https://www.friendshipdairies.com/en/products/farmer-cheese # has salt!!
  servingGram = 30, fat = 2.5, sodium = .01, protein = 4)


Wegmans_Castelbelo <- \() new( 
  Class = 'nutrition',
  # wegmans = ???, # not on website right now
  name = 'Caseificio dell\'Alta Langa Castelbelo Cheese',
  serving_oz = 1, fat = 8, sodium = .14, protein = 5,
  review = 'Much much less salty than Wegmans_mildBrie(), otherwise very similar.  Like it!')


Wegmans_goat_cheese <- \() new(
  Class = 'nutrition', 
  wegmans = '45825', usd = .75, date = as.Date('2026-09-17'),
  name = 'Goat\U1f410 Cheese, Mild', alias = '\u7f8a\u5976\u916a',
  serving_oz = 1,
  calorie = 80,
  fat = 6, cholesterol = .025, sodium = .06, carbohydrate = 1, sugar = 1, protein = 5)




Wegmans_cranberryGoat <- \() new(
  Class = 'nutrition',
  # wegmans = ???, # not on website right now
  name = 'Goat\U1f410 Cheese with Cranberries',
  serving_oz = 1, fat = 5, 
  sodium = .16, # website says `sodium = .86`, must be wrong
  protein = 4, 
  review = 'Nice!')


NaturalKosher_mozzarella <- \() new(
  Class = 'nutrition',  
  brand = style_hyperlink(text = 'Natural & Kosher', url = 'https://naturalandkosher.com/products/') |> c(),
  name = 'Shredded Mozzarella',
  serving_oz = 1, fat = 6, sodium = .135, protein = 6)

Wegmans_mozzarella_skim <- \() new(
  Class = 'nutrition',  
  wegmans = '33447',
  name = 'Shredded Mozzarella, Part-Skim',
  servingGram = 28, 
  servingCup = 1/4, # packaging
  usd = 12.49/80, # packaging
  calorie = 80,
  fat = 5, cholesterol = .015, sodium = .180, 
  carbohydrate = 2, sugar = 1, protein = 6,
  review = 'Not that great. Do not buy again')

Wegmans_mozzarella_whole <- \() new(
  Class = 'nutrition',  
  wegmans = '33429', usd = .25, date = as.Date('2026-09-17'),
  name = 'Shredded Mozzarella, Whole Milk',
  servingGram = 28, 
  servingCup = 1/4, # packaging
  calorie = 90,
  fat = 7, cholesterol = .025, sodium = .190, 
  carbohydrate = 1, protein = 6)
