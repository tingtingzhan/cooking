

#' @title \linkS4class{muffin} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' muffin()
#' diagnose_(
#'  muffin,
#'  subtract(Brody_muffin, sugar = 237),
#'  subtract(Introvert_muffin, sugar = 50),
#'  subtract(CulinaryHill_muffin, sugar = 155),
#'  subtract(Lori_muffin, sugar = 110))
#' 
#' 
#' @name muffin
#' @aliases muffin-class
#' @export 
setClass(Class = 'muffin', contains = 'recipe', prototype = prototype(
  alias_class = 'Muffin',
  portion = c('Trudeau 12-cup muffin' = 80),
  pastryFlour = 270,
  sugar = 62,
  yogurtGreek = c(MembersMark = 170 / (3/4)), # 1 cup yogurt
  egg_pc = 2,
  oil = c(Wegmans_vegetable = 90),
  water = 100, # 140g, from Brody's milk
  bakingPowder_tsp = 2.25, # try next
  note = 'Steam Bake, 300F/25min' # next time
))

#' @rdname muffin
#' @export
muffin <- function() new(Class = 'muffin', vanilla_tsp = 1)


#' @rdname muffin
#' @export
Brody_muffin <- function() new(
  Class = 'recipe', author = 'Brody', alias_flavor = 'Muffin', 
  sugar = 300,
  egg_pc = 2,
  oil = c(Wegmans_vegetable = 224), # 1 cup, original
  milk = 240 * 2/3, water = numeric(), # original (2/3 cup milk, with all-purpose flour)
  yogurt = 170 / (2/3), # 1 cup yogurt
  vanilla_tsp = 2, # original
  pastryFlour = numeric(), flour = 270, # 2.25 cup
  bakingPowder_tsp = 2.5, # original
  salt_tsp = .5)


#' @rdname muffin
#' @export
Introvert_muffin = function() new(
  Class = 'recipe', author = 'Introvert', alias_flavor = 'Muffin', url = 'www.bakedbyanintrovert.com/basic-muffin-recipe/',
  flour = 260, # author wrote 2 cup
  sugar = 100,
  bakingPowder_tsp = 2,
  salt_tsp = .5,
  milk = 180,
  butter = 113.5,
  egg_pc = 2)


#' @rdname muffin
#' @export
CulinaryHill_muffin <- function() new(
  Class = 'recipe', author = 'Culinary Hill', alias_flavor = 'Muffin', url = 'www.culinaryhill.com/blueberry-muffins/',
  flour = 240,
  sugar = 200,
  bakingPowder_tsp = 2,
  salt_tsp = 1/2,
  egg_pc = 2,
  butter = 113.5,
  milk = 120,
  vanilla_tsp = 1)


#' @rdname muffin
#' @export
Lori_muffin <- function() new(
  Class = 'recipe', author = 'Lori', alias_flavor = 'Muffin', allrecipes = '6874/best-ever-muffins/',
  flour = 240, 
  bakingPowder_Tbsp = 1,
  salt_tsp = 1/2,
  sugar = 150, 
  egg_pc = 1,
  milk = 240,
  oil = c(Wegmans_vegetable = 224/4))
