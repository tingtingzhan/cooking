


#' @title \linkS4class{crepeCake} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' pumpkin_crepeCake()
#' mango_crepeCake()
#' pineapple_crepeCake()
#' tomato_crepeCake()
#' 
#' @name crepeCake
#' @aliases crepeCake-class
#' @export
setClass(Class = 'crepeCake', contains = 'recipe', prototype = prototype(
  alias_class = '\u5e73\u5e95\u9505\u86cb\u7cd5',
  eggYolk = 2, pastryFlour = 24,
  eggWhite = 2, sugar_tsp = 1, # need a little sugar to beat egg white
  butter = 1,
  youtube = c(
    ref1 = 'a0CfFS3xZ00', 
    ref2 = 'aVxX2YbKGKo'
  ),
  note = c('Do not cook more than one (1) recipe in Le Creuset crepe pan')
))




#' @rdname crepeCake
#' @export
pumpkin_crepeCake <- function() new(
  Class = 'crepeCake',
  pumpkin = 40,
  review = 'try')

#' @rdname crepeCake
#' @export
mango_crepeCake <- function() new(
  Class = 'crepeCake', 
  mango = 60, sugar_tsp = .25,
  # pastryFlour = 24, # default, could be too much
  machine = list('Le Creuset crepe pan' = 'Preheat with butter at Mid-to-High (1/2). Add batter, cover, wait for 20sec. Turn to Ultra Low to Low (1/2), 8min + 5min.'),
  review = c('Ultra Low to Low (1/2): too low',
             'Mid to High (1/2): too high, but do not stick')
  )

#' @rdname crepeCake
#' @export
pineapple_crepeCake <- function() new(
  Class = 'crepeCake', 
  pineapple = 40, sugar_tsp = .25,
  review = 'try')

#' @rdname crepeCake
#' @export
tomato_crepeCake <- function() new(
  Class = 'crepeCake', 
  tomato = 40, review = 'try')



