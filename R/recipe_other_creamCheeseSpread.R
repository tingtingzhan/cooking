
#' @title Other People's Cream Cheese Spread
#' 
#' @examples
#' diagnose(
#'  pumpkin_creamCheeseSpread,
#'  GoodLifeEats_pumpkin_creamCheeseSpread,
#'  Lynn_pumpkin_creamCheeseSpread
#' )
#' @keywords internal
#' @name creamCheeseSpread_other
#' @export
GoodLifeEats_pumpkin_creamCheeseSpread <- function() new(
  Class = 'recipe',
  alias_class = 'Spread\U1f96f', # 'Cream Cheese Spread',
  author = 'Good Life Eats',
  creamCheese_brick = 1,
  pumpkin_cup = 2/3,
  pumpkinSpice_tsp = 1.5,
  brownSugar_Tbsp = 2,
  url = 'https://www.goodlifeeats.com/whipped-pumpkin-cream-cheese-and-8-ways-to-use-leftover-pumpkin/'
)


#' @rdname creamCheeseSpread_other
#' @export
Lynn_pumpkin_creamCheeseSpread <- function() new(
  Class = 'recipe',
  alias_class = 'Spread\U1f96f', # 'Cream Cheese Spread',
  author = 'Lynn',
  creamCheese_brick = 1,
  pumpkin_cup = 1/2,
  pumpkinSpice_tsp = 1,
  youtube = 'OxmE0JeiWLo'
)
