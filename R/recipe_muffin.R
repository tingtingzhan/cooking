
#' @title \linkS4class{muffin} Recipes
#' 
#' @description
#' Muffin, or batter bread recipes.
#' 
#' @references 
#' \url{https://en.wikipedia.org/wiki/Batter_bread}
#' 
#' @examples
#' cornbreadMix()
#' cornbread()
#' 
#' diagnose(
#'  cornbreadMix,
#'  subtract(TraderJoes_cornbreadMix, sugar = 10.2),
#'  subtract(WholeFoods365_cornbreadMix, sugar = 4),
#'  subtract(Krusteaz_southern_cornbreadMix, sugar = .5),
#'  BobsRedMill_cornbreadMix,
#'  subtract(Stonewall_cornbreadMix, sugar = 8.1),
#'  subtract(Jiffy_cornMuffinMix, sugar = 5.5),
#'  subtract(Fleischmanns_cornbreadMix, sugar = 5.1)
#' )
#' 
#' diagnose(
#'  cornbread,
#'  subtract(PreppyKitchen_cornbread, sugar = 17),
#'  subtract(BethanyWeathersby_cornbread, sugar = 105),
#'  subtract(bluegirl_cornbread, sugar = 108),
#'  subtract(JoshuaWeissman_cornbread, sugar = 64, brownSugar = 23),
#'  subtract(nutrition(Jiffy_cornMuffin), sugar = 32),
#'  subtract(Wegmans_cornbread_recipe, sugar = 88),
#'  subtract(Wegmans_cornbread, sugar = 10.5),
#'  subtract(nutrition(WholeFoods365_cornbread), sugar = 64),
#'  subtract(nutrition(Stonewall_cornbread), sugar = 117),
#'  subtract(nutrition(TraderJoes_cornbread), sugar = 108),
#'  subtract(nutrition(Krusteaz_southern_cornbread), sugar = 23),
#'  subtract(nutrition(BobsRedMill_cornbread), sugar = 7),
#'  subtract(Albertsons_cornbread, sugar = 25),
#'  subtract(nutrition(Fleischmanns_cornbread), sugar = 100),
#'  Quaker_cornbread
#' )
#' @name muffin
#' @aliases muffin-class
#' @export
setClass(Class = 'muffin', contains = 'recipe', prototype = prototype(
  alias_class = 'Muffin\U1f9c1',
  portion = c(
    'Staub deep skillet, 8.5in' = 1000,
    'Cupcake 2.75in' = 60
  ),
  RobamCT763 = RobamCT763(
    #treatment = c(
    #  'Preheat Staub deep skillet, 8.5in, for 10min'
    # crust on top is nice!
    # crust on bottom needs to be improved
    # .. pre-heat skillet for 5min
    # .. next time try: pre-heat skillet for 10min
    #),
    program = 'Steam Bake',
    fahrenheit = 375, 
    minute = c(
      # 'Staub Skillet (preheated; experimenting)' = 25, # try next time with more baking powder
      'Cupcake\U1f389' = 20 # crust perfect, inside too wet.  reduce water next time!
    )#,
    #cooling = paste(col_green('optional'), 'flip cast iron skillet to release. Cool on a rack')
  )
))


#' @rdname muffin
#' @export
cornbreadMix <- function() new(
  Class = 'recipe', alias = 'Cornbread Mix',
  pastryFlour = c(Wegmans_pastry = 50), # breadFlour does **not** work!!!
  cornmeal = c(Albertsons_yellowCorn = 320),
  sugar = 45,
  bakingPowder_tsp = 1, # best, so far
  note = 'Do NOT pre-mix. Need to soak cornmeal alone in boiling water!'
)


#' @rdname muffin
#' @export
cornbread <- function() new(
  Class = 'muffin', alias = 'Cornbread\U1f33d', 
  
  #cornbreadMix(), # will overwrite `@portion`!!
  pastryFlour = c(Wegmans_pastry = 50), # breadFlour does **not** work!!!
  cornmeal = c(Albertsons_yellowCorn = 320),
  sugar = 45,
  bakingPowder_tsp = 1, # best, so far
  
  egg_pc = 2,
  heavyCream = c(Lucerne = 175), 
  water95 = 320, # good for muffin; yet to experiment for skillet
  # waterLost = 45, # forget this, for now
  
  instruction = c(
    'mix cornmeal and hot water. Let dough sit for 5min',
    'mix in other ingredients'#,
    # paste(col_green('optional'), 'transfer to sizzling hot skillet (with cooking spray)')
  ),
  date = as.Date('2024-12-01'),
  pros = c(
    paste('must use', style_bold(col_br_magenta('pastry flour'))),
    paste('I prefer', style_bold(col_br_magenta('heavy cream')), 'to vegetable oil'),
    paste(style_bold(col_br_magenta('sugar 5.5%')), 'tastes better than 5%')
  ))




