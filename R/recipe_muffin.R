
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
#'  cornbreadMix(),
#'  subtract(cooking:::TraderJoes_cornbreadMix, sugar = 10.2),
#'  subtract(cooking:::WholeFoods365_cornbreadMix, sugar = 4),
#'  subtract(cooking:::Krusteaz_southern_cornbreadMix, sugar = .5),
#'  cooking:::BobsRedMill_cornbreadMix(),
#'  subtract(cooking:::Stonewall_cornbreadMix, sugar = 8.1),
#'  subtract(cooking:::Jiffy_cornMuffinMix, sugar = 5.5),
#'  subtract(cooking:::Fleischmanns_cornbreadMix, sugar = 5.1)
#' )
#' 
#' diagnose(
#'  cornbread(),
#'  subtract(cooking:::PreppyKitchen_cornbread, sugar = 17),
#'  subtract(cooking:::BethanyWeathersby_cornbread, sugar = 105),
#'  subtract(cooking:::bluegirl_cornbread, sugar = 108),
#'  subtract(cooking:::JoshuaWeissman_cornbread, sugar = 64, brownSugar = 23),
#'  cooking:::Jiffy_cornMuffin() |>
#'   as('nutrition') |>
#'   subtract(sugar = 32),
#'  subtract(cooking:::Wegmans_cornbread_recipe, sugar = 88),
#'  subtract(cooking:::Wegmans_cornbread, sugar = 10.5),
#'  cooking:::WholeFoods365_cornbread() |>
#'   as('nutrition') |>
#'   subtract(sugar = 64),
#'  cooking:::Stonewall_cornbread() |>
#'   as('nutrition') |>
#'   subtract(sugar = 117),
#'  cooking:::TraderJoes_cornbread() |>
#'   as('nutrition') |>
#'   subtract(sugar = 108),
#'  cooking:::Krusteaz_southern_cornbread() |>
#'   as('nutrition') |>
#'   subtract(sugar = 23),
#'  cooking:::BobsRedMill_cornbread() |>
#'   as('nutrition') |>
#'   subtract(sugar = 7),
#'  subtract(cooking:::Albertsons_cornbread, sugar = 25),
#'  cooking:::Fleischmanns_cornbread() |>
#'   as('nutrition') |>
#'   subtract(sugar = 100),
#'  cooking:::Quaker_cornbread()
#' )
#' @name muffin-class
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


#' @rdname muffin-class
#' @export
cornbreadMix <- \() new(
  Class = 'recipe', alias = 'Cornbread Mix',
  pastryFlour = c(Wegmans_pastry = 50), # breadFlour does **not** work!!!
  cornmeal = c(Albertsons_yellowCorn = 320),
  sugar = 45,
  bakingPowder_tsp = 1, # best, so far
  note = 'Do NOT pre-mix. Need to soak cornmeal alone in boiling water!'
)


#' @rdname muffin-class
#' @export
cornbread <- \() new(
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
    paste('must use', 'pastry flour' |> col_br_magenta() |> style_bold()),
    paste('I prefer', 'heavy cream' |> col_br_magenta() |> style_bold(), 'to vegetable oil'),
    paste('sugar 5.5%' |> col_br_magenta() |> style_bold(), 'tastes better than 5%')
  ))




