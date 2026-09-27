

# According to 
# https://www.kingarthurbaking.com/pro/formulas
# Baker's percentage of water is
# added-water : flour
# water in flour is *not* included!!!



#' @title Raw Ingredients and Recipe
#' 
#' @description 
#' \linkS4class{raw.} allows negative ingredients.
#' 
#' @slot homemade \link[base]{numeric} vector
#' @slot misc,misc_tsp,misc_Tbsp,misc_cup \link[base]{numeric} vector, weight of one or more miscellaneous ingredients (in grams)
#' 
#' @slot puree,puree_tsp,puree_Tbsp,puree_cup \link[base]{numeric} vector, weight of one or more puree (in grams)
#' 
#' @slot fruit \link[base]{numeric} vector, weight of fresh fruit pulp or juice (in grams)
#' @slot fruit_pc \link[base]{numeric} vector, number of fresh fruit pulp or juice
#' 
#' @slot dairy,dairy_tsp,dairy_Tbsp,dairy_cup,dairy_brick \link[base]{numeric} scalar, weight of dairy products (in grams)
#' 
#' @slot oil,oil_tsp,oil_Tbsp,oil_cup \link[base]{numeric} scalar, weight (in grams) and volume of liquid oil
#' @slot fat,fat_tsp,fat_Tbsp,fat_cup \link[base]{numeric} scalar, weight (in grams) and volume of solid fat
#' 
#' @slot egg,egg_pc \link[base]{numeric} \link[base]{vector}s, numbers of large egg (52 grams each), egg yolks (17.3 grams each) and whites (34.7 grams each)
#' 
#' @slot tea,tea_pc \link[base]{numeric} \link[base]{vector}s, weight of loose tea in grams and number of tea bags, respectively
#' 
#' @slot flour,flour_tsp,flour_Tbsp,flour_cup \link[base]{numeric} \link[base]{vector}, weight of King Arthur all purpose flour (in grams)
#' @slot beverage,beverage_tsp,beverage_Tbsp,beverage_cup \link[base]{numeric} \link[base]{vector}
#' 
#' @slot starch,starch_tsp,starch_Tbsp,starch_cup \link[base]{numeric} scalar or \link[base]{vector}, named weight (in grams) and volume of various starch
#' 
#' @slot grain,grain_tsp,grain_Tbsp,grain_cup \link[base]{numeric} scalar or \link[base]{vector}, named weight of various grains
#' 
#' @slot bean \link[base]{numeric} \link[base]{vector}, weight of dry beans (in grams)
#' 
#' @slot nut \link[base]{numeric} scalar, weight of various dry nuts (in grams)
#' 
#' @slot sugar,sugar_tsp,sugar_Tbsp,sugar_cup \link[base]{numeric} scalar, weight (in grams) and volume of 10x powdered confectioners sugar 
#' 
#' @slot syrup,syrup_tsp,syrup_Tbsp,syrup_cup \link[base]{numeric} scalar or \link[base]{vector}, weight (in grams) and volume of various (maple) syrup
#' 
#' @slot NaHCO3,NaHCO3_tsp,NaHCO3_Tbsp,NaHCO3_cup \link[base]{numeric} scalars, weight (in grams) and volume of Arm and Hammer baking soda
#' 
#' @slot Na2CO3,Na2CO3_tsp,Na2CO3_Tbsp,Na2CO3_cup \link[base]{numeric} scalars, 
#' weight (in grams) and volume of Na2CO3, respectively.
#' Na2CO3 is made from baking Arm and Hammer baking soda, 200F for 30 minutes
#' 
#' @slot bakingPowder,bakingPowder_tsp,bakingPowder_Tbsp,bakingPowder_cup \link[base]{numeric} scalar, weight (in grams) and volume of baking powder
#' @slot salt,salt_tsp,salt_Tbsp,salt_cup \link[base]{numeric} scalar, weight (in grams) and volume of salt
#' @slot msg,msg_tsp,msg_Tbsp,msg_cup \link[base]{numeric} scalar, weight (in grams) and volume of monosodium glutamate (MSG)
#' @slot vanilla,vanilla_tsp,vanilla_Tbsp,vanilla_cup \link[base]{numeric} scalar, weight (in grams) and volume of vanilla extract
#' 
#' @slot blackSesame \link[base]{numeric} scalar, weight (in grams) of Greenmax powdered black sesame seed
#' 
#' @slot cocoa,cocoa_tsp,cocoa_Tbsp,cocoa_cup \link[base]{numeric} scalar, weight (in grams) and volume of Dutch-processed cocoa powder
#' @slot matcha,matcha_tsp,matcha_Tbsp,matcha_cup \link[base]{numeric} scalar, weight (in grams) and volume of culinary matcha powder 
#' @slot spice,spice_tsp,spice_Tbsp,spice_cup named \link[base]{numeric} \link[base]{vector}, weight (in grams) and volume of compound spices
#' 
#' @slot coffee,coffee_tsp,coffee_Tbsp,coffee_cup \link[base]{numeric} scalar, weight (in grams) and volume of `superior = 'NescafeGold_blonde'`
#' 
#' @slot pork \link[base]{numeric} vector, weight of one or more cuts of pork (in grams)
#' @slot beef \link[base]{numeric} vector, weight of one or more cuts of beef (in grams)
#' @slot lamb \link[base]{numeric} vector, weight of one or more cuts of lamb (in grams)
#' @slot chicken \link[base]{numeric} vector, weight of one or more cuts of chicken (in grams)
#' @slot shrimp \link[base]{numeric} vector, weight of shrimp (in grams)
#' @slot seafood \link[base]{numeric} vector, weight of one or more other sea food (in grams)
#' 
#' @slot vegetable \link[base]{numeric} vector, weight of one or more vegetables (in grams)
#' 
#' @slot water,water_tsp,water_Tbsp,water_cup \link[base]{numeric} scalar, weight of water (in grams)
#' @slot water_ext \link[base]{numeric} scalar, weight of extra water (in grams) to hydrate powders in a dough
#' @slot water40 \link[base]{numeric} scalar, weight of warm (100F–110F, 37.8C-43.3C) water (in grams) 
#' @slot water70 \link[base]{numeric} scalar, weight of hot (70C-75C) water (in grams) 
#' @slot water80,water80_tsp,water80_Tbsp,water80_cup \link[base]{numeric} scalar, weight of hot (80C, 175F) water (in grams) 
#' @slot water90 \link[base]{numeric} scalar, weight of hot (90C, 195F) water (in grams) 
#' @slot water95 \link[base]{numeric} scalar, weight of hot (95C, 203F) water (in grams) 
#' @slot boilingWater \link[base]{numeric} scalar, weight of boiling water (in grams)
#' @slot iceWater \link[base]{numeric} scalar, weight of ice water (in grams)
#' @slot carbonatedWater \link[base]{numeric} scalar, weight of carbonated water (in grams)
#' @slot shavedIce \link[base]{numeric} scalar, weight of shaved ice (in grams)
#' @slot ice \link[base]{numeric} scalar, weight of ice (in grams)
#' 
#' @slot sauce,sauce_tsp,sauce_Tbsp,sauce_cup \link[base]{numeric} vector, weight (in grams) and volume of one or more sauces
#' @slot liqueur,liqueur_tsp,liqueur_Tbsp,liqueur_cup \link[base]{numeric} vector, weight (in grams) and volume of one or more liqueurs
#' 
#' @slot yeast,yeast_tsp,yeast_Tbsp,yeast_cup \link[base]{numeric} scalar, weight (in grams) and volume of yeast
#' 
#' @slot gelatin,gelatin_pc \link[base]{numeric} \link[base]{vector}s
#' 
#' @name raw_recipe
#' @aliases raw.-class
#' @export
setClass(Class = 'raw.', slots = c(
  # dQuote('raw') has a sealed class definition and cannot be redefined
  
  homemade = 'numeric',
  
  misc = 'numeric', misc_tsp = 'numeric', misc_Tbsp = 'numeric', misc_cup = 'numeric',
  puree = 'numeric', puree_tsp = 'numeric', puree_Tbsp = 'numeric', puree_cup = 'numeric',
  
  fruit = 'numeric', 
  fruit_pc = 'numeric',
  
  oil = 'numeric', oil_tsp = 'numeric', oil_Tbsp = 'numeric', oil_cup = 'numeric', 
  
  fat = 'numeric', fat_tsp = 'numeric', fat_Tbsp = 'numeric', fat_cup = 'numeric',
  
  egg = 'numeric', egg_pc = 'numeric', 
  
  tea = 'numeric', tea_pc = 'numeric', 
  
  dairy = 'numeric', dairy_tsp = 'numeric', dairy_Tbsp = 'numeric', dairy_cup = 'numeric', dairy_brick = 'numeric',
  
  yeast = 'numeric', yeast_tsp = 'numeric', yeast_Tbsp = 'numeric', yeast_cup = 'numeric',
  
  sugar = 'numeric', sugar_tsp = 'numeric', sugar_Tbsp = 'numeric', sugar_cup = 'numeric',
  syrup = 'numeric', syrup_tsp = 'numeric', syrup_Tbsp = 'numeric', syrup_cup = 'numeric',
  salt = 'numeric', salt_tsp = 'numeric', salt_Tbsp = 'numeric', salt_cup = 'numeric',
  msg = 'numeric', msg_tsp = 'numeric', msg_Tbsp = 'numeric', msg_cup = 'numeric',
  NaHCO3 = 'numeric', NaHCO3_tsp = 'numeric', NaHCO3_Tbsp = 'numeric', NaHCO3_cup = 'numeric',
  Na2CO3 = 'numeric', Na2CO3_tsp = 'numeric', Na2CO3_Tbsp = 'numeric', Na2CO3_cup = 'numeric',
  bakingPowder = 'numeric', bakingPowder_tsp = 'numeric', bakingPowder_Tbsp = 'numeric', bakingPowder_cup = 'numeric',
  
  flour = 'numeric', flour_tsp = 'numeric', flour_Tbsp = 'numeric', flour_cup = 'numeric',
  starch = 'numeric', starch_tsp = 'numeric', starch_Tbsp = 'numeric', starch_cup = 'numeric',
  beverage = 'numeric', beverage_tsp = 'numeric', beverage_Tbsp = 'numeric', beverage_cup = 'numeric', 
  
  grain = 'numeric', grain_tsp = 'numeric', grain_Tbsp = 'numeric', grain_cup = 'numeric',
  bean = 'numeric',
  nut = 'numeric',
  
  vanilla = 'numeric', vanilla_tsp = 'numeric', vanilla_Tbsp = 'numeric', vanilla_cup = 'numeric',
  cocoa = 'numeric', cocoa_tsp = 'numeric', cocoa_Tbsp = 'numeric', cocoa_cup = 'numeric',
  coffee = 'numeric', coffee_tsp = 'numeric', coffee_Tbsp = 'numeric', coffee_cup = 'numeric',
  matcha = 'numeric', matcha_tsp = 'numeric', matcha_Tbsp = 'numeric', matcha_cup = 'numeric', 
  blackSesame = 'numeric',
  spice = 'numeric', spice_tsp = 'numeric', spice_Tbsp = 'numeric', spice_cup = 'numeric',
  
  pork = 'numeric',
  beef = 'numeric',
  lamb = 'numeric',
  chicken = 'numeric',
  shrimp = 'numeric',
  seafood = 'numeric',
  
  vegetable = 'numeric',
  
  water = 'numeric', water_tsp = 'numeric', water_Tbsp = 'numeric', water_cup = 'numeric',
  water_ext = 'numeric',
  iceWater = 'numeric',
  carbonatedWater = 'numeric',
  shavedIce = 'numeric',
  ice = 'numeric',
  water40 = 'numeric', water70 = 'numeric', 
  water80 = 'numeric', water80_tsp = 'numeric', water80_Tbsp = 'numeric', water80_cup = 'numeric',
  water90 = 'numeric', water95 = 'numeric',
  boilingWater = 'numeric',
  
  sauce = 'numeric', sauce_tsp = 'numeric', sauce_Tbsp = 'numeric', sauce_cup = 'numeric',
  
  liqueur = 'numeric', liqueur_tsp = 'numeric', liqueur_Tbsp = 'numeric', liqueur_cup = 'numeric',
  
  gelatin = 'numeric', gelatin_pc = 'numeric'
))





