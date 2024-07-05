

#' @title \linkS4class{pancakeMix} Recipes
#' 
#' @description ..
#' 
#' @details 
#' Boxed pancake & waffle mix require using of buttermilk, 
#' otherwise would have a strong alkaline after taste.
#' And they are super expensive! 
#' 
#' @examples 
#' pancakeMix()
#' 
#' @name pancakeMix
#' @aliases pancakeMix-class
#' @export
setClass(Class = 'pancakeMix', contains = 'recipe')

#' @rdname pancakeMix
#' @export
pancakeMix <- function() new(
  Class = 'pancakeMix', 
  flavor = c(CountryTime_Lemonade = 12), 
  sugar = 7, 
  flour = c(KingArthur_selfRising = 120, DaoXiangCun_corn = 50),
  drymilk = 20)
# 1/4 tsp clove + 1/4 tsp cinnamon: nice!
# weigh next time making `pancakeMix`
# https://www.allrecipes.com/recipe/20476/pumpkin-spice/



#' @title \linkS4class{pancake} Recipes
#' 
#' @description
#' \linkS4class{pancake} is different from \linkS4class{crepe} because of the use baking soda and acid.
#' 
#' @examples 
#' pancake()
#' eggWhite_pancake()
#' 
#' @name pancake
#' @aliases pancake-class
#' @export
setClass(Class = 'pancake', contains = 'recipe', prototype = prototype(
  pancakeMix()/2,
  eggYolk = 1, eggWhite = 1,
  portion = 80
))

#' @rdname pancake
#' @export
pancake <- function() new(Class = 'pancake', water = 80, review = 'Nice!')




#' @rdname pancake
#' @export
eggWhite_pancake <- function() new(
  Class = 'pancake', eggWhite = 4, eggYolk = numeric(), butter = 8, review = 'retry')

  







#' @title \linkS4class{waffle} Recipes
#' 
#' @description
#' \linkS4class{waffle} is different from \linkS4class{pancake} because it contains less water
#' 
#' @examples 
#' 1+1
#' 
#' @name waffle
#' @aliases waffle-class
#' @export
setClass(Class = 'waffle', contains = 'recipe')


#' @name waffle
#' @export
waffle <- function() new(Class = 'waffle', pancake(), water = 70)



