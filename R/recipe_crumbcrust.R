

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
#' nutritionlist(
#'  blackSesame_crumbcrust(),
#'  PreppyKitchen_grahamCrust2() |>
#'   as('nutrition') |>
#'   subtract(sugar = 35),
#'  PreppyKitchen_grahamCrust1() |>
#'   as('nutrition') |>
#'   subtract(sugar = 23),
#'  PreppyKitchen_grahamCrust4() |>
#'   as('nutrition') |>
#'   subtract(sugar = 32),
#'  PreppyKitchen_grahamCrust3() |>
#'   as('nutrition') |>
#'   subtract(sugar = 21),
#'  PreppyKitchen_grahamCrust5() |>
#'   as('nutrition') |>
#'   subtract(sugar = 28),
#'  subtract(cooking:::MiDel_grahamCrust, sugar = 5.8),
#'  subtract(cooking:::Keebler_grahamCrust, sugar = 4.1),
#'  subtract(cooking:::WholeFoods365_grahamCrust, sugar = 4)
#' )
#' 
#' 
#' @name crumbcrust-class
#' @export
setClass(Class = 'crumbcrust', contains = 'recipe', prototype = prototype(
  class2 = 'Crumb Crust',
  #instruction (legacy) = c(
  #  'food processor',
  #  'Philips pasta maker'
  #),
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


#' @rdname crumbcrust-class
#' @export
crumbcrust <- \() new(Class = 'crumbcrust')



# 170 not 2-cups ..
#misc = c(HoneyMaid_graham = 170), # 2 cups
#dairy_cup = c(Kerrygold_butter = 1/2),
# sugar = 50, # original
#url = 'https://preppykitchen.com/graham-cracker-crust' # cannot find youtube link

#' @title Other People's Graham Crust
#' 
#' @description
#' ..
#' 
#' @name grahamCrust
#' @export
PreppyKitchen_grahamCrust1 <- \() new(
  Class = 'recipe', flavor = 'Graham Crust',
  misc = c(HoneyMaid_graham = 180), # 1.5 cups
  dairy_cup = c(Kerrygold_butter = 1/4),
  preppykitchen = c('ZYoYffXWiwk' = 'cheesecake-recipe'))

#' @rdname grahamCrust
#' @export
PreppyKitchen_grahamCrust2 <- \() new(
  Class = 'recipe', flavor = 'Graham Crust',
  misc = c(Nabisco_graham = 270), # 2.25 cups
  dairy_Tbsp = c(Kerrygold_butter = 5),
  preppykitchen = c('BSsv6sBD6ow' = 'strawberry-cheesecake'))

#' @rdname grahamCrust
#' @export
PreppyKitchen_grahamCrust3 <- \() new(
  Class = 'recipe', flavor = 'Graham Crust',
  misc = c(HoneyMaid_graham = 180), # 1.5 cups
  dairy_Tbsp = c(Kerrygold_butter = 5),
  preppykitchen = c('beDAwNsKZUA' = 'blueberry-cheesecake'))

#' @rdname grahamCrust
#' @export
PreppyKitchen_grahamCrust4 <- \() new(
  Class = 'recipe', flavor = 'Graham Crust',
  misc = c(Nabisco_graham = 270), # 2.25 cups
  dairy_Tbsp = c(Kerrygold_butter = 6),
  preppykitchen = c('x8ezFPOBtfo' = 'lemon-cheesecake'))

#' @rdname grahamCrust
#' @export
PreppyKitchen_grahamCrust5 <- \() new(
  Class = 'recipe', flavor = 'Graham Crust',
  misc = c(Nabisco_graham = 260), # 2 cups (should be 240g based on his other recipes)
  dairy_cup = c(Kerrygold_butter = 1/2),
  preppykitchen = c('V5YqfJSjYXE' = 'no-bake-cheesecake'))






#' @rdname crumbcrust-class
#' @export
ginger_crumbcrust <- \() new(
  Class = 'crumbcrust', 
  # flour = c(Wegmans_pastryFlr = 360), # original
  flour = c(Wegmans_pastryFlr = 370), # to have 50% fat:flour
  dairy_brick = c(Kerrygold_butter = 1),
  sugar = 7.5,
  #iceWater = 50, # 60g-90g,
  spice = c(SimplyOrganic_ginger = 10), 
  sugar = 80,
  review = 'try'
)

blackSesame_crumbcrust_OLD <- \() new(
  Class = 'crumbcrust', 
  flour = c(Wegmans_breadFlr = 390), 
  seed = c(Greenmax_blackSesame = 110), 
  dairy = c(Kerrygold_butter = 170), water = 65, sugar = 100,
  cons = 'Black sesame flavor too weak, when used as cookie or cheesecake crust',
  pros = 'texture not bad as cookie') 


#' @rdname crumbcrust-class
#' @export
blackSesame_crumbcrust <- \() new(
  Class = 'crumbcrust',
  flour = c(Wegmans_breadFlr = 250), 
  seed = c(Greenmax_blackSesame = 250), 
  #butter = 100, 
  water = 25, sugar = 70,
  review = 'try')