#' @rdname raw_recipe
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'raw.', definition = \(object) print.raw.(object))



#' @method print raw.
#' @export
print.raw. <- \(x, ...) {
  
  y <- x |>
    as(Class = 'nutrition')
  
  if (length(y@name)) {
    y@name |> col_grey() |> style_bold() |> cat()
    cat('\n')
  }
  
  cat('\n')
  
  nm_ <- y |>
    attr(which = 'info', exact = TRUE) |>
    rownames()
  
  # prt_raw_vol(x@homemade) # does not work yet; future work.
  mapply(FUN = \(nm, gram) {
    sprintf(fmt = '%s %.0f grams', nm, gram) |> 
      cli_text() # no returned value
  }, nm = nm_[names(x@homemade)], gram = x@homemade)
  # can**not** ?cli::cli_text a \link[base]{vector}; # 'Newlines are *not* preserved'
  
  prt_raw_vol(x@shrimp)
  prt_raw_vol(x@seafood)
  prt_raw_vol(x@pork)
  prt_raw_vol(x@beef)
  prt_raw_vol(x@lamb)
  prt_raw_vol(x@chicken)
  
  prt_raw_vol(x@flour)
  prt_raw_vol(x@starch)
  prt_raw_vol(x@sugar)
  
  prt_raw_vol(x@beverage)
  prt_raw_vol(x@puree)
  prt_raw_pc(x@fruit)
  
  prt_raw_vol(x@sauce)
  prt_raw_vol(x@oil)
  prt_raw_vol(x@liqueur)
   
  prt_raw_vol(x@nut)
  prt_raw_vol(x@blackSesame) # to consolidate with @nut ?
  prt_raw_vol(x@grain)
  prt_raw_vol(x@bean)
  
  prt_raw_vol(x@fat)
  prt_raw_vol(x@dairy)
  prt_raw_vol(x@vegetable)
  
  prt_raw_vol(x@spice)
  prt_raw_vol(x@matcha)
  prt_raw_vol(x@coffee)
  prt_raw_vol(x@cocoa)
  
  prt_raw_vol(x@yeast)
  
  prt_raw_pc(x@egg)
  prt_raw_pc(x@gelatin)
  prt_raw_pc(x@tea)
  
  prt_raw_vol(x@misc)
  
  
  
  has_vol <- c(
    x@vanilla,
    x@salt, x@msg, x@NaHCO3, x@Na2CO3, x@bakingPowder,
    x@syrup
  )
  if (length(has_vol)) sprintf(fmt = '%s %.1f grams %s\n', nm_[names(has_vol)], has_vol, fmt_vol(has_vol)) |> lapply(FUN = cli_text)
  
  if (length(x@water)) {
    if (!length(x@water_ext)) {
      sprintf(fmt = '%s Water %.0f grams %s\n', col_orchid4('\u5e38\u6e29\u6c34'), x@water, fmt_vol(x@water)) |> cli_text()
    } else {
      water <- sum_by_name(x@water, x@water_ext)
      sprintf(fmt = '%s Water %.0f=%.0f%s grams %s\n', col_orchid4('\u5e38\u6e29\u6c34'), water, x@water, sprintf('+%.0f', x@water_ext) |> col_br_red(), fmt_vol(water)) |> cli_text()
    }
  }
  
  if (length(x@water40)) sprintf(fmt = '%s Warm Water, 104\u00b0F %.0f grams %s\n', col_orchid4('40\u00b0C\u6e29\u6c34'), x@water40, fmt_vol(x@water40)) |> cli_text()
  if (length(x@water70)) sprintf(fmt = '%s Hot Water, 160\u00b0F %.0f grams %s\n', col_orchid4('70\u00b0C\u70ed\u6c34'), x@water70, fmt_vol(x@water70)) |> cli_text()
  if (length(x@water80)) sprintf(fmt = '%s Hot Water, 175\u00b0F %.0f grams %s\n', col_orchid4('80\u00b0C\u70ed\u6c34'), x@water80, fmt_vol(x@water80)) |> cli_text()
  if (length(x@water90)) sprintf(fmt = '%s Hot Water, 195\u00b0F %.0f grams %s\n', col_orchid4('90\u00b0C\u70ed\u6c34'), x@water90, fmt_vol(x@water90)) |> cli_text()
  if (length(x@water95)) sprintf(fmt = '%s Hot Water, 203\u00b0F %.0f grams %s\n', col_orchid4('95\u00b0C\u70ed\u6c34'), x@water95, fmt_vol(x@water95)) |> cli_text()
  if (length(x@boilingWater)) sprintf(fmt = '%s Boiling Water %.0f grams %s\n', col_orchid4('\u5f00\u6c34'), x@boilingWater, fmt_vol(x@boilingWater)) |> cli_text()
  if (length(x@iceWater)) sprintf(fmt = '%s Iced Water %.0f grams %s\n', col_orchid4('\u51b0\u6c34'), x@iceWater, fmt_vol(x@iceWater)) |> cli_text()
  if (length(x@carbonatedWater)) sprintf(fmt = '%s Carbonated Water %.0f grams %s\n', col_orchid4('\u6c14\u6ce1\u6c34'), x@carbonatedWater, fmt_vol(x@carbonatedWater)) |> cli_text()
  if (length(x@shavedIce)) sprintf(fmt = '%s Shaved Ice\U1f367 %.0f grams %s\n', col_orchid4('\u51b0\u6c99'), x@shavedIce, fmt_vol(x@shavedIce)) |> cli_text()
  if (length(x@ice)) sprintf(fmt = '%s Ice\U1f9ca Cubes %.0f grams\n', col_orchid4('\u51b0\u5757'), x@ice) |> cli_text()
  
  cat('\n')
  
}






