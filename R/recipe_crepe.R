

#' @title \linkS4class{crepe} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' 
#' crepe() / 2
#' 
#' nutritionlist(
#'  jennyc819_crepe(),
#'  Carina_crepe(),
#'  Aya_crepe(),
#'  Daat_crepe(),
#'  crepe(),
#'  Natasha_crepe(),
#'  cyberchef_crepeFrench()
#' )
#' 
#' 
#' @name crepe-class
#' @export
setClass(Class = 'crepe', contains = 'recipe', prototype = prototype(
  class2 = 'Cre\u0302pe',
  flour = c(Wegmans_breadFlr = 100), # using bread flour is still not strong enough
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  dairy = c(
    Wegmans_heavyCream = 90,
    Carnation_drymilk = 11.5
  ),
  water = 130*2#, 
  # water 3.90, fat 39.3%, try!!
  
  #Wegmans_heavyCream = 85, water = 126*2, 
  # water 3.80, fat 37.6%
  # far too dry
  
  #Wegmans_heavyCream = 85, water = (126+11)*2, 
  # water 4.02, fat 37.6%
  # a little too wet (does not pool to a round shape)
  # fat too less (sticks to pan)
  
  #waterLost = 200
))


#' @rdname crepe-class
#' @export
crepe <- \() new(Class = 'crepe', review = 'try')


#' @rdname crepe-class
#' @export
jennyc819_crepe <- \() new(
  Class = 'recipe', author = 'jennyc819', flavor = 'Crepe',
  allrecipes = '16383/basic-crepes/',
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  dairy_cup = c(Wegmans_whole_milk = 1/2),
  water_cup = 1/2, 
  salt_tsp = 1/4,
  dairy_Tbsp = c(Kerrygold_butter = 2))


#' @rdname crepe-class
#' @export
cyberchef_crepeFrench <- \() new(
  Class = 'recipe', author = 'cyberchef', flavor = 'French Crepe',
  allrecipes = '20931/french-crepes/',
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  egg_pc = c(eggYolk = 3, eggWhite = 3), # yes
  dairy_cup = c(Wegmans_whole_milk = 2),
  sugar_tsp = 1,
  salt_tsp = 1/4,
  dairy_Tbsp = c(Kerrygold_butter = 2)
)


#' @rdname crepe-class
#' @export
Carina_crepe <- \() new(
  Class = 'recipe', author = 'Carina', flavor = 'Crepe',
  youtube = 'bX6ghyT6Ig0',
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  egg_pc = c(eggYolk = 2, eggWhite = 2),
  salt_tsp = 1/2,
  dairy_cup = c(Wegmans_whole_milk = 1.25),
  dairy_Tbsp = c(Kerrygold_butter = 2)
)


#' @rdname crepe-class
#' @export
Aya_crepe <- \() new(
  Class = 'recipe', author = 'Aya', flavor = 'Crepe',
  youtube = 'FfGjDceNRVo',
  flour = c(KingArthur_allPurposeFlr = 150), 
  sugar = 50, 
  salt_tsp = 1/2,
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  dairy = c(Kerrygold_butter = 50),
  dairy_cup = c(Wegmans_whole_milk = 2)
  # Dark rum: 1 Tbsp (or 2 Tbsp if you love it!)
)

#' @rdname crepe-class
#' @export
Natasha_crepe <- \() new(
  Class = 'recipe', 
  natashaskitchen = c('uA4KRfE_MNM' = 'easy-crepe-recipe'), 
  flavor = 'Crepe',
  water = 118.3,  # ½ cup lukewarm water
  dairy_cup = c(Wegmans_whole_milk = 1),
  egg_pc = c(eggYolk = 4, eggWhite = 4),
  dairy_Tbsp = c(Kerrygold_butter = 4),
  flour_cup = c(KingArthur_allPurposeFlr = 1),
  sugar_Tbsp = 2,
  salt_tsp = 1/2)


#' @rdname crepe-class
#' @export
Daat_crepe <- \() new(
  Class = 'recipe', flavor = 'crepe',
  flour = c(KingArthur_allPurposeFlr = 230),
  egg_pc = c(eggYolk = 3, eggWhite = 3),
  dairy = c(Kerrygold_butter = 15,
            WegmansOrganic_whole_milk = 300), # in grams in original recipe
  water = 500,
  salt = 5,
  sugar = 10,
  daatgo = '0jxG7FEdyRA')
