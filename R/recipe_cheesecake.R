

#' @title New York \linkS4class{cheesecake} Filling Recipes
#' 
#' @description
#' 
#' A low sodium, low fat modification of Junior's Original New York Cheesecake filling
#' (see **Examples**)
#' from *Junior's Cheesecake Cookbook* by Alan Rosen and Beth Allen.
#' 
#' @section To reduce fat:
#' 
#' It is acceptable to replace full-fat cream cheese with with Neufchatel cream cheese.
#' 
#' It is acceptable to replace the 3/4 cup heavy whipping cream (222 grams * 3/4) with 
#' 100 grams (= 222 grams * 3/4 * .577) of water, 
#' or fruit and vegetable puree with equivalent amount of water.
#' Use of water or puree may slightly change the batter fluidity, 
#' which is acceptable and expected.
#' 
#' The coagulator in this recipe is water, corn starch and whole eggs.
#' 
#' @section To reduce sodium: 
#' 
#' Lower sodium cheesecake filling would require substantially less sugar to balance the salty taste.
#' Nancy's organic cultured cream cheese is the only nationwide available low sodium (.13%) option,
#' compared to the typical .43% sodium cotent of Philadelphia brand.
#' 
#' Tingting's New York \linkS4class{cheesecake} filling recipes use
#' 75% Philadelphia Neufchatel cream cheese and 25% Nancy's cream cheese,
#' for a balance of sodium (.23%-.25%) and fat (17%-18%) in the filling.
#' Using 100% Nancy's cream cheese gives a low sodium (.1%) and high fat (22%-24%) filling.
#' Using 100% Philadelphia Neufchatel cream cheese gives a high sodium (.3%) and low fat (15%-16%) filling.
#' 
#' @section To add flavoring to the filling: 
#' 
# Use of toppings, which is not covered in this document.
#' 
#' Use of powdered flavor, e.g., [coffee_cheesecake].
#' 
#' Use of infused syrup, which is my favorite option, e.g.,
#' [ryeWhisky_cheesecake].
#' If possible, use room-temperature syrup to increase batter fluidity.
#' 
#' @note
#' 
#' This recipe is so simple and delicious!  
#' Stop experiments on 
#' cream cheese spread, 
#' cream cheese mousse cake,
#' whipped cream cheese, 
#' no-bake cheesecake, 
#' etc.
#' 
#' 
#' @references 
#' 
#' Junior's Cheesecake Cookbook (2007). Alan Rosen and Beth Allen.
#' \url{https://www.juniorscheesecake.com/juniors-cheesecake-cookbook}.
#' First recipe under section *Junior’s Favorites*.
#' 
#' @examples
#' 
#' # my recipes, huge success!!
#' maple_cheesecake() # hit!
#' raspberry_cheesecake() # hit!
#' ryeWhisky_cheesecake() # hit!!!
#' pumpkin_cheesecake() # confirmed!
#' rum_cheesecake() # try next
#' appleBrandy_cheesecake() # try next
#' 
#' # color bad, don't do it again
#' blueberry_cheesecake() 
#' 
#' # I don't like!!
#' Bourbon_cheesecake_Crown() # this brand lacks Bourbon flavor
#' 
#' @name cheesecake
#' @aliases cheesecake-class
#' @export
setClass(Class = 'cheesecake', contains = 'recipe', prototype = prototype(
  #alias_class = '\u91cd\u4e73\u916a\u86cb\u7cd5',
  alias_class = 'NY Cheesecake',
  creamCheese_brick = c(
    #PhiladelphiaNeufchatel = 4 # fat 15.5%, sodium 3.2-per-mille
    Nancys = 1, PhiladelphiaNeufchatel = 3 # fat 17.8%, sodium 2.6-per-mille
    #Nancys = 2, PhiladelphiaNeufchatel = 2 # fat 20.2%, sodium 2-per-mille
    #Nancys = 4 # fat 25%, sodium 1.1-per-mille
    #Philadelphia = 4 # fat 22.7%, sodium 2.8-per-mille
  ),
  starch_cup = c(Wegmans_corn = 1/4),
  egg_pc = 2,
  water = 100, 
  portion = c(
    'cupcake' = 70, # can be filled higher than \linkS4class{muffin}
    'Emile Henry 9in, crustless' = 1400 
  ),
  instruction = c(
    'restore all ingredients to room temperature',
    paste('slow whisk everything', col_cyan('including eggs')) # see how Junior does it https://youtu.be/dUtq2hETohc
  ),
  RobamCT763 = RobamCT763(
    treatment = '1-inch boiling-water bath',
    cooling = 'Cool down in boiling water bath with oven door open',
    program = 'Steam Bake (Steam-&-Baking Tray)',
    fahrenheit = 300, 
    minute = c(
      'cupcake' = 14, # 15min minor cracks
      'Emile Henry 9in, crustless' = 22, # 25min minor cracks
      'Emile Henry 9in, cookie crust' = 22 # 20min center not completely set
    )
  )
  
))


#' @rdname cheesecake
#' @export
cheesecake <- function() new(
  Class = 'cheesecake', 
  sugar = 95, review = 'hypothetic model')
  



