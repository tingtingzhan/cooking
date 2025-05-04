

#' @title Other People's Muffin Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' #muffin()
#' diagnose(
#'  subtract(Brody_muffin, sugar = 237),
#'  subtract(Introvert_muffin, sugar = 50),
#'  subtract(CulinaryHill_muffin, sugar = 155),
#'  subtract(Lori_muffin, sugar = 110))
#' 
#' 
#' @name muffin_other
NULL

muffin_tmp <- function() new(
  Class = 'recipe', 
  alias = 'Muffin',
  portion = c('Trudeau 12-cup muffin' = 80),
  pastryFlour = 270,
  sugar = 62,
  yogurtGreek = c(MembersMark = 170 / (3/4)), # 1 cup yogurt
  egg_pc = 2,
  oil = c(Wegmans_vegetable = 90),
  water = 100, # 140g, from Brody's milk
  bakingPowder_tsp = 2.25, # try next
  note = 'Steam Bake, 300F/25min', # next time
  vanilla_tsp = 1)


#' @rdname muffin_other
#' @export
Brody_muffin <- function() new(
  Class = 'recipe', author = 'Brody', alias_flavor = 'Muffin', 
  sugar = 300,
  egg_pc = 2,
  oil = c(Wegmans_vegetable = 224), # 1 cup, original
  milk_cup = 2/3, 
  yogurt_cup = c(SimpleTruth = 1),
  vanilla_tsp = 2, # original
  flour_cup = 2.25,
  bakingPowder_tsp = 2.5, # original
  salt_tsp = .5)


#' @rdname muffin_other
#' @export
Introvert_muffin <- function() new(
  Class = 'recipe', author = 'Introvert', alias_flavor = 'Muffin', 
  url = 'https://www.bakedbyanintrovert.com/basic-muffin-recipe/',
  flour_cup = 2,
  sugar = 100,
  bakingPowder_tsp = 2,
  salt_tsp = .5,
  milk_cup = .75,
  butter_cup = 1/2,
  egg_pc = 2)


#' @rdname muffin_other
#' @export
CulinaryHill_muffin <- function() new(
  Class = 'recipe', author = 'Culinary Hill', alias_flavor = 'Muffin', 
  url = 'https://www.culinaryhill.com/blueberry-muffins/',
  flour = 240,
  sugar = 200,
  bakingPowder_tsp = 2,
  salt_tsp = 1/2,
  egg_pc = 2,
  butter_cup = 1/2,
  milk_cup = .5,
  vanilla_tsp = 1)


#' @rdname muffin_other
#' @export
Lori_muffin <- function() new(
  Class = 'recipe', author = 'Lori', alias_flavor = 'Muffin', allrecipes = '6874/best-ever-muffins/',
  flour = 240, 
  bakingPowder_Tbsp = 1,
  salt_tsp = 1/2,
  sugar = 150, 
  egg_pc = 1,
  milk_cup = 1,
  oil = c(Wegmans_vegetable = 224/4))



Sallys_pumpkin_muffin <- function() new(
  Class = 'recipe', author = 'Sally\'s', alias_flavor = 'Pumpkin Muffin',
  url = 'https://sallysbakingaddiction.com/pumpkin-muffins-recipe/',
  flour_cup = 1.75,
  NaHCO3_tsp = 1,
  cinnamon_tsp = 1.5,
  pumpkinSpice_tsp = 1.5,
  ginger_tsp = 1/4,
  salt_tsp = 1/2,
  oil_cup = c(Wegmans_vegetable = 1/2),
  sugar_cup = c(Domino_granulated = 1/2, Domino_darkBrown = 1/2),
  pumpkin = 340,
  egg_pc = 2,
  milk_cup = 1/4
)

if (FALSE) {
  diagnose(Sallys_pumpkin_muffin, Sallys_pumpkin_cake)
}

