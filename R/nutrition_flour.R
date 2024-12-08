
#' @title Wheat Flour
#' 
#' @keywords internal
#' @name nutrition_wheatFlour
NULL

# https://shop.wegmans.com/product/277/wegmans-all-purpose-unbleached-flour


#' @rdname nutrition_wheatFlour
#' @export
Wegmans_pastry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Pastry\U1f370 Flour',
  alias = '\u4f4e\u7b4b\u9762\u7c89',
  wegmans = 24706L, usd = 3.69/2270*30,
  servingGram = 30, 
  servingCup = 1/4, # packaging
  calorie = 100,
  carbohydrate = 23, protein = 30*.08)


Wegmans_bread <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = '\u9ad8\u7b4b\u9762\u7c89 Bread\U1f35e Flour', # Enriched Unbleached
  wegmans = 24587L, usd = 3.69/2270*30,
  servingGram = 30, 
  servingCup = 1/4, # packaging
  calorie = 100,
  carbohydrate = 23, protein = 3)

Wegmans_whiteWheat <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 35705L,
  name = '\u767d\u5168\u9ea6\u9762\u7c89 White Whole Wheat Flour',
  usd = 3.49/2270*28,
  servingGram = 28, 
  servingCup = 1/4, # packaging
  calorie = 90,
  fat = .5, carbohydrate = 20, protein = 4)

Wegmans_wheat <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 54401L,
  name = '\u5168\u9ea6\u9762\u7c89 Whole Wheat Flour',
  usd = 3.49/2270*28,
  servingGram = 28, 
  servingCup = 1/4, # packaging
  calorie = 90,
  fat = .5, carbohydrate = 20, protein = 4,
  superior = 'Wegmans_whiteWheat')
  #review = 'color Too dark')







# https://shop.kingarthurbaking.com/items/100-whole-wheat-flour # 13.2% protein content
# https://shop.kingarthurbaking.com/items/100-organic-whole-wheat-flour # 13.8% protein content

KingArthur_whiteWheat <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 305555L,
  name = 'White Whole Wheat Flour', alias = '12.2%\u767d\u5168\u9ea6\u9762\u7c89',
  # https://shop.kingarthurbaking.com/items/stone-ground-white-whole-wheat-flour # 12.2% protein content
  usd = 6.95/2270*30,
  servingGram = 30, 
  servingCup = 1/4, # packaging
  calorie = 110,
  fat = 1, carbohydrate = 22, protein = 30*.122)

KingArthur_whiteWheat_organic <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 308102L,
  name = 'White Whole Wheat Flour, Organic', alias = '12.2%\u767d\u5168\u9ea6\u9762\u7c89',
  usd = 10.95/2270*30,
  servingGram = 28, 
  servingCup = 1/4, # packaging
  calorie = 100,
  carbohydrate = 21, protein = 28*.122)


KingArthur_bread_organic <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 308104L, 
  name = 'Bread\U1f35e Flour, Organic', alias = '12.7%\u9ad8\u7b4b\u9762\u7c89',
  usd = 10.95/2270*30,
  servingGram = 30, 
  servingCup = 1/4, # packaging
  calorie = 110,
  carbohydrate = 23, protein = 30*.127) # 12.7% protein content

KingArthur_bread <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 304105L, 
  name = 'Bread\U1f35e Flour', alias = '12.7%\u9ad8\u7b4b\u9762\u7c89',
  usd = 6.95/2270*30,
  servingGram = 30, 
  servingCup = 1/4, # packaging, this is fluffed density
  # servingCup = 30/160, # actual experiment: 2 cup = 320 g
  calorie = 110,
  carbohydrate = 23, protein = 30*.127) # 12.7% protein content

KingArthur_highGluten <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 100185L, 
  name = '14.2%\u9ad8\u7b4b\u9762\u7c89 High-Gluten Flour',
  usd = 12.95/1360*30,
  servingGram = 30, servingCup = 1/4, 
  calorie = 110,
  carbohydrate = 21, protein = 30*.142) # 14.2% gluten-forming protein

KingArthur_Lancelot <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], webstaurant = '104NFL5100S',
  kingarthurpro = 13050L,
  name = '14%\u9ad8\u7b4b\u9762\u7c89 Sir Lancelot',
  usd = 28.49/(50*454)*100,
  servingGram = 100, 
  calorie = 364, 
  fat = .98, carbohydrate = 70.5, sugar = .27, protein = 14, water = 14)

KingArthur_Galahad <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], webstaurant = '104NFL5110S',
  kingarthurpro = 12050L,
  name = '11.7%\u4e2d\u7b4b\u9762\u7c89 Sir Galahad',
  usd = 25.14/(50*454)*100,
  servingGram = 100, 
  calorie = 364, 
  fat = .98, carbohydrate = 72.82, sugar = .27, protein = 11.7, water = 14)


KingArthur_allPurpose <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 301050L, 
  name = 'All-Purpose Flour', alias = '11.7%\u4e2d\u7b4b\u9762\u7c89',
  usd = 6.95/2270*30,
  servingGram = 30, 
  servingCup = 1/4, # packaging
  calorie = 110,
  carbohydrate = 23, protein = 30*.117) # 11.7% protein content

KingArthur_allPurpose_organic <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 308006L, 
  name = '\u4e2d\u7b4b\u9762\u7c89 All-Purpose Flour, Organic',
  usd = 10.95/2270*30,
  servingGram = 30, 
  servingCup = 1/4, # packaging
  calorie = 110,
  carbohydrate = 23, protein = 4)



KingArthur_cake <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  kingarthur = 300004L, 
  name = 'Cake\U1f370 Flour', alias = '10%\u4f4e\u7b4b\u9762\u7c89',
  servingGram = 32, servingCup = 1/4, 
  carbohydrate = 25, protein = 32*.1)
# kingarthurpro = 19050L, # professional 'unbleached cake flour' is 7% !!!


KingArthur_pastry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 100184L, 
  name = 'Pastry\U1f370 Flour', alias = '8%\u4f4e\u7b4b\u9762\u7c89',
  usd = 12.95/1360*26,
  servingGram = 26, servingCup = 1/4, 
  calorie = 100,
  carbohydrate = 20, protein = 26*.08) # 8.0% gluten-forming protein
# kingarthurpro = c(29025L, 28050L), # professional 'pastry flour' is 9% !!! 


KingArthur_selfRising <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], kingarthur = 301330L, 
  name = 'Self-Rising Flour, Unbleached',
  usd = 6.95/2270*30,
  servingGram = 30, 
  servingCup = 1/4, # packaging
  calorie = 110,
  sodium = .36, carbohydrate = 22, protein = 30*.08) # < 8.5% protein content


KingArthur_selfRising_homemade <- function() new(
  Class = 'recipe', 
  alias_flavor = 'Homemade Self-Rising Flour',
  author = 'brinna-sands',
  kingarthur = 'homemade-self-rising-flour-recipe',
  flour_cup = 1,
  bakingPowder_tsp = 1.5,
  salt_tsp = 1/4)



BobsRedMill_wheatGluten <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], bobsredmill = 'vital-wheat-gluten',
  name = 'Wheat Gluten Flour', alias = '\u9762\u7b4b\u7c89',
  wegmans = 219620L, usd = 7.79/567*30,
  servingGram = 30, 
  servingCup = 1/4, # packaging
  fat = 1, sodium = .02, carbohydrate = 4, protein = 23)



