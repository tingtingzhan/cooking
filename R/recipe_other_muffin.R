

#' @title Other People's Muffin Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' #muffin()
#' nutritionlist(
#'  subtract(Brody_muffin, sugar = 237),
#'  subtract(Introvert_muffin, sugar = 50),
#'  subtract(CulinaryHill_muffin, sugar = 155),
#'  subtract(Lori_muffin, sugar = 110))
#' 
#' 
#' @name muffin_other
NULL

muffin_tmp <- \() new(
  Class = 'recipe', 
  alias = 'Muffin',
  portion = c('Trudeau 12-cup muffin' = 80),
  flour = c(Wegmans_pastryFlr = 270),
  sugar = 62,
  dairy_cup = c(MembersMark_yogurtGreek = 1),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  oil = c(Wegmans_vegetable_oil = 90),
  water = 100, # 140g, from Brody's milk
  bakingPowder_tsp = 2.25, # try next
  # note (legacy) = 'Steam Bake, 300F/25min', # next time
  vanilla_tsp = c(NielsenMassey_Madagascar = 1))


#' @rdname muffin_other
#' @export
Brody_muffin <- \() new(
  Class = 'recipe', author = 'Brody', flavor = 'Muffin', 
  sugar = 300,
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  oil = c(Wegmans_vegetable_oil = 224), # 1 cup, original
  dairy_cup = c(
    SimpleTruth_yogurt = 1,
    Wegmans_whole_milk = 2/3
  ), 
  vanilla_tsp = c(NielsenMassey_Madagascar = 2), # original
  flour_cup = c(KingArthur_allPurposeFlr = 2.25),
  bakingPowder_tsp = 2.5, # original
  salt_tsp = .5)


#' @rdname muffin_other
#' @export
Introvert_muffin <- \() new(
  Class = 'recipe', author = 'Introvert', flavor = 'Muffin', 
  url = 'https://www.bakedbyanintrovert.com/basic-muffin-recipe/',
  flour_cup = c(KingArthur_allPurposeFlr = 2),
  sugar = 100,
  bakingPowder_tsp = 2,
  salt_tsp = .5,
  dairy_cup = c(Kerrygold_butter = 1/2,
                Wegmans_whole_milk = .75),
  egg_pc = c(eggYolk = 2, eggWhite = 2))


#' @rdname muffin_other
#' @export
CulinaryHill_muffin <- \() new(
  Class = 'recipe', author = 'Culinary Hill', flavor = 'Muffin', 
  url = 'https://www.culinaryhill.com/blueberry-muffins/',
  flour = c(KingArthur_allPurposeFlr = 240),
  sugar = 200,
  bakingPowder_tsp = 2,
  salt_tsp = 1/2,
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  dairy_cup = c(Kerrygold_butter = 1/2,
                Wegmans_whole_milk = .5),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1))


#' @rdname muffin_other
#' @export
Lori_muffin <- \() new(
  Class = 'recipe', author = 'Lori', flavor = 'Muffin', allrecipes = '6874/best-ever-muffins/',
  flour = c(KingArthur_allPurposeFlr = 240), 
  bakingPowder_Tbsp = 1,
  salt_tsp = 1/2,
  sugar = 150, 
  egg_pc = c(eggYolk = 1, eggWhite = 1),
  dairy_cup = c(Wegmans_whole_milk = 1),
  oil = c(Wegmans_vegetable_oil = 224/4))



Sallys_pumpkin_muffin <- \() new(
  Class = 'recipe', author = 'Sally\'s', flavor = 'Pumpkin Muffin',
  url = 'https://sallysbakingaddiction.com/pumpkin-muffins-recipe/',
  flour_cup = c(KingArthur_allPurposeFlr = 1.75),
  NaHCO3_tsp = 1,
  spice_tsp = c(
    SimplyOrganic_ginger = 1/4,
    SimplyOrganic_cinnamonCeylon = 1.5,
    SimplyOrganic_pumpkinSpice = 1.5
  ),
  salt_tsp = 1/2,
  oil_cup = c(Wegmans_vegetable_oil = 1/2),
  sugar_cup = c(Domino_granulated = 1/2, Domino_darkBrown = 1/2),
  puree = c(Libbys_pumpkin = 340),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  dairy_cup = c(Wegmans_whole_milk = 1/4)
)

if (FALSE) {
  nutritionlist(
    cooking:::Sallys_pumpkin_muffin(), 
    cooking:::Sallys_pumpkin_cake())
}

