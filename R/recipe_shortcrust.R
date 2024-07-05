

#' @title \linkS4class{shortcrust} Recipes
#' 
#' @description ..
#' 
#' @examples
#' new(Class = 'shortcrust')
#' 
#' 
#' @name shortcrust
#' @aliases shortcrust-class
#' @export
setClass(Class = 'shortcrust', contains = 'recipe', prototype = prototype(
  alias_class = 'Shortcrust',
  # pastryFlour = 360, # original
  pastryFlour = 370, # to have 50% fat:flour
  butter = 227,
  sugar = 7.5,
  # salt_tsp = 1/4,
  iceWater = 50, # 60g-90g,
  instruction = c(
    'food processor',
    'Philips pasta maker'
  ),
  portion = c(
    # do NOT need pie weight!!
    
    # Emile Henry 9in pie dish: 1113; experimented with blackSesame_shortcrust()
    
    # below are blackSesame_cookie2022() data
    # 'Emile Henry 9in, full-edge' = 380,  # Robam: Air Fry 350F, 6min (7min, edge a little too brown after baking with cheesecake filling)
    # raw dough 400 (=1513-1113); baked 380 (=1493-1113); loose water 20/400 = 5%
    # Full edge, edge will crack after baking
    
    'Emile Henry 9in, half-edge' = 257, # confirmed! 
    # crust is buried under filling!
    # Robam: Air Fry 350F, 7min # Nice!!!
    # Half edge: raw dough 267 (=1380-1113); baked 257 (=1370-1113); loose water 10/267 = 3.75%
    
    # below are blackSesame_cookie2022() data
    # 'Emile Henry 5in, full-edge' = 445 - 320
    
    'Emile Henry 5in, half-edge' = 70 # ?
    # Half edge: raw dough 84 (=404-320); baked x2 (=x20-320); loose water (x1-x2)/x1 = 5%
  ),
  url = 'en.wikipedia.org/wiki/Shortcrust_pastry' # 'twice as much flour as fat by weight'
  
))

# preppykitchen = c('3_a4o30fTbA' = 'classic-pastry-crust')

