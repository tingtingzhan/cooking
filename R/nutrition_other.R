
Lato_seaGrapes <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], amazon = 'B083L49P5F',
  brand = 'Lato', name = 'Sea Grapes (Caulerpa Lentillifera)',
  servingGram = 50, fat = .05, sodium = .112, protein = .2,
  review = 'Super salty!!!  I don\'t enjoy the taste at all (after rinsing)'
)





Crown_Bourbon_syrup <- function() new( # lacks bourbon flavor!!!
  Class = 'nutrition', call = match.call()[[1L]], 
  brand = c(style_hyperlink(text = 'Crown Maple', url = 'https://crownmaple.store/crown-maple-bourbon-barrel-aged-organic-maple-syrup-750ml-25-fl-oz/')),
  name = 'Bourbon Barrel-Aged Maple\U1f341 Syrup', alias = '\u9152\u6876\u67ab\u7cd6',
  # full bottle 1700g; empty bottle xxx
  servingGram = 40, servingTbsp = 2, # serving_ml = 30, # (1700 - xxx) / 750 * 30
  sodium = .005, sugar = 24)



