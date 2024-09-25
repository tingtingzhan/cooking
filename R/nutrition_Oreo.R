

# Oreo manufacturing!!!
# https://www.youtube.com/watch?v=b_hDOHmF9nE

if (FALSE) {
  nutrition_(
    Nabisco_waferOreo,
    Nabisco_Oreo,
    Nabisco_OreoThins
  )
}

Nabisco_waferOreo <- function() new(
  Class = 'nutrition', amazon = 'B07H9V7Q8S',
  brand = 'Nabisco', name = 'Oreo Wafers',
  servingGram = 31, 
  calorie = 140,
  fat = 4.5, sodium = .17, carbohydrate = 23, sugar = 9, protein = 2)

# Nabisco_crumbOreo, amazon = 'B07HBSRYTN', is crumbs of Nabisco_OreoThins()
  

Nabisco_Oreo <- function() new(
  Class = 'nutrition', 
  oreo = 'oreo-cookie', name = 'Oreo',
  servingGram = 34, 
  calorie = 160,
  fat = 7, sodium = .13, carbohydrate = 25, sugar = 14, protein = 1)

Nabisco_OreoThins <- function() new(
  Class = 'nutrition', 
  oreo = 'oreo-thins-original-cookies', name = 'Oreo Thins',
  servingGram = 29, 
  calorie = 140,
  fat = 6, sodium = .095, carbohydrate = 21, sugar = 12, protein = 1)

# NOT using full Oreo as cheesecake crust :)))
# https://youtu.be/1h7RCGoZKG8?t=322


Nabisco_graham <- function() new(
  Class = 'nutrition', 
  brand = 'Nabisco', name = 'Grahams, Original',
  walmart = '10292704', usd = 4.68/408*31,
  servingGram = 31, fat = 3.5, sodium = .17, addedSugar = 8, protein = 2)

HoneyMaid_graham <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Nabisco Honey Maid', url = 'https://www.snackworks.com/product/00044000004637/')),
  name = 'Honey Graham',
  walmart = '10292699', usd = 4.68/408*30,
  servingGram = 30, fat = 3, sodium = .13, addedSugar = 8, protein = 2)


  
  
