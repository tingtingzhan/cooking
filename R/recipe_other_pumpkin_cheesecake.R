
#' @title Other Peoples Pumpkin Cheesecake
#' 
#' @description
#' ..
#' 
#' 
#' @examples
#' diagnose(
#'  pumpkin_cheesecake,
#'  subtract(Junior_pumpkin_cheesecake, sugar = 170),
#'  subtract(Natasha_pumpkin_cheesecake, brownSugar = 230),
#'  subtract(PreppyKitchen_pumpkin_cheesecake, sugar = 140),
#'  subtract(CheesecakeFactory_pumpkin, sugar = 12)
#' )
#' @keywords internal
#' @name pumpkinCheesecake_other
NULL



#' @rdname pumpkinCheesecake_other
#' @export
Natasha_pumpkin_cheesecake <- function() new(
  Class = 'recipe', 
  natashaskitchen = 'pumpkin-cheesecake-recipe',
  alias_class = 'Cheesecake',
  creamCheese_brick = c(Philadelphia = 3),
  brownSugar = c(Domino_lightBrown = 288), # 1 1/2 cups packed light brown sugar
  pumpkinPieMix = 425, # 15 oz; original. contains 20.7% sugar 
  flour_Tbsp = 2, 
  egg_pc = 4,
  sourCream_cup = 1/4,
  salt_tsp = 1/4,
  vanilla_Tbsp = 1,
  pumpkinSpice_tsp = 2)



#' @rdname pumpkinCheesecake_other
#' @export
Junior_pumpkin_cheesecake <- function() new(
  Class = 'recipe', 
  creamCheese_brick = c(Philadelphia = 4),
  sugar_cup = c(Domino_granulated = 1+2/3),
  starch_cup = c(Wegmans_corn = 1/4),
  vanilla_Tbsp = 1,
  egg_pc = 2,
  heavyCream_cup = 3/4,
  pumpkin_cup = 1,
  pumpkinSpice_tsp = 1,
  juniorscheesecakecookbook = 45L
)


#' @rdname pumpkinCheesecake_other
#' @export
PreppyKitchen_pumpkin_cheesecake <- function() new(
  Class = 'recipe', 
  alias_class = 'Cheesecake',
  creamCheese_brick = c(Philadelphia = 3),
  sugar = 150,
  brownSugar = 115,
  salt_tsp = 1/2,
  egg_pc = 4,
  pumpkin = 244,
  sourCream_cup = 1/2,
  vanilla_tsp = 2,
  flour_Tbsp = 2,
  pumpkinSpice_tsp = 1.5,
  preppykitchen = c('JwmhZP9vRWM' = 'pumpkin-swirl-cheesecake'))



#' @rdname pumpkinCheesecake_other
#' @export
Wegmans_pumpkin_cheesecake <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 18074L,
  name = 'Pumpkin\U1f383 Cheesecake',
  usd = .62/28.3495 * 130, # 0.62/oz
  servingGram = 130,
  calorie = 460,
  fat = 29, cholesterol = .115, sodium = .33,
  carbohydrate = 47, sugar = 27, addedSugar = 18, protein = 6)


#' @rdname pumpkinCheesecake_other
#' @export
CheesecakeFactory_pumpkin <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Pumpkin\U1f383',
  cheesecakefactoryfreezer = 'pumpkin-cheesecake',
  bjs = 'the-cheesecake-factory-at-home-6-pumpkin-cheesecake/3000000000003370251', 
  usd = 16.99/6, # 6 serving's per container
  servingGram = 123, 
  fat = 25, cholesterol = .105, sodium = .26, sugar = 25, addedSugar = 23, protein = 5)


#' @rdname pumpkinCheesecake_other
#' @export
BrianLagerstrom_burntBasque <- function() new(
  Class = 'recipe',
  alias_flavor = 'Burnt Basque Cheesecake',
  author = 'Brian Lagerstrom', youtube = 'eW-nF1xEFSA',
  creamCheese = c(Philadelphia = 800),
  cheese = c(Wegmans_goat = 225),
  sugar = c(Domino_granulated = 350),
  egg_pc = 5,
  salt = 5,
  heavyCream = 500,
  flour = 50)  

