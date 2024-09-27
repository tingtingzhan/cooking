

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
#' nutrition_(
#'  cheesecake(),
#'  subtract(cheesecake_PreppyKitchen, sugar = 125),
#'  subtract(Junior_original, sugar = 12),
#'  subtract(Junior_cookbook, sugar = 230),
#'  subtract(CheesecakeFactory_original, sugar = 18)
#' )
#' 
#' # my recipes, huge success!!
#' maple_cheesecake() # hit!
#' raspberry_cheesecake() # hit!
#' ryeWhisky_cheesecake() # hit!!!
#' pumpkin_cheesecake() # just add a little more sugar!
#' rum_cheesecake() # try next
#' brandy_cheesecake() # try next
#' 
#' # color bad, don't do it again
#' blueberry_cheesecake() 
#' 
#' # I don't like!!
#' Bourbon_cheesecake_Crown() # this brand lacks Bourbon flavor
#' 
#' nutrition_(
#'  pumpkin_cheesecake,
#'  subtract(pumpkin_cheesecake_Junior, sugar = 330),
#'  subtract(pumpkin_cheesecake_NatashasKitchen, brownSugar = 245),
#'  subtract(pumpkin_cheesecake_PreppyKitchen, sugar = 150),
#'  subtract(CheesecakeFactory_pumpkin, sugar = 14)
#' )
#' @name cheesecake
#' @aliases cheesecake-class
#' @export
setClass(Class = 'cheesecake', contains = 'recipe', prototype = prototype(
  alias_class = '\u91cd\u4e73\u916a\u86cb\u7cd5',
  creamCheese = c(
    Nancys = 227, PhiladelphiaNeufchatel = 227 * 3
    #PhiladelphiaNeufchatel = 227 * 4
    #Nancys = 227 * 4
  ),
  starch_cup = c(Wegmans_corn = 1/4),
  egg_pc = 2,
  water = 100, 
  portion = c(
    'raibow cupcake 3in' = 60, 
    'Philips Airfryer cupcake 2.75in' = 80,
    'Emile Henry 9in, crustless' = 1400 
  ),
  instruction = c(
    'Whisk everything except egg. Heavy batter, use muscle!',
    'Fold in egg, gently, stop as soon as combined'
  ),
  RobamCT763 = RobamCT763(
    treatment = '1.5qt boiling water bath',
    cooling = 'Cool down in boiling water bath with oven door open',
    program = 'Steam Bake (Steam-&-Baking Tray)',
    fahrenheit = 300, 
    minute = c(
      'Silicone Cupcake, 2.75in' = 14, # 15min minor cracks
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
cheesecake_Nancy <- function() new(
  Class = 'cheesecake', alias_flavor = 'Full Fat',
  creamCheese = c(Nancys = 227*4),
  sugar = 90, review = 'hypothetic model')



#' @rdname cheesecake
#' @export
blueberry_cheesecake <- function() new(
  Class = 'cheesecake', alias_flavor = '\u84dd\u8393\U1fad0\u7cd6\u6d46',
  syrup = c(Stonewall_blueberrySyrup = 250), review = 'Taste good, but color not pretty') # tested 100% Nancy's

#' @rdname cheesecake
#' @export
maple_cheesecake <- function() new(
  Class = 'cheesecake', alias_flavor = '\u67ab\u7cd6\u6d46',
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
  Class = 'cheesecake', alias_flavor = 'Rye Whiskey\u9152\u6876\u67ab\u7cd6',
  syrup = c(Runamok_ryeWhisky = 160), 
  pros = 'Xu Chang (100% Neufchatel)')

#' @rdname cheesecake
#' @export
rum_cheesecake <- function() new(
  Class = 'cheesecake', alias_flavor = 'Rum\u9152\u6876\u67ab\u7cd6\u6d46',
  syrup = c(Runamok_rum = 160), review = 'try')

#' @rdname cheesecake
#' @export
brandy_cheesecake <- function() new(
  Class = 'cheesecake', alias_flavor = 'Apple Brandy\u9152\u6876\u67ab\u7cd6\u6d46',
  syrup = c(Runamok_brandy = 160), review = 'try')

#' @rdname cheesecake
#' @export
Bourbon_cheesecake_Crown <- function() new(
  Class = 'cheesecake', alias_flavor = 'Bourbon\u9152\u6876\u67ab\u7cd6\u6d46',
  syrup = c(Crown_Bourbon = 200), # do NOT reduce syrup!
  water = 90, 
  # 22min too wet!! added 15min
  review = 'try 30min')


tiramisu_cheesecake <- function() new(
  Class = 'cheesecake', alias_flavor = 'Tiramisu\u0300',
  # syrup = c(Kahlua_coffee = 230), sugar = numeric(), water = numeric(), #100 - 230*.441, # too high alcohol
  liqueur = c(Kahlua_coffee = 120), water = 100 - 120*.441, sugar = 50,
  cons = 'dont try, I dont think it will be huge success')











#' @rdname cheesecake
#' @export
pumpkin_cheesecake <- function() new(
  Class = 'cheesecake',
  water = numeric(),
  #pumpkin = 300, brownSugar = 100, starch_tsp = c(Wegmans_corn = 13), # 10% sugar, slightly too plain
  pumpkin = 300, brownSugar = 120, starch_tsp = c(Wegmans_corn = 14), # 11% sugar, should be perfect!
  #pumpkin = 500, brownSugar = 150, starch_tsp = c(Wegmans_corn = 15), # dont try yet
  review = c(
    'retry with corn starch (and more sugar). Tapioca flour does not coagulate well enough' 
  ))



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
  cocoaDutch_tsp = c(KingArthur_Bensdorp = 6*3+1),
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
  Class = 'cheesecake', alias_flavor = 'Bourbon\u9152\u6876\u67ab\u7cd6\u6d46(Stonewall)',
  syrup = c(Stonewall_Bourbon = 160),
  review = 'try')


#' @rdname cheesecake
#' @export
Junior_original <- function() new(
  Class = 'nutrition', wegmans = 81705L,
  brand = 'Junior', name = '\u8d85\u5e02Cheesecake',
  servingGram = 136, 
  calorie = 460,
  fat = 33, cholesterol = .135, sodium = .38, carbohydrate = 30, sugar = 24, addedSugar = 22, protein = 7)


#' @rdname cheesecake
#' @export
Junior_cookbook <- function() new(
  Class = 'recipe', 
  author = unclass(style_hyperlink(text = 'Junior\'s Cookbook', url = 'https://www.juniorscheesecake.com/juniors-cheesecake-cookbook')),
  alias_flavor = '\u83dc\u8c31Cheesecake',
  creamCheese = c(Philadelphia = 227 * 4),
  sugar = 333, 
  starch_cup = c(Wegmans_corn = 1/4),
  vanilla_Tbsp = 1,
  egg_pc = 2,
  heavyCream = c(Wegmans = 180) # 3/4 cup heavy cream
)

#' @rdname cheesecake
#' @export
CheesecakeFactory_original <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Cheesecake Factory\U1f1fa\U1f1f8', url = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-freezer/original-cheesecake')),
  # www.thecheesecakefactoryathome.com/whole-cheesecakes-bakery/original-dome
  name = 'Original',
  target = 'A-15382641', usd = 18.39/964*120,
  servingGram = 120, 
  fat = 24, cholesterol = .105, sodium = .33, sugar = 28, addedSugar = 27, protein = 6)

