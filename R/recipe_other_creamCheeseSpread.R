
#' @rdname raw_recipe
#' 
#' @examples
#' diagnose(
#'  pumpkin_creamCheeseSpread(),
#'  cooking:::GoodLifeEats_pumpkin_creamCheeseSpread(),
#'  cooking:::Lynn_pumpkin_creamCheeseSpread()
#' )



GoodLifeEats_pumpkin_creamCheeseSpread <- \() new(
  Class = 'recipe',
  alias_class = 'Spread\U1f96f', # 'Cream Cheese Spread',
  author = 'Good Life Eats',
  creamCheese_brick = 1,
  pumpkin_cup = 2/3,
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1.5),
  brownSugar_Tbsp = 2,
  url = 'https://www.goodlifeeats.com/whipped-pumpkin-cream-cheese-and-8-ways-to-use-leftover-pumpkin/'
)


Lynn_pumpkin_creamCheeseSpread <- \() new(
  Class = 'recipe',
  alias_class = 'Spread\U1f96f', # 'Cream Cheese Spread',
  author = 'Lynn',
  creamCheese_brick = 1,
  pumpkin_cup = 1/2,
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1),
  youtube = 'OxmE0JeiWLo'
)
