

# not sure if I want to try this.. 
# too much sugar, no dairy
# I prefer dairy over sugar

#' @title \linkS4class{meringue}
#' 
#' @description
#' ..
#' 
#' @name meringue
#' @aliases meringue-class
#' @export
setClass(Class = 'meringue', contains = 'recipe', prototype = prototype(
  alias_class = '\u86cb\u767d\u7cd6',
  eggWhite = 4, 
  sugar = 200,
  # salt_tsp = 1/8, # try without
  # 1 tsp vanilla
  creamTartar_tsp = 1/4
  #url = c(
  #  'sugarspunrun.com/meringue-cookie-recipe/',
  #  'www.reddit.com/r/AskBaking/comments/szbdlm/reduced_sugar_meringue_cookies_mini_pavlova/'
  #),
  
))

# preppykitchen = c('lMpGRNv0Mm4' = 'meringue-cookies')


