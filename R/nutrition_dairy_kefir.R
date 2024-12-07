

TraderJoes_goat_kefir <- function() new(
  Class = 'nutrition',
  brand = 'Trader Joe\'s', 
  name = '\u7f8a\u5976\u9152 Goat\U1f410 Milk Kefir',
  usd = 5.69/4,
  servingGram = (1039-59)/4,
  # nice
  servingCup = 1,
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .120, carbohydrate = 10, sugar = 5, protein = 8)

Meyenberg_goat_kefir <- function() new(
  Class = 'nutrition', meyenberg = 'goatyogurt-1-1',
  name = '\u7f8a\u5976\u9152 Goat\U1f410 Kefir', 
  wegmans = 4937L, usd = 8.99/946*240, # https://redwoodhill.com/redwood-hill-to-become-meyenberg
  servingGram = 240, servingCup = 1, # 240ml / 946ml # weight to be confirmed!!
  # full bottle with cap 1060g
  # use it as staple
  calorie = 140,
  fat = 8, cholesterol = .035, sodium = .12, carbohydrate = 10, sugar = 5, protein = 8)

if (FALSE) {
  diagnose(TraderJoes_goat_kefir, Meyenberg_goat_kefir)
}



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
  siggis = 'plain-drinkable-nonfat-yogurt',
  name = 'Swedish\U1f1f8\U1f1ea Filmj\u00f6lk',
  wegmans = 39729L, usd = 4.99/946 * 177.441,
  # full bottle (with cap): 1009g; 946ml
  # empty bottle (with cap): 44g
  servingGram = 181, # (1009 - 44) / 946 * 177.441
  serving_floz = 6, # serving_ml = 177, # should be 177.441ml
  calorie = 60,
  cholesterol = .005, sodium = .115, carbohydrate = 9, sugar = 7, protein = 6)
