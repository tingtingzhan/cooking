

#' @title \linkS4class{cornGeng} Recipes
#' 
#' @description
#' ...
#' 
#' @details
#' 
#' \linkS4class{cornGeng} uses a lot of frozen corn, so no corn-slurry is needed.
#' 
#' @references 
#' \url{https://youtu.be/If0frZqg8e8}
#' \url{https://youtu.be/jkIxmCordqQ}
#' 
#' @name cornGeng
#' @aliases cornGeng-class
#' @export
setClass(Class = 'cornGeng', contains = 'recipe', prototype = prototype(
  alias_class = '(\u6d77\u9c9c\U1f990\U1f991)\u7389\u7c73\U1f33d\u7fb9\U1f963',
  puree = c(cornjuice = 300), boilingWater = 200,
  egg_pc = 1,
  instruction = c(
    'Bring corn milk and boiling water to a boil',
    'Remove from heat. Add no more than 100 grams(?) of fully-thawed seafood, meatball(), meatmash(), meatfill(), or niangaoNingbo() \033[31motherwise brings temperature too low\033[0m. Cover for 5min',
    'Add beaten egg slowly. Keep stirring',
    '(Optional) add dried seaweed. Cover and soak for 2min'
  )
))

#' @rdname cornGeng
#' @export
cornGeng <- function() new(Class = 'cornGeng', pros = 'I love!')





#' @title \linkS4class{geng} Recipes
#' 
#' @description
#' ..
#' 
#' @name geng
#' @aliases geng-class
#' @export
setClass(Class = 'geng', contains = 'recipe', prototype = prototype(
  alias_class = '(\u6d77\u9c9c\U1f99e\U1f990\U1f991\U1f980)\u7fb9\U1f963',
  
  boilingWater = 600, 
  water = 15, starch_tsp = c(Wegmans_corn = 1.5), 
  egg_pc = 1,
  
  instruction = c(
    'Make a slurry of corn starch and room-temperature water',
    '(Optional) add sauce and seasoning to boiling water',
    'Turn to low heat. Add slurry. Stir until thickens',
    'Remove from heat. Add a beaten egg \033[31mto bring temperature down to ~90C for seafood\033[0m. Let sit for 5sec \033[31mto have bigger egg flakes\033[0m, then stir gently',
    'Add no more than 100 grams(?) of fully-thawed seafood, meatball(), meatmash(), meatfill(), or niangaoNingbo() \033[31motherwise brings temperature too low\033[0m. Cover for 5min',
    # tried 7pcs 31-40ct shrimp, very good
    '(Optional) add dried seaweed. Cover and soak for 2min'
  )
))

#youtube = c('\u5218\u7238\u7238' = 'dBXeW0vyiNc')
#url = 'https://www.madewithlau.com/recipes/hot-sour-soup'
#youtube = c('\u738b\u521a, \u7528\u80e1\u6912\u4e0d\u8981\u7528\u8fa3\u6912' = 'mQ_2W5zUd44')

# boilingWater = 1183, starch_Tbsp = c(Wegmans_corn = 1), water = 30, egg_pc = 2, # www.madewithlau.com/recipes/hot-sour-soup


#' @rdname geng
#' @export
tomyumGeng <- function() new(
  Class = 'geng',
  sauce = c(
    Siam_tomyum = 36,
    LeeKumKee_coconutCurry = 4
  ),
  pros = 'I love!')

