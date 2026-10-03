
#' @rdname raw_recipe
#' 
#' @examples
#' nutritionlist(
#'  cheesecake(),
#'  subtract(cooking:::PreppyKitchen_cheesecake, sugar = 125),
#'  subtract(cooking:::Junior_original, sugar = 12),
#'  subtract(cooking:::Junior_cookbook, sugar = 230),
#'  subtract(cooking:::CheesecakeFactory_original, sugar = 18)
#' )
#' 




Junior_cappuccino_cheesecake <- \() new(
  Class = 'recipe', 
  flavor = 'Cappuccino Cheesecake',
  dairy_brick = c(Philadelphia_creamCheese = 4),
  coffee_Tbsp = c(NescafeGold_blonde = 1),
  boilingWater = 15,
  sugar_cup = c(Domino_granulated = 1+2/3),
  starch_cup = c(Wegmans_corn_starch = 1/3),
  vanilla_Tbsp = c(NielsenMassey_Madagascar = 1),
  egg_pc = c(eggYolk = 2/3.25*4, eggWhite = 2/3.25*4), # 2 extra-large eggs  https://en.wikipedia.org/wiki/Chicken_egg_sizes
  dairy_cup = c(Wegmans_heavyCream = 3/4),
  cocoa_Tbsp = c(KingArthur_Bensdorp = 1),
  juniorscheesecakecookbook = 42L)


PreppyKitchen_cheesecake <- \() new(
  Class = 'recipe', flavor = 'Cheesecake',
  dairy_brick = c(Philadelphia_creamCheese = 3),
  sugar = 200,
  salt_tsp = 1/4,
  vanilla_tsp = c(NielsenMassey_Madagascar = 2),
  egg_pc = c(eggYolk = 3, eggWhite = 3),
  dairy_cup = c(Daisy_sourCream = 1/2),
  preppykitchen = c('ZYoYffXWiwk' = 'cheesecake-recipe'))




Junior_cookbook <- \() new(
  Class = 'recipe', 
  juniorscheesecakecookbook = 34L,
  flavor = 'Original',
  dairy_brick = c(Philadelphia_creamCheese = 4),
  sugar_cup = c(Domino_granulated = 1+2/3), 
  starch_cup = c(Wegmans_corn_starch = 1/4),
  vanilla_Tbsp = c(NielsenMassey_Madagascar = 1),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  dairy_cup = c(Byrne_heavyCream = 3/4),
  youtube = 'dUtq2hETohc' # see 1:00, brand of heavy cream
)


CheesecakeFactory_original <- \() new(
  Class = 'nutrition',  
  name = 'Original',
  cheesecakefactoryfreezer = 'original-cheesecake', cheesecakefactorybakery = 'original-dome',
  target = 'A-15382641', usd = 18.39/964*120,
  servingGram = 120, 
  fat = 24, cholesterol = .105, sodium = .33, sugar = 28, addedSugar = 27, protein = 6)





PreppyKitchen_chocolate_cheesecake <- \() new(
  Class = 'recipe', flavor = 'Cheesecake',
  # 1/4 cup coffee hot ???
  # 1 cup bittersweet chocolate ???
  # 3/4 cup semisweet chocolate ???
  # 1 pinch salt ???
  dairy_brick = c(Philadelphia_creamCheese = 3),
  flour_Tbsp = c(KingArthur_allPurposeFlr = 3),
  sugar = 200,
  vanilla_Tbsp = c(NielsenMassey_Madagascar = 1),
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  dairy_cup = c(Daisy_sourCream = 1/4),
  preppykitchen = c('b5Hpv2FE22Q' = 'chocolate-cheesecake'))







