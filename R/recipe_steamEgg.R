

#' @title \linkS4class{pudding} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' pudding()
#' 
#' nutritionlist(
#'  pudding(),
#'  shangshi_pudding()
#' )
#' 
#' @name pudding-class
#' @export
setClass(Class = 'pudding', contains = 'recipe', prototype = prototype(
  class2 = '\u725b\u5976\u84b8\u86cb',
  egg_pc = c(eggYolk = 1, eggWhite = 1),
  dairy = c(Carnation_drymilk = 12),
  water = 100,
  dairy = c(Wegmans_heavyCream = 20),
  tool = list(RobamCT763(program = 'Steam', fahrenheit = 210, minute = 10))
))


  
#' @rdname pudding-class
#' @export
pudding <- \() new(Class = 'pudding')


steamEgg_OLD <- \() new(
  Class = 'pudding',
  egg_pc = c(eggYolk = 1, eggWhite = 1),
  water = 120,
  dairy = c(Carnation_drymilk = 30), #tiny little too strong, and too dry
  review = 'Nice!  A good base')


#' @rdname pudding-class
#' @export
shangshi_pudding <- \() new(
  Class = 'recipe', flavor = 'pudding', 
  shangshikitchen = 'Nqz-K0TDL5s',
  # 4 croissants 可颂面包
  dairy_cup = c(Wegmans_heavyCream = 1,
                WegmansOrganic_whole_milk = 3),
  sugar = 75, # 1/3 cup
  egg_pc = c(eggYolk = 5, eggWhite = 5)#, 
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
#' @name steamEggWhite-class
#' @export
setClass(Class = 'steamEggWhite', contains = 'recipe', prototype = prototype(
  egg_pc = c(eggWhite = 6),
  water = 100,
  tool = list(RobamCT763(
    program = 'Steam', fahrenheit = 210, minute = 20
  )),
  youtube = 'ngoFu0XNv24'
))



#' @rdname steamEggWhite-class
#' @export
chicken_steamEggWhite <- \() new(
  Class = 'steamEggWhite',
  egg_pc = c(eggWhite = 6),
  water = 100,
  misc = c(LeeKumKee_chickenBouillon = 1.5),
  review = 'try'
)



chicken_steamEggWhite_old <- \() new(
  Class = 'steamEggWhite',
  egg_pc = c(eggWhite = 6),
  water = 150,
  misc = c(LeeKumKee_chickenBouillon = 5),
  review = 'too salty, too much water'
)