#' @rdname cheesecake
#' @export
CheesecakeFactory_pumpkin <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Cheesecake Factory\U1f1fa\U1f1f8', url = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-freezer/pumpkin-cheesecake')),
  # www.thecheesecakefactoryathome.com/whole-cheesecakes-bakery/pumpkin-cheesecake
  name = 'Pumpkin\U1f383',
  bjs = 'the-cheesecake-factory-at-home-6-pumpkin-cheesecake/3000000000003370251', 
  usd = 16.99/6, # 6 serving's per container
  servingGram = 123, 
  fat = 25, cholesterol = .105, sodium = .26, sugar = 25, addedSugar = 23, protein = 5)

#' @rdname cheesecake
#' @export
Junior_strawberrySwirl <- function() new(
  Class = 'nutrition', wegmans = 23187893L,
  brand = 'Junior', name = 'Strawberry Swirl New York Cheesecake',
  servingGram = 136, fat = 28, cholesterol = .11, sodium = .33, sugar = 29, protein = 6)





#' @rdname cheesecake
#' @export
pumpkin_cheesecake_NatashasKitchen <- function() new(
  Class = 'recipe', author = 'Natasha\'s Kitchen', alias_flavor = '\u5357\u74dccheesecake',
  creamCheese = c(Philadelphia = 227*3),
  brownSugar = c(Domino_lightBrown = 288), # 1 1/2 cups packed light brown sugar
  pumpkinPieMix = 425, # 15 oz; original. contains 20.7% sugar 
  flour = 15,
  egg_pc = 4,
  sourCream = 60,
  salt_tsp = 1/4,
  vanilla_Tbsp = 1,
  pumpkinSpice_tsp = 2,
  url = 'https://natashaskitchen.com/pumpkin-cheesecake-recipe/')

