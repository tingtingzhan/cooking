


#' @rdname raw_recipe
#' 
#' @examples
#' diagnose(
#'  subtract(cooking:::pumpkin_creamCheeseDip_bakethat, sugar = 135),
#'  subtract(cooking:::pumpkin_creamCheeseDip_Julie, sugar = 180)
#' )



pumpkin_creamCheeseDip_bakethat <- \() new(
  Class = 'recipe',
  author = 'Bake That!',
  creamCheese_brick = 1,
  sugar_cup = c(Domino_10x = 1.5),
  pumpkin = 425, # 15 oz
  vanilla_tsp = 1,
  spice_Tbsp = c(SimplyOrganic_pumpkinSpice = 1/2),
  spice_tsp = c(SimplyOrganic_cinnamonCeylon = 1/2),
  youtube = 'G87HfZjdDwI'
)


pumpkin_creamCheeseDip_Julie <- \() new(
  Class = 'recipe',
  julieseatsandtreats = c('ktyuI7JHQ_Q' = 'sweet-pumpkin-dip'),
  creamCheese_brick = 2,
  pumpkin = 425, # 15 oz
  sugar_cup = c(Domino_10x = 2),
  spice_tsp = c(
    SimplyOrganic_ginger = 1,
    SimplyOrganic_cinnamonCeylon = 2
  )
)
