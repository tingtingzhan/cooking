

#' @title \linkS4class{crumbcrust} Recipes
#' 
#' @description ..
#' 
#' @note
#' 
#' \linkS4class{cookie} is a little too buttery, eggy and milky 
#' to serve as crust for dairy filling.
#' Although it still tastes wonderful!
#' 
#' \linkS4class{crumbcrust} can be also made into egg-less, milk-less cookies.
#' 
#' @examples
#' blackSesame_crumbcrust()
#' 
#' nutrition_(
#'  blackSesame_crumbcrust,
#'  subtract(nutrition(PreppyKitchen_grahamCrust2), sugar = 35),
#'  subtract(nutrition(PreppyKitchen_grahamCrust1), sugar = 23),
#'  subtract(nutrition(PreppyKitchen_grahamCrust4), sugar = 32),
#'  subtract(nutrition(PreppyKitchen_grahamCrust3), sugar = 21),
#'  subtract(nutrition(PreppyKitchen_grahamCrust5), sugar = 28),
#'  subtract(MiDel_grahamCrust, sugar = 5.8),
#'  subtract(Keebler_grahamCrust, sugar = 4.1),
#'  subtract(WholeFoods365_grahamCrust, sugar = 4)
#' )
#' 
#' 
#' @name crumbcrust
#' @aliases crumbcrust-class
#' @export
setClass(Class = 'crumbcrust', contains = 'recipe', prototype = prototype(
  alias_class = 'Crumb Crust',
  instruction = c(
    'food processor',
    'Philips pasta maker'
  ),
  portion = c(
    # do NOT need pie weight!!
    
    # Emile Henry 9in pie dish: 1113; experimented with blackSesame_crumbcrust()
    
    # below are blackSesame_cookie2022() data
    # 'Emile Henry 9in, full-edge' = 380,  # Robam: Air Fry 350F, 6min (7min, edge a little too brown after baking with cheesecake filling)
    # raw dough 400 (=1513-1113); baked 380 (=1493-1113); loose water 20/400 = 5%
    # Full edge, edge will crack after baking
    
    'Emile Henry 9in, half-edge' = 267, # confirmed! 
    # crust is buried under filling!
    # Robam: Air Fry 350F, 7min # Nice!!!
    # Half edge: raw dough 267 (=1380-1113); baked 257 (=1370-1113); loose water 10/267 = 3.75%
    
    # below are blackSesame_cookie2022() data
    # 'Emile Henry 5in, full-edge' = 445 - 320
    
    'Emile Henry 5in, half-edge' = 84 # ?
    # Half edge: raw dough 84 (=404-320); baked x2 (=x20-320); loose water (x1-x2)/x1 = 5%
  )
))


#' @rdname crumbcrust
#' @export
crumbcrust <- function() new(Class = 'crumbcrust')



# 170 not 2-cups ..
#flavor = c(HoneyMaid_graham = 170), # 2 cups
#butter = 113, # 8 tablespoons, .5 cup
# sugar = 50, # original
#url = 'preppykitchen.com/graham-cracker-crust' # cannot find youtube link

#' @title Other People's Graham Crust
#' 
#' @description
#' ..
#' 
#' @name grahamCrust
#' @export
PreppyKitchen_grahamCrust1 <- function() new(
  Class = 'recipe', alias_flavor = 'Graham Crust',
  flavor = c(HoneyMaid_graham = 180), # 1.5 cups
  butter = 226.8/4, # 1/4 cup = 4 tbsp
  preppykitchen = c('ZYoYffXWiwk' = 'cheesecake-recipe'))

#' @rdname grahamCrust
#' @export
PreppyKitchen_grahamCrust2 <- function() new(
  Class = 'recipe', alias_flavor = 'Graham Crust',
  flavor = c(Nabisco_graham = 270), # 2.25 cups
  butter = 70, # 5 tbsp
  preppykitchen = c('BSsv6sBD6ow' = 'strawberry-cheesecake'))