#' @rdname cheesecake
#' @export
pumpkin_cheesecake_Junior <- function() new(
  Class = 'recipe', author = 'Junior', alias_flavor = '\u5357\u74dccheesecake',
  creamCheese = c(Philadelphia = 227*4),
  sugar = 200*(1+2/3), # 1 2/3 cup
  starch_cup = c(Wegmans_corn = 1/4),
  vanilla_Tbsp = 1,
  egg_pc = 2,
  heavyCream = 180, # .75 cup
  pumpkin = 244, # 1 cup; original
  brownSugar = 130,
  pumpkinSpice_tsp = 1,
  url = 'https://www.juniorscheesecake.com/juniors-cheesecake-cookbook'
)

#' @rdname cheesecake
#' @export
cappuccino_cheesecake_Junior = function() new(
  Class = 'recipe', author = 'Junior', alias_flavor = 'cappuccino_cheesecake',
  creamCheese = c(Philadelphia = 227*4),
  coffee_Tbsp = 1,
  boilingWater = 15,
  sugar = 200*(1+2/3), # 1 2/3 cup
  starch_cup = c(Wegmans_corn = 1/3),
  vanilla_Tbsp = 1,
  egg_pc = 2,
  heavyCream = 180, # .75 cup
  url = 'https://www.juniorscheesecake.com/juniors-cheesecake-cookbook')


#' @rdname cheesecake
#' @export
cheesecake_PreppyKitchen <- function() new(
  Class = 'recipe', alias_flavor = 'Cheesecake',
  creamCheese = c(Philadelphia = 227*3),
  sugar = 200,
  salt_tsp = 1/4,
  vanilla_tsp = 2,
  egg_pc = 3,
  sourCream = 120,
  preppykitchen = c('ZYoYffXWiwk' = 'cheesecake-recipe'))


#' @rdname cheesecake
#' @export
pumpkin_cheesecake_PreppyKitchen <- function() new(
  Class = 'recipe', alias_flavor = '\u5357\u74dccheesecake',
  creamCheese = c(Philadelphia = 227*3),
  sugar = 150,
  brownSugar = 115,
  salt_tsp = 1/2,
  egg_pc = 4,
  pumpkin = 244,
  sourCream = 120,
  vanilla_tsp = 2,
  flour = 15,
  pumpkinSpice_tsp = 1.5,
  preppykitchen = c('JwmhZP9vRWM' = 'pumpkin-swirl-cheesecake'))

