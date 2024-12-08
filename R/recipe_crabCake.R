

#' @title \linkS4class{crabCake} Recipe
#' 
#' @description ..
#' 
#' @examples 
#' crabCake()
#' 
#' @name crabCake
#' @aliases crabCake-class
#' @export
setClass(Class = 'crabCake', contains = 'recipe', prototype = prototype(
  alias_class = 'Crab Cake'
))

#' @rdname crabCake
#' @export
crabCake <- function() new(
  Class = 'crabCake',
  egg_pc = 2,
  sauce_tsp = c(
    Hellmanns_mayonnaise = 2.5,
    GreyPoupon_Dijon = 1.5,
    LeaPerrins_Worcestershire = 1,
    McCormick_oldBay_lowSodium = 1,
    fourC_panko = 24 # .5 cup
  ),
  seafood = c(crab_steamed = 454), # 1 pound
  vegetable = c(celeriac = 25, #  .25 cup finely diced celery, from one stalk 
                parsley = 3.84 * 2), # 2 tablespoons finely chopped fresh parsley
  url = 'https://www.onceuponachef.com/recipes/maryland-crab-cakes-with-quick-tartar-sauce.html',
  review = 'try')
