

# Oreo manufacturing!!!
# https://www.youtube.com/watch?v=b_hDOHmF9nE

if (FALSE) {
  diagnose(
    Nabisco_waferOreo,
    Oreo,
    Oreo_thins,
    Oreo_thins_tiramisu,
    Oreo_thins_lemon,
    Oreo_thins_mint
  )
}

Nabisco_waferOreo <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], amazon = 'B07H9V7Q8S',
  brand = 'Nabisco', name = 'Oreo Wafers',
  servingGram = 31, 
  calorie = 140,
  fat = 4.5, sodium = .17, carbohydrate = 23, sugar = 9, protein = 2)
# https://www.webstaurantstore.com/nabisco-23-1-lb-oreo-3-ice-cream-wafers/565297100.html

# Nabisco_crumbOreo, amazon = 'B07HBSRYTN'
  

Oreo <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  oreo = 'oreo-cookie', name = 'Oreo',
  wegmans = 270225L, usd = 4.99/15,
  servingGram = 34, 
  calorie = 160,
  fat = 7, sodium = .13, carbohydrate = 25, fiber = 1, sugar = 14, addedSugar = 13, protein = 1)

Oreo_thins <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  oreo = 'oreo-thins-original-cookies', # doesnt work right now
  name = 'Oreo Thins',
  wegmans = 25409833L, usd = 4.99/12,
  servingGram = 29, 
  calorie = 140,
  fat = 6, sodium = .095, carbohydrate = 21, fiber = 1, sugar = 12, addedSugar = 12, protein = 1)

Oreo_thins_tiramisu <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  oreo = 'tiramisu',
  name = 'Oreo Thins, Tiramisu',
  wegmans = 25431888L, usd = 4.99/12,
  servingGram = 29, 
  calorie = 140,
  fat = 6, sodium = .095, carbohydrate = 21, fiber = 1, sugar = 11, addedSugar = 11, protein = 1,
  review = 'I love!!')

Oreo_thins_lemon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  oreo = 'oreo-thins-lemon-cookies',
  name = 'Oreo Thins, Lemon\U1f34b',
  # wegmans = ??, usd = 4.99/13,
  servingGram = 29, 
  calorie = 140,
  fat = 6, sodium = .095, carbohydrate = 21, sugar = 11, addedSugar = 11, protein = 1,
  review = 'not bad')


Oreo_thins_mint <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  oreo = 'oreo-thins-mint-cookies',
  name = 'Oreo Thins, Mint',
  wegmans = 25409822L, usd = 4.99/12,
  servingGram = 29, 
  calorie = 140,
  fat = 6, sodium = .095, carbohydrate = 21, fiber = 1, sugar = 12, addedSugar = 12, protein = 1,
  review = 'mint flavor too strong for me!')

# NOT using full Oreo as cheesecake crust :)))
# https://youtu.be/1h7RCGoZKG8?t=322


Nabisco_graham <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = 'Nabisco', name = 'Grahams, Original',
  walmart = '10292704', usd = 4.68/408*31,
  servingGram = 31, fat = 3.5, sodium = .17, addedSugar = 8, protein = 2)

HoneyMaid_graham <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Nabisco Honey Maid', url = 'https://www.snackworks.com/product/00044000004637/')),
  name = 'Honey Graham',
  walmart = '10292699', usd = 4.68/408*30,
  servingGram = 30, fat = 3, sodium = .13, addedSugar = 8, protein = 2)


  
  
