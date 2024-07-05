

Wegmans_Marsala <- function() new(
  Class = 'nutrition',
  wegmans = 270922L, usd = 3.29/375*30,
  name = '\u6599\u9152 Marsala Cooking Wine',
  serving_ml = 30, servingGram = 30, # my guess
  calorie = 35,
  sodium = .17,
  carbohydrate = 3,
  sugar = 3,
  AbV = .14)


Wegmans_Sherry <- function() new(
  Class = 'nutrition',
  wegmans = 270943L, usd = 3.29/375*30,
  name = '\u6599\u9152 Sherry Cooking Wine',
  serving_ml = 30, servingGram = 30, # my guess
  calorie = 35,
  sodium = .18,
  carbohydrate = 2,
  sugar = 1,
  AbV = .17)

Wegmans_redCookingWine <- function() new(
  Class = 'nutrition',
  wegmans = 270926L, usd = 3.29/375*30,
  name = '\u6599\u9152 Red Cooking Wine',
  serving_ml = 30, servingGram = 30, # my guess
  calorie = 20,
  sodium = .18,
  AbV = .12)

Wegmans_whiteCookingWine <- function() new(
  Class = 'nutrition',
  wegmans = 270899L, usd = 3.29/375*30,
  name = '\u6599\u9152 White Cooking Wine',
  serving_ml = 30, servingGram = 30, # my guess
  calorie = 35,
  sodium = .15,
  AbV = .10)
