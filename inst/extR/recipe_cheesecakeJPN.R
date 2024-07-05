

#' @title \linkS4class{cheesecakeJPN} Recipes
#' 
#' @description
#' ..
#' 
#' @name cheesecakeJPN
#' @aliases cheesecakeJPN-class
#' @export
setClass(Class = 'cheesecakeJPN', contains = 'recipe', prototype = prototype(
  
))


if (FALSE) {
  new(Class = 'recipe', 
      eggYolk = 6, eggWhite = 6,
      #creamCheese = 160,
      creamCheese = c(PhiladelphiaNeufchatel = 160),
      milk = 60,
      # butter = 50, # remove?
      pastryFlour = 50,
      sauce_Tbsp = c(Heinz_whiteVinegar = 1),
      # sugar = 75,
      sugar = 50,
      youtube = c('HV-vaC7nDlo')) #/ 160*227
  
  
  new(Class = 'recipe', 
      eggYolk = 3, eggWhite = 3,
      creamCheese = 160,
      milk = 60,
      butter = 35,
      pastryFlour = 25,
      sauce_tsp = c(Heinz_whiteVinegar = 5/8),
      sugar = 40,
      youtube = c('SyM3jMFjess'))
}