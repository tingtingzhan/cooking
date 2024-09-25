




#' @title \linkS4class{tortilla} Recipes
#' 
#' @description
#' \linkS4class{tortillaOlive} is a savory recipe made with olive oil.
#' 
#' \linkS4class{tortillaLard} is a sweet recipe made with pork fat.
#' 
#' @examples
#' # pumpkin_tortillaOlive()
#' 
#' @name tortilla
#' @aliases tortilla-class
#' @export
setClass(Class = 'tortilla', contains = 'recipe', prototype = prototype(
  flour = c(Wegmans_bread = 625), # 5 cup
  salt_tsp = 1/2,
  instruction = c(
    'Roll-Stack-Roll, separated by ample corn starch'
  ),
  note = c(
    'Too soft for stack-&-cook (youtube _edTKRGk38Y, t0sYquhXIFg)'
  ),
  portion = 75, # 80g too big for 10in; 60g not easy to align in roll-stack-roll
  machine = list(
    'Le Creuset Crepe Pan 11in/28cm + KitchenAid downdraft stove top' = c(
      'No oil on pan',
      'Halfway between Medium to High, not too hot for hand+spatula'
    )
  )
))


ViewRoad_tortilla <- function() new(
  Class = 'recipe', author = 'View on the Road', alias_flavor = 'Tortilla',
  youtube = 'fA68XXQJN4Y', 
  flour = 2.5 * 120,
  salt_tsp = 1,
  lard_cup = c(Morrell_lard = 1/2),
  water = 237)


ViewRoad_pumpkin_tortilla <- function() new(
  Class = 'recipe', author = 'View on the Road', alias_flavor = 'Pumpkin Tortilla',
  youtube = 'hPMc1a19CsU', 
  flour = 1.25 * 120,
  pumpkin = 122*2/3,
  butter = 227/4, # 1/4 cup of butter vegetable shortening 
  salt_tsp = 1/4,
  pumpkinSpice_tsp = 1.5,
  sugar = 12,
  vanilla_tsp = 1,
  water = 237/3)




#' @rdname tortilla
#' 
#' @aliases tortillaOlive-class
#' @export
setClass(Class = 'tortillaOlive', contains = 'tortilla', prototype = prototype(
  alias_class = 'Tortilla(\u6a44\u6984\u6cb9,\u54b8)',
  oil = c(Wegmans_olive = 30)
))


#' @rdname tortilla
#' @aliases tortillaLard-class
#' @export
setClass(Class = 'tortillaLard', contains = 'tortilla', prototype = prototype(
  alias_class = 'Tortilla(\u732a\u6cb9,\u751c)',
  lard = 30, # 1 cup, 228g
  sugar = 50
))


tortillaOlive <- function() new(
  Class = 'tortillaOlive',
  water = 370, # based on [pumpkin_tortillaOlive]
  review = 'A hypothetical model')

tortillaLard <- function() new(
  Class = 'tortillaLard',
  water = 370,
  review = 'A hypothetical model')


#' @rdname tortilla
#' @export
pumpkin_tortillaOlive <- function() new(Class = 'tortillaOlive', pumpkin = 520, review = 'not completely satisfied')

#' @rdname tortilla
#' @export
tomato_tortillaOlive <- function() new(
  Class = 'tortillaOlive', 
  tomato = 520,
  review = c('try'))


#' @rdname tortilla
#' @export
pumpkin_tortillaLard <- function() new(
  Class = 'tortillaLard',
  pumpkin = 520,
  review = 'try')


#' @rdname tortilla
#' @export
tomato_tortillaLard <- function() new(
  Class = 'tortillaLard', 
  tomato = 520,
  review = c('try'))



xiaogaojie_flatbread <- function() new(
  Class = 'recipe', alias_flavor = 'Flatbread',
  flour = 300,
  water = 150+15,
  yeast_tsp = 1/4,
  butter = 40,
  salt_tsp = 1/4,
  xiaogaojie = '_edTKRGk38Y')




