

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2637791/
# Lemon juice and lime juice are rich sources of citric acid, 
# containing 1.44 and 1.38 g/oz, respectively. 
# 1 oz = 28.35 gram

# 1.44 / 28.35 * 45 = 2.29

#' @title Invert Sugar Syrup Recipes
#' 
#' @description ..
#' 
#' @examples 
#' invertSugar()
#' 
#' @name invertSugar
#' @export
invertSugar <- function() new(
  Class = 'recipe', 
  alias_flavor = '\u8f6c\u5316\u7cd6\u6d46 Invert Sugar Syrup',
  sugar = 600, boilingWater = 300, lemon_pc = 1, # waterLost = ?? # weigh and confirm
  water = 60, NaHCO3_tsp = 1/4,
  xiaogaojie = 'ijG7Yn96B-g',
  pros = 'Great!!')