setMethod(f = initialize, signature = 'raw.', definition = \(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  x <- x |> 
    combnPc(which = 'gelatin') |>
    combnPc(which = 'egg') |>
    combnPc(which = 'fruit') |>
    combnPc(which = 'tea') |>
    combnVol(which = 'flour') |>
    combnVol(which = 'water', nm = 'Wegmans_water') |>
    addname1(which = 'iceWater', nm = 'Wegmans_water') |>
    addname1(which = 'carbonatedWater', nm = 'Wegmans_water') |>
    addname1(which = 'shavedIce', nm = 'Wegmans_water') |>
    addname1(which = 'ice', nm = 'Wegmans_water') |>
    addname1(which = 'water40', nm = 'Wegmans_water') |>
    addname1(which = 'water70', nm = 'Wegmans_water') |>
    combnVol(which = 'water80', nm = 'Wegmans_water') |>
    addname1(which = 'water90', nm = 'Wegmans_water') |>
    addname1(which = 'water95', nm = 'Wegmans_water') |> 
    addname1(which = 'water_ext', nm = 'Wegmans_water') |>
    addname1(which = 'boilingWater', nm = 'Wegmans_water') |>
    addname1(which = 'blackSesame', nm = 'Greenmax_blackSesame') |>
    combnVol(which = 'misc') |>
    combnVol(which = 'fat') |>
    combnVol(which = 'spice') |>
    # with density info
    combnVol(which = 'sugar', nm = 'US_10x') |>
    combnVol(which = 'syrup') |>
    combnVol(which = 'salt', nm = 'Morton_salt') |>
    combnVol(which = 'msg', nm = 'Ajinomoto_msg') |>
    combnVol(which = 'NaHCO3', nm = 'ArmHammer_NaHCO3') |>
    combnVol(which = 'Na2CO3', nm = 'Na2CO3') |>
    combnVol(which = 'bakingPowder', nm = 'TraderJoes_bakingPowder') |>
    combnVol(which = 'yeast', nm = 'Fleischmanns_instant') |>
    combnVol(which = 'matcha', nm = 'Ippodo_ikuyo') |>
    combnVol(which = 'cocoa', nm = 'KingArthur_Bensdorp') |>
    combnVol(which = 'coffee', nm = 'NescafeGold_blonde') |> 
    combnVol(which = 'vanilla', nm = 'NielsenMassey_Madagascar') |>
    combnVol(which = 'starch') |>
    combnVol(which = 'oil') |>
    combnVol(which = 'sauce') |>
    combnVol(which = 'liqueur') |>
    combnVol(which = 'dairy') |> 
    combnVol(which = 'grain') |> 
    meatName(animal = 'pork') |>
    meatName(animal = 'beef') |>
    meatName(animal = 'lamb') |>
    meatName(animal = 'chicken') |>
    addname1(which = 'shrimp', nm = 'Kirkland_shrimp_c31') |>
    addname1(which = 'nut')
  
  for (i in names(getSlots(x = 'raw.'))) {
    ival <- slot(object = x, name = i)
    # generic method '+' will create 0's
    if (anyNA(ival)) stop(i)
    if (length(ival) && all(ival == 0)) slot(object = x, name = i) <- numeric()
  }
  
  return(x)
  
})


