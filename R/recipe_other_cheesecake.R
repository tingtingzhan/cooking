
#' @title Other Peoples Cheesecake
#' 
#' @description
#' ..
#' 
#' 
#' @examples
#' diagnose(
#'  cheesecake(),
#'  subtract(PreppyKitchen_cheesecake, sugar = 125),
#'  subtract(Junior_original, sugar = 12),
#'  subtract(Junior_cookbook, sugar = 230),
#'  subtract(CheesecakeFactory_original, sugar = 18)
#' )
#' @keywords internal
#' @name cheesecake_other
NULL



#' @rdname cheesecake_other
#' @export
Junior_cappuccino_cheesecake <- function() new(
  Class = 'recipe', 
  alias_flavor = 'Cappuccino Cheesecake',
  creamCheese_brick = c(Philadelphia = 4),
  coffee_Tbsp = 1,
  boilingWater = 15,
  sugar_cup = c(Domino_granulated = 1+2/3),
  starch_cup = c(Wegmans_corn = 1/3),
  vanilla_Tbsp = 1,
  egg_pc = 2,
  heavyCream_cup = 3/4,
  juniorscheesecakecookbook = 42L)


#' @rdname cheesecake_other
#' @export
PreppyKitchen_cheesecake <- function() new(
  Class = 'recipe', alias_flavor = 'Cheesecake',
  creamCheese_brick = c(Philadelphia = 3),
  sugar = 200,
  salt_tsp = 1/4,
  vanilla_tsp = 2,
  egg_pc = 3,
  sourCream_cup = 1/2,
  preppykitchen = c('ZYoYffXWiwk' = 'cheesecake-recipe'))




#' @rdname cheesecake_other
#' @export
Junior_original <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 81705L, usd = 13.89/5,
  juniorscheesecake = 'original-ny-plain-cheesecake',
  name = 'Original Cheesecake',
  servingGram = 136, 
  calorie = 460,
  fat = 33, cholesterol = .135, sodium = .38, carbohydrate = 30, sugar = 24, addedSugar = 22, protein = 7)


#' @rdname cheesecake
#' @export
Junior_cookbook <- function() new(
  Class = 'recipe', 
  juniorscheesecakecookbook = 34L,
  alias_flavor = 'Original',
  creamCheese_brick = c(Philadelphia = 4),
  sugar_cup = c(Domino_granulated = 1+2/3), 
  starch_cup = c(Wegmans_corn = 1/4),
  vanilla_Tbsp = 1,
  egg_pc = 2,
  heavyCream_cup = c(Byrne = 3/4) # see 1:00 of https://youtu.be/dUtq2hETohc
)

#' @rdname cheesecake_other
#' @export
CheesecakeFactory_original <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = 'Original',
  cheesecakefactoryfreezer = 'original-cheesecake', cheesecakefactorybakery = 'original-dome',
  target = 'A-15382641', usd = 18.39/964*120,
  servingGram = 120, 
  fat = 24, cholesterol = .105, sodium = .33, sugar = 28, addedSugar = 27, protein = 6)


#' @rdname cheesecake_other
#' @export
Junior_strawberrySwirl <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], wegmans = 23187893L,
  brand = 'Junior\'s', name = 'Strawberry Swirl New York Cheesecake',
  servingGram = 136, fat = 28, cholesterol = .11, sodium = .33, sugar = 29, protein = 6)











