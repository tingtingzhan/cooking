
#' @title Roman \linkS4class{thinCrust} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' thinCrust()
#' pumpkin_thinCrust()
#' 
#' @references
#' \url{https://en.wikipedia.org/wiki/Roman_pizza}
#' 
#' @name thinCrust
#' @aliases thinCrust-class
#' @export
setClass(Class = 'thinCrust', contains = 'recipe', prototype = prototype(
  # flour = c(Wegmans_bread = 475), # tested good
  
  # try
  breadFlour = 325, wholeWheatFlour = c(Wegmans_whiteWheat = 150), 
  
  yeast = 3,
  sugar = 10,
  oil = c(Wegmans_olive = 12),
  salt = 3,
  youtube = c(
    ref1 = 'n-YHUKZbLkI', 
    ref2 = '0eXzg3RaVFs'
  ),
  portion = 133,
  instruction = c(
    'Knead everthing except salt',
    'Rest in stand mixer bowl for 30min, add salt.  Level-2 for 3min',
    'Grease box with olive oil.  Divide.  Ferment in fridge >24hr, better 3 to 4 days',
    'Restore to room temperature (~3hr)',
    'Dust surface generally. Roll to 10 inch',
    'Do not put on too much mozarella cheese!!!',
    'Robam CT763, Air Fry, 390F.  Bake Emile Henry pizza stone on top rack for 25min', # 13min not enough, but slightly better than 7min
    'Transfer topped pizza onto pizza stone.  Add 30 sec (including reheat)'
    # 'Le Creuset crepe pan, stove top.  Sear pizza bottom.  Brush top with olive oil, tomato sauce.  Add cheese.',
  )
))

# bake 




#' @rdname thinCrust
#' @export
thinCrust <- function() new(
  Class = 'thinCrust', 
  # water = 295, # original recipe
  water = 300, # based on pumpkin puree experiment
  review = 'a hypothetical model')


#' @rdname thinCrust
#' @export
pumpkin_thinCrust <- function() new(
  Class = 'thinCrust',
  pumpkin = 420,
  review = c(
    'perfect wetness!',
    'Robam CT763 may not be able to heat pizza stone to desire temperature'
  )
)


#' @rdname thinCrust
#' @export
tomato_thinCrust <- function() new(
  Class = 'thinCrust',
  tomato = 420, # same with pumpkin
  review = 'try'
)




