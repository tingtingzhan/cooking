

FrontierCoop_harissa <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], frontiercoop = 'harissa-seasoning-organic-1-90-oz',
  name = 'Harissa Seasoning',
  contain = c(
    'paprika', 'caraway', 'red chili pepper', 'cayenne', 'coriander', 'cumin', 'garlic', 'peppermint'
  ),
  usd = 5.19/54*3.5,
  servingGram = 3.5, servingTsp = 2, # packaging
  # servingGram = 54, servingTbsp = ??
  calorie = 15,
  fat = .5, sodium = .03, carbohydrate = 2, protein = 1)



FrontierCoop_vindaloo <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], frontiercoop = 'vindaloo-curry-seasoning-organic-1-lb',
  name = 'Vindaloo Curry Seasoning', # \u5496\u55b1\u7c89 
  contain = c(
    'tomato concentrate', 'guar gum', 'cumin', 'chili pepper', 'cayenne', 'turmeric', 'coriander', 'cinnamon', 'yellow mustard', 'fenugreek', 'garlic', 'ginger', 'black pepper', 'cardamom', 'clove'
  ),
  usd = 31.20/454*3.5, 
  servingGram = 3.5, servingTsp = 2, # packaging
  calorie = 10,
  carbohydrate = 2)




