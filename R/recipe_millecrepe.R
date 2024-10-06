
#' @title \linkS4class{millecrepe} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' millecrepe()
#' matcha_millecrepe()
#' beet_millecrepe()
#' cocoa_millecrepe()
#' 
#' (beet_millecrepe() + matcha_ganache()) * 2.5 # retry
#' 
#' 
#' 
#' diagnose_(
#'  millecrepe,
#'  xiaogaojie_millecrepe,
#'  iwen_mango_millecrepe,
#'  lisa_mango_millecrepe)
#' 
#' diagnose_(
#'  cocoa_millecrepe,
#'  iwen_cocoa_millecrepe,
#'  qiong_cocoa_millecrepe,
#'  qiong_tiramisu_millecrepe)
#'  
#' diagnose_(
#'  amanda_matcha_millecrepe,
#'  oreomachi_matcha_millecrepe, 
#'  matcha_millecrepe,
#'  JustOne_matcha_millecrepe,
#'  sweetTaste_matcha_millecrepe,
#'  lisa_matcha_millecrepe)
#'  
#' @name millecrepe
#' @aliases millecrepe-class
#' @export
setClass(Class = 'millecrepe', contains = 'recipe', prototype = prototype(
  alias_class = 'Mille Cre\u0302pe',
  portion = c('mille cre\u0302pe cake 11in' = 1100),
  pastryFlour = 100,
  egg_pc = 2,
  drymilk = c(Carnation_drymilk = 23),
  heavyCream = 85,
  water = 240,
  waterLost = 200, 
  # I can consistently achieve 170g water-lost using ladle
  # now I am good with rateau. 
  # will confirm waterLost when I have a chance
  instruction = c(
    'Sift powder. Sift batter',
    'Cool crepe pan under running water down to below 100\u00b0C',
    'KitchenAid downdraft range: side 1, Low; side 2, turn off range',
    'Use rateau instead of ladle!'
  ),
  youtube = c(
    'how to use rateau' = 'BeN3zKZ6qJ4',
    'how to use ladle' = 'RIs-3KLk0gI'
  )
), validity = function(object) {
  obj <- recipe(object)
  if (length(obj@liqueur)) stop('Do not use `@liqueur` in millecrepe; cooked liqueur tastes wierd. Use in mascarponeGanache instead!')
})

#' @rdname millecrepe
#' @export
millecrepe <- function() new(Class = 'millecrepe', pros = 'good hypothetical model')

#' @rdname millecrepe
#' @export
matcha_millecrepe <- function() new(
  Class = 'millecrepe',
  matcha_tsp = 4, 
  # sugar_Tbsp = 2, # for heavyCream = 70
  sugar_tsp = 6.5, # for heavyCream = 85
  cons = 'matcha better made in filling, not in crepe')

#' @rdname millecrepe
#' @export
beet_millecrepe <- function() new(
  Class = 'millecrepe',
  beet_tsp = 4,
  sugar_Tbsp = 2, 
  pros = c('Xu Chang'))

#' @rdname millecrepe
#' @export
cocoa_millecrepe <- function() new(
  Class = 'millecrepe',
  cocoa_tsp = 9.5, 
  # heavyCream = 70, cocoa_Tbsp = 3, sugar_Tbsp = 2, # not enough sugar
  sugar_tsp = 10.5, # try
  review = 'try again, already pretty good')


Kahlua_millecrepe_FAIL <- function() new(
  Class = 'millecrepe',
  liqueur_Tbsp = c(Kahlua_coffee = 4*2),
  sugar_tsp = numeric(),
  water = 190,
  cons = 'I don\'t like the taste of cooked liqueur')




#' @rdname millecrepe
#' @export
xiaogaojie_millecrepe <- function() new(
  Class = 'recipe', alias_flavor = 'millecrepe',
  milk = 300, # in grams in original recipe
  pastryFlour = 100,
  sugar = 12, 
  egg_pc = 2,
  butter = 25,
  xiaogaojie = 'uZ626SU5T2I')

#' @rdname millecrepe
#' @export
iwen_mango_millecrepe <- function() new(
  Class = 'recipe', author = 'iwen', alias_flavor = 'mango millecrepe',
  egg_pc = 6,
  sugar = 75,
  pastryFlour = 300,
  salt_tsp = 1/2,
  milk = 750, # in grams in original recipe
  butter = 100,
  youtube = 'tIOzt4XWy7k')
  

