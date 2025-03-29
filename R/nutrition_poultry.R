

chicken_thigh <- function() new(# meat and skin
  Class = 'nutrition', call = match.call()[[1L]], fdc = 172385L,
  name = '(\u53bb\u76ae)\u9e21\u817f\u8089 Chicken Thigh',
  servingGram = 100, water = 66.5, fat = 16.6, protein = 16.5, sodium = .081)

chicken_breast <- function() new(# skinless, boneless
  Class = 'nutrition', call = match.call()[[1L]], fdc = 171077L,
  name = 'Chicken Breast',
  servingGram = 100, water = 73.9, fat = 2.62, protein = 22.5, sodium = .045)




duck_whole <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Duck\U1f986, whole', 
  brand = style_hyperlink(text = 'Maple Leaf Farms\U1f1fa\U1f1f8', url = 'https://shopmapleleaffarms.com/collections/duck-catalog') |> c(),
  serving_lb = 3.5,
  weee = '104919',
  Staub_vertRoaster = Staub_vertRoaster(
    fahrenheit = 350,
    minute = c('whole duck\U1f986, 3-3.5lb' = 90)
  )
)