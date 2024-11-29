



#' @title \linkS4class{juntun} Recipe
#' 
#' @description
#' ..
#' 
#' @details
#' 
#' Zhou LeQuan's authentic version laminates the dough with minced meat.
#' 
#' 
#' @examples
#' juntun()
#' 
#' 
#' @name juntun
#' @aliases juntun-class
#' @export
setClass(Class = 'juntun', contains = 'recipe', prototype = prototype(
  alias_class = '\u519b\u5c6f\u9505\u76d4\u76ae',
  pastryFlour = 500,
  sugar_tsp = 4, yeast_tsp = 2, # maybe not too much fermentation..

  # do NOT use butter in dough next time!
  # pan sear in oil is a must!!!
  
  portion = c('juntun-guokui' = 85),
  instruction = c(
    # 'Rest, without butter, in fridge overnight. Knead in butter on day-2',
    'Wrap and rest overnight in fridge',
    # 'Pan sear, without oil, 1/3 from Medium to High',
    'Pan sear, with vegetable oil, 1/3 from Medium to High',
    'Philips Air Fryer, four (4) guo-kui, 375F, 6min+4min'
  )
))


# write down
#youtube = c(
#  '\u5927\u5e08\u7684\u83dc \u5468\u4e50\u5168' = 'cohQ56AqXkg',
#  '\u56db\u5ddd\u53f0 \u5468\u4e50\u5168' = 'U04g7sVK9O4',
#  '\u6df1\u5733\u536b\u89c6 \u5468\u4e50\u5168 \u9ad8\u7b4b\u7c89;\u53d1\u9175\u5145\u5206' = 'jOAQzcoDYZQ?t=174',
#  '\u4e8c\u66f4TV \u5468\u4e50\u5168' = 'Ok9fdWDUsx4',
#  '\u8001\u996d\u9aa8\u6454\u9762' = 'OWitdw0j0S4?t=222',
#  '\u4e0d\u8981\u7528\u9ad8\u7b4b\u7c89!' = '_2Ly_zbPg7g?t=229'
#s)




#' @rdname juntun
#' @export
juntun <- function() new(
  Class = 'juntun',
  water = 280,
  review = 'try again!'
)


# pumpkin_juntun <- function


juntun_filling <- function() new(
  Class = 'recipe',
  alias = '\u519b\u5c6f\u9505\u76d4\u9985',
  #pork = c(belly = 550), # too fat!!
  pork = c(belly = 250, tenderloin = 300),
  whitePepper_tsp = .5,
  ginger_tsp = .5,
  coriander_tsp = 1/4,
  greenPeppercornOil_Tbsp = 1, # perfect numbness!!
  salt_tsp = .5,
  instruction = c(
    'Use KitchenAid meat grinder, not meat chopper!'
  ),
  review = 'try again!!',
  youtube = 'cohQ56AqXkg'
)