#' @rdname millecrepe
#' @export
iwen_cocoa_millecrepe <- function() new(
  Class = 'recipe', author = 'iwen', alias_flavor = '\u53ef\u53ef\u5343\u5c42',
  egg_pc = 6,
  sugar = 75,
  cocoa = 23,
  flour = 240,
  salt_tsp = 1/2,
  milk = 750, # in grams in original recipe
  butter = 105,
  starch = c(Wegmans_corn = 37.5),
  youtube = 'Z7WcSVGa6R4')


#' @rdname millecrepe
#' @export
qiong_cocoa_millecrepe <- function() new(
  Class = 'recipe', author = '\u5927\u743c', alias_flavor = '\u53ef\u53ef\u5343\u5c42', youtube = 'i8Ii4BZBkmg',
  egg_pc = 2,
  butter = 40,
  cocoa = 10,
  milk = 400, # in grams in original recipe
  sugar = 50,
  pastryFlour = 80)

#' @rdname millecrepe
#' @export
qiong_tiramisu_millecrepe <- function() new(
  Class = 'recipe', author = '\u5927\u743c', alias_flavor = 'tiramisu\u0300 millecrepe', youtube = 'xiVfrjTwaHw',
  egg_pc = 2, #
  butter = 30, #
  cocoa = 8, #
  milk = 410, # in grams in original recipe
  # 15ml  Coffee Rum    1tbsp
  sugar = 50, #
  coffee = 6.6, #
  pastryFlour = 80) #





#' @rdname millecrepe
#' @export
amanda_matcha_millecrepe <- function() new(
  Class = 'recipe', author = '\u66fc\u98df\u6162\u8bed', alias_flavor = '\u62b9\u8336\u5343\u5c42',
  milk = 650,
  pastryFlour = 240,
  sugar = 90,
  egg_pc = 4,
  matcha_tsp = 4,
  butter = 50,
  youtube = 'Caopoyr53TY')

#' @rdname millecrepe
#' @export
sweetTaste_matcha_millecrepe <- function() new(
  Class = 'recipe', author = '\u4e00\u5c0f\u70b9', alias_flavor = '\u62b9\u8336\u5343\u5c42', youtube = 'mU8rOo8_WrM',
  pastryFlour = 80,
  starch = c(Wegmans_corn = 15),
  matcha = 5,
  egg_pc = 2,
  sugar = 30,
  oil = c(Wegmans_vegetable = 15),
  milk = 250 # in grams in original recipe
)

#' @rdname millecrepe
#' @export
oreomachi_matcha_millecrepe <- function() new(
  Class = 'recipe', author = 'oreomachi', alias_flavor = '\u62b9\u8336\u5343\u5c42', youtube = '2WESa5wNK0o',
  milk = 360,
  heavyCream = 140,
  sugar = 80,
  butter = 52,
  egg_pc = 4,
  pastryFlour = 160,
  matcha = 6,
  oil = c(Wegmans_vegetable = 40)
  # Honey 40g ???
)

#' @rdname millecrepe
#' @export
lisa_matcha_millecrepe <- function() new(
  Class = 'recipe', author = '\u8428\u59d0', alias_flavor = '\u62b9\u8336\u5343\u5c42', youtube = 'lP0p7qh3E1I',
  egg_pc = 2,
  butter = 30,
  matcha = 8,
  heavyCream = 65,
  sugar = 35,
  milk = 340,
  pastryFlour = 90
)

#' @rdname millecrepe
#' @export
lisa_mango_millecrepe <- function() new(
  Class = 'recipe', author = '\u8428\u59d0', alias_flavor = 'mango millecrepe', youtube = '_Pz6_nKaebw',
  egg_pc = 2, 
  butter = 20,
  sugar = 30, 
  milk = 280, 
  pastryFlour = 70 
)

#' @rdname millecrepe
#' @export
JustOne_matcha_millecrepe <- function() new(
  Class = 'recipe', 
  alias_flavor = '\u62b9\u8336\u5343\u5c42', 
  just1cookbook = c('vfUu0eedUYI' = 'matcha-mille-crepe-cake'),
  milk_cup = 1.75,
  sugar = 12.5*3, # 3 Tbsp granulated sugar
  egg_pc = 3,
  butter = 25,
  pastryFlour = 138,
  matcha_Tbsp = 2,
  bakingPowder_tsp = .5)

