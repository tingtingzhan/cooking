
# source('./inst/extR/recipe_CoengFan.R')

#' @title \linkS4class{CoengFan} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' 
#' diagnose_(
#'  Daat_CoengFan1,
#'  Daat_CoengFan2
#' )
#' 
#' @name CoengFan
#' @aliases CoengFan-class
#' @export
setClass(Class = 'CoengFan', contains = 'recipe', prototype = prototype(
  machine = list('Robam CT763' = c('Brush pan with oil', 'Steam 180\u00b0F, 3min'))
))


#' @rdname CoengFan
#' @export
Daat_CoengFan1 <- function() new(
  Class = 'daatgo', alias_flavor = 'Coeng Fan1', 
  riceFlour = 150,
  starch = c(Wegmans_corn = 40 + 45, ManSang_wheat = 30),
  water = 540,
  youtube = 'MjBaHuCq9Rg')


#' @rdname CoengFan
#' @export
Daat_CoengFan2 <- function() new(
  Class = 'daatgo', alias_flavor = 'Coeng Fan2', 
  riceFlour = 100,
  starch = c(ManSang_wheat = 10, BobsRedMill_tapioca = 30),
  water = 350,
  youtube = '_Fr6mcXeWiY')
