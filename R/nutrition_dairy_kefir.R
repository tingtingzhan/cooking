

TraderJoes_goat_kefir <- function() new(
  Class = 'nutrition',
  brand = 'Trader Joe\'s', 
  name = '\u7f8a\u5976\u9152 Goat\U1f410 Milk Kefir',
  usd = 5.69/4,
  servingGram = (1039-59)/4,
  # full bottle: 1039g
  # empty bottle (with cap): 59g
  servingCup = 1,
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .120, carbohydrate = 10, sugar = 5, protein = 8)


GreenValley_kefir <- function() new(
  Class = 'nutrition',
  brand = c(style_hyperlink(text = 'Green Valley\U1f1fa\U1f1f8', url = 'https://greenvalleylactosefree.com/product/lactose-free-lowfat-kefir')),
  name = '\u4f4e\u8102\u725b\u5976\u9152 Lowfat Kefir',
  wegmans = 227007L, usd = 6.99 / 4,
  # full bottle (with cap): 1086g, 946ml
  # empty bottle (with cap): 59g
  servingGram = (1086-59)/4, 
  servingCup = 1, # 236.588ml
  calorie = 120,
  fat = 2, cholesterol = .015, sodium = .115, carbohydrate = 13, sugar = 12, protein = 11)


Siggis_filmjolk <- function() new(
  Class = 'nutrition',
  brand = c(style_hyperlink(text = 'Siggi\'s\U1f1fa\U1f1f8', url = 'https://siggis.com/product/plain-drinkable-nonfat-yogurt')),
  name = 'Swedish\U1f1f8\U1f1ea Filmj\u00f6lk',
  # full bottle (with cap): 1009g; 946ml
  # empty bottle (with cap): 44g
  servingGram = 181, # (1009 - 44) / 946 * 177.441
  serving_floz = 6, # serving_ml = 177, # should be 177.441ml
  calorie = 60,
  cholesterol = .005, sodium = .115, carbohydrate = 9, sugar = 7, protein = 6)