#' @rdname grahamCrust
#' @export
PreppyKitchen_grahamCrust3 <- function() new(
  Class = 'recipe', alias_flavor = 'Graham Crust',
  flavor = c(HoneyMaid_graham = 180), # 1.5 cups
  butter = 70, # 5 tbsp
  preppykitchen = c('beDAwNsKZUA' = 'blueberry-cheesecake'))

#' @rdname grahamCrust
#' @export
PreppyKitchen_grahamCrust4 <- function() new(
  Class = 'recipe', alias_flavor = 'Graham Crust',
  flavor = c(Nabisco_graham = 270), # 2.25 cups
  butter = 84, # 6 tbsp
  preppykitchen = c('x8ezFPOBtfo' = 'lemon-cheesecake'))

#' @rdname grahamCrust
#' @export
PreppyKitchen_grahamCrust5 <- function() new(
  Class = 'recipe', alias_flavor = 'Graham Crust',
  flavor = c(Nabisco_graham = 260), # 2 cups (should be 240g based on his other recipes)
  butter = 113, # 1/2 cup
  preppykitchen = c('V5YqfJSjYXE' = 'no-bake-cheesecake'))

#' @rdname grahamCrust
#' @export
Keebler_grahamCrust <- function() new(
  Class = 'nutrition',
  brand = 'Keebler', name = 'Graham Crust',
  url = 'www.keebler.com/en/sweet-treat/pie-crusts/graham/ready-crust-graham-cracker',
  wegmans = 260909L, usd = 2.99/170*21,
  servingGram = 21, fat = 5, sodium = .115, sugar = 6, addedSugar = 5, protein = 1)


#' @rdname grahamCrust
#' @export
WholeFoods365_grahamCrust <- function() new(
  Class = 'nutrition', 
  name = 'Graham Crust',
  wholefoods = 'b08ly5bys5',
  servingGram = 21, 
  calorie = 110,
  fat = 6, sodium = .045, addedSugar = 6)


#' @rdname grahamCrust
#' @export
MiDel_grahamCrust <- function() new(
  Class = 'nutrition',
  brand = unclass(style_hyperlink(url = 'https://midelcookies.com/products/graham-style-pie-crust/', text = 'MiDel')), 
  name = 'Graham Crust',
  servingGram = 25, 
  calorie = 120,
  fat = 5, sodium = .14, addedSugar = 8, protein = 1)


MiDel_chocolateCrust <- function() new(
  Class = 'nutrition', 
  url = 'midelcookies.com/products/chocolate-snap-pie-crust/',
  servingGram = 25, fat = 4.5, sodium = .07, sugar = 9, protein = 1)


DiamondNuts_chocolateCrust <- function() new(
  Class = 'nutrition', url = 'shop.diamondnuts.com/collections/nut-pie-crusts/products/6-oz-ready-to-use-chocolate-nut-pie-crust',
  wegmans = 25249000L,
  servingGram = 21, fat = 7, sodium = .08, sugar = 4, protein = 2)
# https://shop.diamondnuts.com/collections/nut-pie-crusts



#' @rdname crumbcrust
#' @export
ginger_crumbcrust <- function() new(
  Class = 'crumbcrust', 
  # pastryFlour = 360, # original
  pastryFlour = 370, # to have 50% fat:flour
  butter = 227,
  sugar = 7.5,
  #iceWater = 50, # 60g-90g,
  ginger = 10, sugar = 80,
  review = 'try'
)

blackSesame_crumbcrust_OLD <- function() new(
  Class = 'crumbcrust', 
  flour = c(Wegmans_bread = 390), 
  blackSesame = 110, 
  butter = 170, water = 65, sugar = 100,
  cons = 'Black sesame flavor too weak, when used as cookie or cheesecake crust',
  pros = 'texture not bad as cookie') 


#' @rdname crumbcrust
#' @export
blackSesame_crumbcrust <- function() new(
  Class = 'crumbcrust',
  flour = c(Wegmans_bread = 250), 
  blackSesame = 250, 
  #butter = 100, 
  water = 25, sugar = 70,
  review = 'try')