#' @rdname cheesecake
#' @export
blueberry_cheesecake <- function() new(
  Class = 'cheesecake',
  syrup = c(Stonewall_blueberrySyrup = 250), 
  cons = 'color not pretty') # tested 100% Nancy's

#' @rdname cheesecake
#' @export
maple_cheesecake <- function() new(
  Class = 'cheesecake',
  syrup = c(Stonewall_maple = 160), pros = 'Effie\'s Signature') # tested 100% Nancy's

#' @rdname cheesecake
#' @export
raspberry_cheesecake <- function() new(
  Class = 'cheesecake',
  syrup = c(Stonewall_raspberrySyrup = 250),
  pros = c('Effie loves (100% Neufchatel)',
           'Do not reduce raspberry syrup (do not want to lose raspberry flavor)'))

#' @rdname cheesecake
#' @export
ryeWhisky_cheesecake <- function() new(
  Class = 'cheesecake',
  starch = c(Argo_corn = 45), starch_cup = numeric(),
  syrup = c(Runamok_ryeWhisky = 170), 
  water = 150,
  #date = as.Date('2023-12-01'),
  pros = 'try again')



ryeWhisky_cheesecake_LowWater <- function() new(
  Class = 'cheesecake',
  syrup = c(Runamok_ryeWhisky = 160), 
  date = as.Date('2023-12-01'),
  pros = 'Xu Chang (100% Neufchatel)')

#' @rdname cheesecake
#' @export
rum_cheesecake <- function() new(
  Class = 'cheesecake',
  syrup = c(Runamok_rum = 150), review = 'try')

#' @rdname cheesecake
#' @export
appleBrandy_cheesecake <- function() new(
  Class = 'cheesecake', #alias_flavor = 'Apple Brandy\u67ab\u7cd6\u6d46',
  syrup = c(Runamok_appleBrandy = 160), review = 'try')

#' @rdname cheesecake
#' @export
Bourbon_cheesecake_Crown <- function() new(
  Class = 'cheesecake',
  syrup = c(Crown_Bourbon = 200), # do NOT reduce syrup!
  water = 90, 
  # 22min too wet!! added 15min
  review = 'try 30min')


tiramisu_cheesecake <- function() new(
  Class = 'cheesecake',
  # syrup = c(Kahlua_coffee = 230), sugar = numeric(), water = numeric(), #100 - 230*.441, # too high alcohol
  liqueur = c(Kahlua_coffee = 80), 
  water = 100 - 80*.441, 
  sugar = 65,
  cons = 'dont try, I dont think it will be huge success')











#' @rdname cheesecake
#' @export
pumpkin_cheesecake <- function() new(
  Class = 'cheesecake',
  water = numeric(), 
  starch_tsp = c(Argo_corn = 17), starch_cup = numeric(),
  pumpkin = 500, brownSugar = 150, 
  pumpkinSpice_tsp = 1.75,
  date = as.Date('2024-12-09'), pros = 'I love!')



pineapple_cheesecake <- function() new(
  Class = 'cheesecake',
  water = numeric(),
  starch_cup = c(Wegmans_corn = 1/3),
  homemade = c(pineapple_evap = 500), 
  review = 'try'
)


#' @rdname cheesecake
#' @export
coffee_cheesecake <- function() new(
  Class = 'cheesecake',
  coffee_Tbsp = c(NescafeGold_espresso_blonde = 7), sugar = 100,
  cons = 'dont try yet, I will prefer mocaccino_cheesecake()')






#' @rdname cheesecake
#' @export
matcha_cheesecake <- function() new(
  Class = 'cheesecake',
  matcha = c(Ippodo_ikuyo = 32), sugar = 100,
  review = 'try')

#' @rdname cheesecake
#' @export
mocaccino_cheesecake <- function() new(
  Class = 'cheesecake',
  coffee_Tbsp = c(NescafeGold_espresso_blonde = 4),
  cocoa_tsp = c(KingArthur_Bensdorp = 6*3+1),
  sugar = 100,
  review = 'try')

#' @rdname cheesecake
#' @export
ginger_cheesecake <- function() new(
  Class = 'cheesecake',
  ginger = 15,
  sugar = 110,
  review = 'try'
)

#' @rdname cheesecake
#' @export
CaffeBorghetti_cheesecake <- function() new(
  Class = 'cheesecake',
  coffee_Tbsp = c(NescafeGold_espresso_blonde = 3.25),
  liqueur = c(CaffeBorghetti = 65),
  sugar = 100,
  review = 'try'
)
  
#' @rdname cheesecake
#' @export
Kahlua_cheesecake <- function() new(
  Class = 'cheesecake',
  coffee_Tbsp = c(NescafeGold_espresso_blonde = 3.25),
  liqueur = c(Kahlua_coffee = 50),
  sugar = 80,
  review = 'try')







#' @rdname cheesecake
#' @export
Bourbon_cheesecake_Stonewall <- function() new(
  Class = 'cheesecake', alias_flavor = 'Bourbon\u67ab\u7cd6\u6d46(Stonewall)',
  syrup = c(Stonewall_Bourbon = 160),
  review = 'try')

