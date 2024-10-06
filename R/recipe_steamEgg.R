

#' @title \linkS4class{pudding} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' pudding()
#' 
#' diagnose_(
#'  pudding,
#'  shangshi_pudding
#' )
#' 
#' @name pudding
#' @aliases pudding-class
#' @export
setClass(Class = 'pudding', contains = 'recipe', prototype = prototype(
  alias_class = '\u725b\u5976\u84b8\u86cb',
  egg_pc = 1,
  drymilk = 12,
  water = 100,
  heavyCream = 20,
  RobamCT763 = RobamCT763(program = 'Steam', fahrenheit = 210, minute = 10)
))


  
#' @rdname pudding
#' @export
pudding <- function() new(Class = 'pudding')


steamEgg_OLD <- function() new(
  Class = 'pudding',
  egg_pc = 1,
  water = 120,
  drymilk = 30, #tiny little too strong, and too dry
  review = 'Nice!  A good base')


#' @rdname pudding
#' @export
shangshi_pudding <- function() new(
  Class = 'recipe', alias_flavor = 'pudding', 
  shangshikitchen = 'Nqz-K0TDL5s',
  # 4 croissants 可颂面包
  milk = 720, # 3 cups 
  sugar = 75, # 1/3 cup
  heavyCream_cup = 1,
  egg_pc = 5#, 
  #200g walnuts 核桃仁
  #120g raisins 葡萄干
)




#' @title \linkS4class{steamEggWhite} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' chicken_steamEggWhite()
#' 
#' @name steamEggWhite
#' @aliases steamEggWhite-class
#' @export
setClass(Class = 'steamEggWhite', contains = 'recipe', prototype = prototype(
  eggWhite_pc = 6,
  water = 100,
  instruction = 'Robam CT763, Steam, 210\u00b0F/20min',
  youtube = 'ngoFu0XNv24'
))



#' @rdname steamEggWhite
#' @export
chicken_steamEggWhite <- function() new(
  Class = 'steamEggWhite',
  eggWhite_pc = 6,
  water = 100,
  flavor = c(LeeKumKee_chickenBouillon = 1.5),
  review = 'try'
)



chicken_steamEggWhite_old <- function() new(
  Class = 'steamEggWhite',
  eggWhite_pc = 6,
  water = 150,
  flavor = c(LeeKumKee_chickenBouillon = 5),
  review = 'too salty, too much water'
)
