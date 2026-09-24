
#' @rdname raw_recipe
#' 
#' @examples
#' nutritionlist(
#'  pumpkin_creamCheeseSpread(),
#'  cooking:::GoodLifeEats_pumpkin_creamCheeseSpread(),
#'  cooking:::Lynn_pumpkin_creamCheeseSpread()
#' )



GoodLifeEats_pumpkin_creamCheeseSpread <- \() new(
  Class = 'recipe',
  class2 = 'Spread\U1f96f', # 'Cream Cheese Spread',
  author = 'Good Life Eats',
  dairy_brick = c(Philadelphia_creamCheese = 1),
  puree_cup = c(Libbys_pumpkin = 2/3),
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1.5),
  sugar_Tbsp = c(Domino_darkBrown = 2),
  url = 'https://www.goodlifeeats.com/whipped-pumpkin-cream-cheese-and-8-ways-to-use-leftover-pumpkin/'
)


Lynn_pumpkin_creamCheeseSpread <- \() new(
  Class = 'recipe',
  class2 = 'Spread\U1f96f', # 'Cream Cheese Spread',
  author = 'Lynn',
  dairy_brick = c(Philadelphia_creamCheese = 1),
  puree_cup = c(Libbys_pumpkin = 1/2),
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1),
  youtube = 'OxmE0JeiWLo'
)
