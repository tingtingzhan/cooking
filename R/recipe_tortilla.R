




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
#' @name tortilla-class
#' @export
setClass(Class = 'tortilla', contains = 'recipe', prototype = prototype(
  flour = c(Wegmans_breadFlr = 625), # 5 cup
  salt_tsp = 1/2,
  #instruction (legacy) = c(
  #  'Roll-Stack-Roll, separated by ample corn starch'
  #),
  #note (legacy) = c(
  #  'Too soft for stack-&-cook (youtube _edTKRGk38Y, t0sYquhXIFg)'
  #),
  portion = 75 # 80g too big for 10in; 60g not easy to align in roll-stack-roll
  # machine (legacy) = list(
  #  'Le Creuset Crepe Pan 11in/28cm + KitchenAid downdraft stove top' = c(
  #    'No oil on pan',
  #    'Halfway between Medium to High, not too hot for hand+spatula'
  #  )
  #)
))


ViewRoad_tortilla <- \() new(
  Class = 'recipe', author = 'View on the Road', flavor = 'Tortilla',
  youtube = 'fA68XXQJN4Y', 
  flour = c(KingArthur_allPurposeFlr = 2.5 * 120),
  salt_tsp = 1,
  lard_cup = c(Morrell_lard = 1/2),
  water_cup = 1)


ViewRoad_pumpkin_tortilla <- \() new(
  Class = 'recipe', author = 'View on the Road', flavor = 'Pumpkin Tortilla',
  youtube = 'hPMc1a19CsU', 
  flour_cup = c(KingArthur_allPurposeFlr = 1.25),
  puree_cup = c(Libbys_pumpkin = 1/3),
  dairy_cup = c(Kerrygold_butter = 1/4), # butter vegetable shortening 
  salt_tsp = 1/4,
  spice_tsp = c(SimplyOrganic_pumpkinSpice = 1.5),
  sugar = 12,
  vanilla_tsp = 1,
  water_cup = 1/3)




#' @rdname tortilla-class
#' @aliases tortillaOlive-class
#' @export
setClass(Class = 'tortillaOlive', contains = 'tortilla', prototype = prototype(
  class2 = 'Tortilla(\u6a44\u6984\u6cb9,\u54b8)',
  oil = c(Wegmans_olive_oil = 30)
))


#' @rdname tortilla-class
#' @aliases tortillaLard-class
#' @export
setClass(Class = 'tortillaLard', contains = 'tortilla', prototype = prototype(
  class2 = 'Tortilla(\u732a\u6cb9,\u751c)',
  lard = 30, # 1 cup, 228g
  sugar = 50
))


tortillaOlive <- \() new(
  Class = 'tortillaOlive',
  water = 370, # based on [pumpkin_tortillaOlive]
  review = 'A hypothetical model')

tortillaLard <- \() new(
  Class = 'tortillaLard',
  water = 370,
  review = 'A hypothetical model')


#' @rdname tortilla-class
#' @export
pumpkin_tortillaOlive <- \() new(
  Class = 'tortillaOlive', 
  puree = c(Libbys_pumpkin = 520), 
  review = 'not completely satisfied')

#' @rdname tortilla-class
#' @export
tomato_tortillaOlive <- \() new(
  Class = 'tortillaOlive', 
  puree = c(WegmansOrganic_tomato = 520),
  review = c('try'))


#' @rdname tortilla-class
#' @export
pumpkin_tortillaLard <- \() new(
  Class = 'tortillaLard',
  puree = c(Libbys_pumpkin = 520),
  review = 'try')


#' @rdname tortilla-class
#' @export
tomato_tortillaLard <- \() new(
  Class = 'tortillaLard', 
  puree = c(WegmansOrganic_tomato = 520),
  review = c('try'))



xiaogaojie_flatbread <- \() new(
  Class = 'recipe', flavor = 'Flatbread',
  flour = c(KingArthur_allPurposeFlr = 300),
  water = 150+15,
  yeast_tsp = 1/4,
  dairy = c(Kerrygold_butter = 40),
  salt_tsp = 1/4,
  xiaogaojie = '_edTKRGk38Y')




