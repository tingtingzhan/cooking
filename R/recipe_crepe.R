

#' @title \linkS4class{crepe} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' 
#' crepe() / 2
#' 
#' diagnose(
#'  jennyc819_crepe,
#'  Carina_crepe,
#'  Aya_crepe,
#'  Daat_crepe,
#'  crepe,
#'  Natasha_crepe,
#'  cyberchef_crepeFrench
#' )
#' 
#' 
#' @name crepe
#' @aliases crepe-class
#' @export
setClass(Class = 'crepe', contains = 'recipe', prototype = prototype(
  alias_class = 'Cre\u0302pe',
  breadFlour = 100, # using bread flour is still not strong enough
  egg_pc = 2,
  drymilk = c(Carnation = 11.5),
  
  heavyCream = 90, water = 130*2, 
  # water 3.90, fat 39.3%, try!!
  
  #heavyCream = 85, water = 126*2, 
  # water 3.80, fat 37.6%
  # far too dry
  
  #heavyCream = 85, water = (126+11)*2, 
  # water 4.02, fat 37.6%
  # a little too wet (does not pool to a round shape)
  # fat too less (sticks to pan)
  
  waterLost = 200
))


#' @rdname crepe
#' @export
crepe <- function() new(Class = 'crepe', review = 'try')


#' @rdname crepe
#' @export
jennyc819_crepe <- function() new(
  Class = 'recipe', author = 'jennyc819', alias_flavor = 'Crepe',
  allrecipes = '16383/basic-crepes/',
  flour_cup = 1,
  egg_pc = 2,
  milk_cup = 1/2,
  water_cup = 1/2, 
  salt_tsp = 1/4,
  butter_Tbsp = 2)


#' @rdname crepe
#' @export
cyberchef_crepeFrench <- function() new(
  Class = 'recipe', author = 'cyberchef', alias_flavor = 'French Crepe',
  allrecipes = '20931/french-crepes/',
  flour_cup = 1,
  egg_pc = 3, # yes
  milk_cup = 2,
  sugar_tsp = 1,
  salt_tsp = 1/4,
  butter_Tbsp = 2
)


#' @rdname crepe
#' @export
Carina_crepe <- function() new(
  Class = 'recipe', author = 'Carina', alias_flavor = 'Crepe',
  youtube = 'bX6ghyT6Ig0',
  flour_cup = 1,
  egg_pc = 2,
  salt_tsp = 1/2,
  milk_cup = 1.25,
  butter_Tbsp = 2
)


#' @rdname crepe
#' @export
Aya_crepe <- function() new(
  Class = 'recipe', author = 'Aya', alias_flavor = 'Crepe',
  youtube = 'FfGjDceNRVo',
  flour = 150, 
  sugar = 50, 
  salt_tsp = 1/2,
  egg_pc = 4,
  butter = 50,
  milk_cup = 2
  # Dark rum: 1 Tbsp (or 2 Tbsp if you love it!)
)

#' @rdname crepe
#' @export
Natasha_crepe <- function() new(
  Class = 'recipe', 
  natashaskitchen = c('uA4KRfE_MNM' = 'easy-crepe-recipe'), 
  alias_flavor = 'Crepe',
  water = 118.3,  # ½ cup lukewarm water
  milk_cup = 1,
  egg_pc = 4,
  butter_Tbsp = 4,
  flour_cup = 1,
  sugar_Tbsp = 2,
  salt_tsp = 1/2)


#' @rdname crepe
#' @export
Daat_crepe <- function() new(
  Class = 'recipe', alias_flavor = 'crepe',
  flour = 230,
  egg_pc = 3,
  milk = 300, # in grams in original recipe
  water = 500,
  butter = 15,
  salt = 5,
  sugar = 10,
  daatgo = '0jxG7FEdyRA')
