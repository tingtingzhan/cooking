
# not sure if I really want to do deep fry


#' @title \linkS4class{sacima} Recipes
#' 
#' @description
#' Non-deep-fry \linkS4class{sacima} recipe.
#' 
#' @examples
#' new(Class = 'sacima')
#' 
#' diagnose(
#'  xiaogaojie_sacima,
#'  Dad_sacima,
#'  shangshi_sacima)
#' 
#' @name sacima
#' @aliases sacima-class
#' @export
setClass(Class = 'sacima', contains = 'recipe', prototype = prototype(
  alias_class = '\u8428\u5176\u9a6c',
  # pastryFlour = 200, eggYolk = 2, eggWhite = 2, yeast_tsp = .5, # has potential!!
  pastryFlour = 190, eggYolk = 2, eggWhite = 2, yeast_tsp = 1.5,
  butter = 306*5/164,
  instruction = c(
    'Manually knead pastry flour, egg and yeast',
    # 'Pastalinda; Thickness 7, 3 cm long, 2.5 mm cut',
    'Pastalinda; Thickness 6, 2 cm long. Manually cut to 3mm',
    'Butter rice cooker bowl',
    # 'In rice cooker bowl, layer noodle, syrup (and nuts, dried fruit, etc)',
    'Coat noodle pieces with sugar syrup, in rice cooker bowl',
    'Ferment for 30min',
    'Choose Bread program (90min)'
  ),
  url = 'v.douyin.com/idoJXYAX/'
))

# air fryer does not work for this dough ..
# rice cooker not perfect but much better, however my dough is too glutinous, probably too much kneading


#' @rdname sacima
#' @export
maple_sacima <- function() new(
  Class = 'sacima', alias_flavor = '\u84dd\u8393\u7cd6\u6d46',
  # syrup = c(Stonewall_maple = 77*306/164), # sugar 25%, not bad!
  syrup = c(Stonewall_maple = 100),
  review = 'try again')




#' @rdname sacima
#' @export
sacima <- function() new(
  Class = 'sacima',
  #bakingPowder_tsp = 1/8,
  #homemade = c(invertSugar = 50),
  condensedMilk = 80,
  review = 'try'
  #machine = list(
  #  # 'Air Fryer' = '350F, 6min.  Try and confirm'
  #),
  #url = c(
  #  'www.hongbeibang.com/recipe/13806412'
  #),
  #youtube = c(
  #  'YVeODUtzD7Q',
    #Eggs 3(60 grams each) 0:24,
    #All-purpose flour 270 grams 0:38,
    #Baking powder 2 grams 0:44,
    
    
  
)


#' @rdname sacima
#' @export
shangshi_sacima <- function() new(
  Class = 'recipe', alias_flavor = 'sacima', shangshikitchen = 'dV6phomugvA',
  flour = 240,
  eggYolk_pc = 3, eggWhite_pc = 3)

#' @rdname sacima
#' @export
xiaogaojie_sacima <- function() new(
  Class = 'recipe', alias_flavor = 'sacima', 
  xiaogaojie = 'VkgWeCxZfi4',
  flour = 200,
  NaHCO3_tsp = 1/8,
  water = 15,
  eggYolk_pc = 2, eggWhite_pc = 2)

#' @rdname sacima
#' @export
Dad_sacima <- function() new(
  Class = 'recipe', alias_flavor = 'sacima', 
  dad1966 = 'ZK4ZoCewr0E',
  flour = 270,
  eggYolk_pc = 3, eggWhite_pc = 3,
  NaHCO3 = 1)

