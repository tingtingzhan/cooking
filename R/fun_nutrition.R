

#' @title Get Nutrition
#' 
#' @param x ..
#' 
#' @name nutrition
#' @export
nutrition <- function(x) UseMethod(generic = 'nutrition')



#' @rdname nutrition
#' @export nutrition.character
#' @export
nutrition.character <- function(x) {
  if (length(x) != 1L || is.na(x) || !all(nzchar(x))) {
    print(x)
    stop('illegal nutrition names')
  }
  x0 <- parse(text = x)[[1L]]
  xval <- if (is.symbol(x0)) eval(call(name = x)) else eval(x0)
  if (inherits(xval, what = c('recipe'))) {
    ret <- nutrition.recipe(xval)
    ret@name_cli_glue_delay <- glue_cmd(sprintf(fmt = '%s \U1f3fa{.run [%s](cooking::%s())}', ret@name, x, x)) # no color
    #ret@name_cli_glue_delay <- glue_cmd(sprintf(
    #  fmt = '%s \U1f3fa{.run [%s](cooking::%s())}', 
    #  ret@name, 
    #  sprintf(fmt = '\033[0;32m%s\033[0m', x), # `[` messes up with `[%s]`
    #  x))
    return(ret)
  }
  return(nutrition(xval))
}

#' @rdname nutrition
#' @export nutrition.function
#' @export
nutrition.function <- function(x) nutrition(do.call(x, args = list()))



#' @rdname nutrition
#' @export nutrition.recipe
#' @export
nutrition.recipe <- function(x) {
  
  lost <- c('waterLost', 'fatLost', 'sugarLost')
  ingredient0 <- setdiff(names(which(getSlots('recipe') == 'numeric')), y = c('portion', lost))
  ingredient <- names(which(lengths(attributes(x)[ingredient0]) > 0L))
  
  atr <- attributes(x)[ingredient]
  atr$teabag <- getTealoose(x@teabag)
  
  total_raw <- sum(unlist(atr, use.names = FALSE))
  
  tool_slot <- names(which(getSlots('recipe') == 'tool'))
  waterLost <- sum(x@waterLost, unlist(lapply(tool_slot, FUN = function(i) slot(x, name = i)@waterLost), use.names = FALSE))
  total_lost <- sum(
    waterLost,
    unlist(attributes(x)[setdiff(lost, 'waterLost')], use.names = FALSE)
  )
  total <- total_raw - total_lost
  
  grams <- unlist(unname(atr))
  if (!length(grams)) stop('shouldnt happen!!!')
  grams_nm <- names(grams)
  names(grams_nm) <- grams_nm
  
  nutri <- lapply(grams_nm, FUN = nutrition.character)
  
  info <- nutrition_(dots = nutri)
  # print(info) # debug
  tmp <- (t.default(grams) %*% info)[1, , drop = TRUE]
  calorie <- tmp['calorie']
  carbohydrate <- tmp['carbohydrate']
  sugar <- tmp['sugar'] - sum(x@sugarLost)
  addedSugar <- max(0, tmp['addedSugar'] - sum(x@sugarLost))
  sodium <- tmp['sodium']
  fat <- tmp['fat'] - sum(x@fatLost)
  cholesterol <- tmp['cholesterol']
  protein <- tmp['protein']
  alcohol <- tmp['alcohol']
  water <- tmp['water']
  waterCooked <- tmp['water'] - waterLost
  usd <- tmp['usd']
  
  flour <- sum(x@flour)
  pastryFlour <- sum(x@pastryFlour)
  breadFlour <- sum(x@breadFlour)
  wholeWheatFlour <- sum(x@wholeWheatFlour)
  mix0_wheat_flour <- c(flour = flour, pastry = pastryFlour, bread = breadFlour, wheat = wholeWheatFlour)
  mix_wheat_flour <- sum(mix0_wheat_flour)
  
  glutenFreeFlour <- sum(x@glutenFreeFlour)
  wheatGluten <- sum(x@wheatGluten)
  cornmeal <- sum(x@cornmeal)
  coconut <- sum(x@coconut)
  
  riceFlour <- sum(x@riceFlour, x@glutinousRiceFlour)
  
  puree <- sum(x@puree, x@pumpkin, x@pumpkinPieMix, x@strawberry, x@pineapple, x@pear, x@mandarine, x@mango, x@tomato, x@darkCherry, x@yellowCorn, x@durian, x@applesauce, x@banana)
  starch <- sum(x@starch)
  drymilk <- sum(x@drymilk)
  tea <- sum_.(getTealoose(x@teabag), x@tealoose)
  
  devrecipe <- getOption('devrecipe') 
  
  ret <- new(
    Class = 'nutrition', 
    name = x@alias,
    #review = x@review,
    servingGram = total, # after sutracting everything lost!!
    usd = unname(usd), # `recipe` already dealt with currency conversion
    calorie = if (calorie) calorie else numeric(),
    carbohydrate = if (carbohydrate) carbohydrate else numeric(),
    sugar = if (sugar) sugar else numeric(),
    addedSugar = if (addedSugar) addedSugar else numeric(),
    alcohol = if (alcohol) alcohol else numeric(),
    sodium = if (sodium) sodium else numeric(),
    fat = if (fat) fat else numeric(),
    cholesterol = if (cholesterol) cholesterol else numeric(),
    protein = if (protein) protein else numeric(),
    # water = if (water) water else numeric(),
    water = if (waterCooked) waterCooked else numeric()
  )
  
  attr(ret, which = 'total_lost') <- total_lost
  
  attr(ret, which = 'uncooked') <- new(
    Class = 'uncooked',
    # `Base:Aerator` no longer matters :)
    #base <- sum(atr$gelatin, x@puree, x@water, x@water40, x@boilingWater, x@iceWater, x@dairy, x@flavor)
    #aerator <- sum(x@heavyCream, atr$eggWhite, x@sugar, x@brownSugar)
    #sprintf(fmt = '%.2f', base / aerator)
    # 'Gelatin:Water' = if ((gelatin <- sum(atr$gelatin)) & water) {
    #  equiv(actual = gelatin / water, ideal = devrecipe$gelatin2water(x))
    # },
    # 'SelfRising' = if (length(x@selfRisingFlour)) {
    #  ideal <- switch(class(x), pancake = .7)
    #  equiv(actual = x@selfRisingFlour / flour, ideal)
    #},
    # 'Acid:SelfRising' = if (length(x@selfRisingFlour)) {
    #  acid_weight <- x@flavor['CountryTime_Lemonade']
    #  acid_rate <- c(CountryTime_Lemonade = 1 - CountryTime_Lemonade()@sugar/CountryTime_Lemonade()@servingGram)
    #  acid <- sum(acid_weight * acid_rate, na.rm = TRUE)
    #  ideal <- switch(class(x), pancake =, pancakeMix = .0077)
    #  equiv(actual = acid / x@selfRisingFlour, ideal, margin = 1.01)
    #},
    #water = equiv(actual = if (water / total_raw > .8) NA_real_ else water / total_raw),
    water = equiv(actual = water / total_raw),
    alcohol = equiv(actual = alcohol / total_raw),
    carbohydrate = equiv(actual = carbohydrate / total_raw),
    sugar = if (TRUE | (sugar > addedSugar)) equiv(actual = sugar / total_raw) else new(Class = 'equiv'),
    addedSugar = equiv(actual = addedSugar / total_raw),
    fat = equiv(actual = fat / total_raw),
    sesameOil = equiv(actual = x@sesameOil / total_raw),
    greenPeppercornOil = equiv(actual = x@greenPeppercornOil / total_raw),
    #cholesterol = equiv(actual = cholesterol / total_raw),
    sodium = equiv(actual = sodium / total_raw),
    bakingPowder = equiv(actual = x@bakingPowder / total_raw),
    msg = equiv(actual = x@msg / total_raw),
    drymilk = equiv(actual = drymilk / total_raw),
    tea = equiv(actual = tea / total_raw),
    protein = equiv(actual = protein / total_raw),
    creamCheese = equiv(actual = sum(x@creamCheese) / total_raw),
    matcha = equiv(actual = x@matcha / total_raw),
    beet = equiv(actual = x@beet / total_raw),
    ginger = equiv(actual = x@ginger / total_raw),
    cumin = equiv(actual = x@cumin / total_raw),
    cilantro = equiv(actual = x@cilantro / total_raw),
    garlic = equiv(actual = x@garlic / total_raw),
    onion = equiv(actual = x@onion / total_raw),
    whitePepper = equiv(actual = x@whitePepper / total_raw),
    blackPepper = equiv(actual = x@blackPepper / total_raw),
    turmeric = equiv(actual = x@turmeric / total_raw),
    cinnamon = equiv(actual = x@cinnamon / total_raw),
    paprika = equiv(actual = x@paprika / total_raw),
    coriander = equiv(actual = x@coriander / total_raw),
    chiliMix = equiv(actual = x@chiliMix / total_raw),
    curry = equiv(actual = x@curry / total_raw),
    blackSesame = equiv(actual = x@blackSesame / total_raw),
    coconut = equiv(actual = x@coconut / total_raw),
    cocoa = equiv(actual = x@cocoa / total_raw),
    coffee = equiv(actual = x@coffee / total_raw),
    acai = equiv(actual = x@acai / total_raw),
    addedStarch = equiv(actual = starch / total_raw),
    gelatin = equiv(actual = x@gelatin / total_raw)
    # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total_raw)
  ) # else NULL
  
  attr(ret, which = 'cookedTexture') <- new(
    Class = 'cookedTexture',
    #water = equiv(actual = if (waterCooked / total > .8) NULL else waterCooked / total, ideal = devrecipe$water(x)),
    water = equiv(actual = waterCooked / total, ideal = devrecipe$water(x)),
    carbohydrate = equiv(actual = carbohydrate / total, ideal = devrecipe$carbohydrate(x)),
    NaHCO3 = equiv(actual = x@NaHCO3 / total), # , ideal = devrecipe$NaHCO3(x)
    fat = equiv(actual = fat / total, ideal = devrecipe$fat(x), margin = 1.2, ignore = .001),
    #cholesterol = equiv(actual = cholesterol / total),
    bakingPowder = equiv(actual = x@bakingPowder / total, ideal = devrecipe$bakingPowder(x)),
    protein = equiv(actual = protein / total),
    addedStarch = equiv(actual = starch / total, ideal = devrecipe$starch(x)),
    gelatin = equiv(actual = x@gelatin / total)
    # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total)
  )
  
  attr(ret, which = 'cookedFlavor') <- new(
    Class = 'cookedFlavor',
    alcohol = equiv(actual = alcohol / total, ideal = devrecipe$alcohol(x)),
    sugar = if (TRUE | (sugar > addedSugar)) equiv(actual = sugar / total, ideal = devrecipe$sugar(x)) else new(Class = 'equiv'),
    addedSugar = equiv(actual = addedSugar / total, ideal = devrecipe$addedSugar(x)),
    sesameOil = equiv(actual = x@sesameOil / total, ideal = devrecipe$sesameOil(x)),
    greenPeppercornOil = equiv(actual = x@greenPeppercornOil / total, ideal = devrecipe$greenPeppercornOil(x)),
    #cholesterol = equiv(actual = cholesterol / total),
    sodium = equiv(actual = sodium / total, ideal = devrecipe$sodium(x), ignore = .0001),
    msg = equiv(actual = x@msg / total),
    drymilk = equiv(actual = drymilk / total, ideal = devrecipe$drymilk(x)),
    tea = equiv(actual = tea / total), # , ideal = devrecipe$tea(x)
    creamCheese = equiv(actual = sum(x@creamCheese) / total, ideal = devrecipe$creamcheese(x)),
    matcha = equiv(actual = x@matcha / total, ideal = devrecipe$matcha(x)),
    beet = equiv(actual = x@beet / total, ideal = devrecipe$beet(x)),
    ginger = equiv(actual = x@ginger / total, ideal = devrecipe$ginger(x)),
    cumin = equiv(actual = x@cumin / total),
    cilantro = equiv(actual = x@cilantro / total),
    garlic = equiv(actual = x@garlic / total, ideal = devrecipe$garlic(x)),
    onion = equiv(actual = x@onion / total), # , ideal = devrecipe$onion(x)
    whitePepper = equiv(actual = x@whitePepper / total, ideal = devrecipe$whitePepper(x)),
    blackPepper = equiv(actual = x@blackPepper / total), # , ideal = devrecipe$blackPepper(x)
    turmeric = equiv(actual = x@turmeric / total), # , ideal = devrecipe$turmeric(x)
    cinnamon = equiv(actual = x@cinnamon / total), # , ideal = devrecipe$cinnamon(x)
    paprika = equiv(actual = x@paprika / total), # , ideal = devrecipe$paprika(x)
    coriander = equiv(actual = x@coriander / total, ideal = devrecipe$coriander(x)),
    chiliMix = equiv(actual = x@chiliMix / total),
    curry = equiv(actual = x@curry / total),
    blackSesame = equiv(actual = x@blackSesame / total, ideal = devrecipe$blackSesame(x)),
    coconut = equiv(actual = x@coconut / total),
    cocoa = equiv(actual = x@cocoa / total, ideal = devrecipe$cocoa(x)),
    coffee = equiv(actual = x@coffee / total, ideal = devrecipe$coffee(x)),
    acai = equiv(actual = x@acai / total, ideal = devrecipe$acai(x))
  )
  
  if (sum(mix0_wheat_flour > 0) > 1L) {
    
    attr(ret, which = 'mixWheatFlour') <- mix0_wheat_flour
    
    attr(ret, which = 'mixBaker') <- new(
      Class = 'mixBaker',
      puree = equiv(actual = puree / mix_wheat_flour),
      water = equiv(actual = water / mix_wheat_flour, ideal = devrecipe$water2wheatflourmix(x)),
      cornmeal = equiv(actual = sum(x@cornmeal) / mix_wheat_flour, ideal = devrecipe$cornmeal2wheatflourmix(x)),
      addedStarch = equiv(actual = starch / mix_wheat_flour),
      fat = equiv(actual = fat / mix_wheat_flour, ideal = devrecipe$fat2wheatflourmix(x)),
      blackSesame = equiv(actual = x@blackSesame / mix_wheat_flour),
      eggYolk = equiv(actual = x@eggYolk / mix_wheat_flour),
      eggWhite = equiv(actual = x@eggWhite / mix_wheat_flour),
      Na2CO3 = equiv(actual = x@Na2CO3 / mix_wheat_flour),
      NaHCO3 = equiv(actual = x@NaHCO3 / mix_wheat_flour),
      bakingPowder = equiv(actual = x@bakingPowder / mix_wheat_flour, ideal = devrecipe$bakingPowder2wheatflourmix(x)),
      salt = equiv(actual = x@salt / mix_wheat_flour),
      #sugar = equiv(actual = sugar / mix_wheat_flour),
      #addedSugar = equiv(actual = addedSugar / mix_wheat_flour),
      yeast = equiv(actual = sum(x@yeast) / mix_wheat_flour, ideal = devrecipe$yeast2wheatflourmix(x)),
      matcha = equiv(actual = x@matcha / mix_wheat_flour),
      cocoa = equiv(actual = x@cocoa / mix_wheat_flour),
      acai = equiv(actual = x@acai / mix_wheat_flour),
      coffee = equiv(actual = x@coffee / mix_wheat_flour)
    )
    
  } else {
    
    attr(ret, which = 'baker') <- if (flour) new(
      Class = 'baker',
      puree = equiv(actual = puree / flour),
      water = equiv(actual = water / flour, ideal = devrecipe$water2flour(x), margin = 1.01),
      cornmeal = equiv(actual = sum(x@cornmeal) / flour),
      addedStarch = equiv(actual = starch / flour),
      fat = equiv(actual = fat / flour, ideal = devrecipe$fat2flour(x), margin = 1.05, ignore = .01),
      blackSesame = equiv(actual = x@blackSesame / flour, ideal = devrecipe$blackSesame2flour(x)),
      eggYolk = equiv(actual = x@eggYolk / flour, ideal = devrecipe$eggYolk2flour(x)),
      eggWhite = equiv(actual = x@eggWhite / flour),
      Na2CO3 = equiv(actual = x@Na2CO3 / flour, ideal = devrecipe$Na2CO3_2flour(x)),
      NaHCO3 = equiv(actual = x@NaHCO3 / flour),
      bakingPowder = equiv(actual = x@bakingPowder / flour, ideal = devrecipe$bakingPowder2flour(x)),
      salt = equiv(actual = x@salt / flour, ideal = devrecipe$salt2flour(x)),
      #sugar = equiv(actual = sugar / flour),
      #addedSugar = equiv(actual = addedSugar / flour),
      yeast = equiv(actual = sum(x@yeast) / flour, ideal = devrecipe$yeast2flour(x), margin = 1.1),
      matcha = equiv(actual = x@matcha / flour),
      cocoa = equiv(actual = x@cocoa / flour),
      acai = equiv(actual = x@acai / flour),
      coffee = equiv(actual = x@coffee / flour)
    ) #else new(Class = 'baker')
    
    attr(ret, which = 'pastryBaker') <- if (pastryFlour & !glutenFreeFlour & !coconut & !cornmeal) new(
      Class = 'pastryBaker',
      puree = equiv(actual = puree / pastryFlour),
      water = equiv(actual = water / pastryFlour, ideal = devrecipe$water2pastryflour(x), margin = 1.01),
      gelatin = equiv(actual = x@gelatin / pastryFlour),
      cornmeal = equiv(actual = sum(x@cornmeal) / pastryFlour),
      addedStarch = equiv(actual = starch / pastryFlour),
      fat = equiv(actual = fat / pastryFlour, ideal = devrecipe$fat2pastryflour(x), margin = 1.05, ignore = .01),
      blackSesame = equiv(actual = x@blackSesame / pastryFlour, ideal = devrecipe$blackSesame2pastryflour(x)),
      eggYolk = equiv(actual = x@eggYolk / pastryFlour, ideal = devrecipe$eggYolk2pastryflour(x)),
      eggWhite = equiv(actual = x@eggWhite / pastryFlour),
      Na2CO3 = equiv(actual = x@Na2CO3 / pastryFlour, ideal = devrecipe$Na2CO3_2pastryflour(x)),
      NaHCO3 = equiv(actual = x@NaHCO3 / pastryFlour),
      bakingPowder = equiv(actual = x@bakingPowder / pastryFlour, ideal = devrecipe$bakingPowder2pastryflour(x)),
      salt = equiv(actual = x@salt / pastryFlour, ideal = devrecipe$salt2pastryflour(x)),
      #sugar = equiv(actual = sugar / pastryFlour),
      #addedSugar = equiv(actual = addedSugar / pastryFlour),
      yeast = equiv(actual = sum(x@yeast) / pastryFlour, ideal = devrecipe$yeast2pastryflour(x), margin = 1.1),
      matcha = equiv(actual = x@matcha / pastryFlour, ideal = devrecipe$matcha2pastryflour(x)),
      beet = equiv(actual = x@beet / pastryFlour, ideal = devrecipe$beet2pastryflour(x)),
      cocoa = equiv(actual = x@cocoa / pastryFlour),
      acai = equiv(actual = x@acai / pastryFlour, ideal = devrecipe$acai2pastryflour(x)),
      coffee = equiv(actual = x@coffee / pastryFlour)
    ) #else new(Class = 'pastryBaker')
    
    attr(ret, which = 'breadBaker') <- if (breadFlour & !glutenFreeFlour & !coconut) new(
      Class = 'breadBaker',
      puree = equiv(actual = puree / breadFlour),
      water = equiv(actual = water / breadFlour, ideal = devrecipe$water2breadflour(x), margin = 1.01),
      gelatin = equiv(actual = x@gelatin / breadFlour),
      cornmeal = equiv(actual = sum(x@cornmeal) / breadFlour, ideal = devrecipe$cornmeal2breadflour(x)),
      addedStarch = equiv(actual = starch / breadFlour),
      fat = equiv(actual = fat / breadFlour, ideal = devrecipe$fat2breadflour(x), margin = 1.05),
      blackSesame = equiv(actual = x@blackSesame / breadFlour, ideal = devrecipe$blackSesame2breadflour(x)),
      #eggYolk = equiv(actual = x@eggYolk / breadFlour, ideal = devrecipe$eggYolk2breadflour(x)),
      eggYolk = equiv(actual = x@eggYolk / breadFlour, ideal = devrecipe$eggYolk2breadflour(x)),
      eggWhite = equiv(actual = x@eggWhite / breadFlour),
      Na2CO3 = equiv(actual = x@Na2CO3 / breadFlour, ideal = devrecipe$Na2CO3_2breadflour(x)),
      NaHCO3 = equiv(actual = x@NaHCO3 / breadFlour),
      bakingPowder = equiv(actual = x@bakingPowder / breadFlour, ideal = devrecipe$bakingPowder2breadflour(x)),
      salt = equiv(actual = x@salt / breadFlour, ideal = devrecipe$salt2breadflour(x)),
      #sugar = equiv(actual = sugar / breadFlour),
      #addedSugar = equiv(actual = addedSugar / breadFlour),
      yeast = equiv(actual = sum(x@yeast) / breadFlour, ideal = devrecipe$yeast2breadflour(x), margin = 1.1),
      matcha = equiv(actual = x@matcha / breadFlour, ideal = devrecipe$matcha2breadflour(x)),
      beet = equiv(actual = x@beet / breadFlour, ideal = devrecipe$beet2breadflour(x)),
      cocoa = equiv(actual = x@cocoa / breadFlour),
      acai = equiv(actual = x@acai / breadFlour),
      coffee = equiv(actual = x@coffee / breadFlour)
    ) #else new(Class = 'breadBaker')
    
  }
  
  attr(ret, which = 'glutenFreeBaker') <- if (glutenFreeFlour & !breadFlour & !pastryFlour & !flour) new(
    Class = 'glutenFreeBaker',
    puree = equiv(actual = puree / glutenFreeFlour),
    water = equiv(actual = water / glutenFreeFlour, ideal = devrecipe$water2glutenFreeFlour(x), margin = 1.01),
    gelatin = equiv(actual = x@gelatin / glutenFreeFlour),
    addedStarch = equiv(actual = starch / glutenFreeFlour),
    fat = equiv(actual = fat / glutenFreeFlour, ideal = devrecipe$fat2glutenFreeFlour(x), margin = 1.05, ignore = .01),
    blackSesame = equiv(actual = x@blackSesame / glutenFreeFlour, ideal = devrecipe$blackSesame2glutenFreeFlour(x)),
    eggYolk = equiv(actual = x@eggYolk / glutenFreeFlour, ideal = devrecipe$eggYolk2glutenFreeFlour(x)),
    eggWhite = equiv(actual = x@eggWhite / glutenFreeFlour),
    Na2CO3 = equiv(actual = x@Na2CO3 / glutenFreeFlour, ideal = devrecipe$Na2CO3_2glutenFreeFlour(x)),
    NaHCO3 = equiv(actual = x@NaHCO3 / glutenFreeFlour),
    bakingPowder = equiv(actual = x@bakingPowder / glutenFreeFlour, ideal = devrecipe$bakingPowder2glutenFreeFlour(x)),
    salt = equiv(actual = x@salt / glutenFreeFlour, ideal = devrecipe$salt2glutenFreeFlour(x)),
    #sugar = equiv(actual = sugar / glutenFreeFlour),
    #addedSugar = equiv(actual = addedSugar / glutenFreeFlour),
    yeast = equiv(actual = sum(x@yeast) / glutenFreeFlour, ideal = devrecipe$yeast2glutenFreeFlour(x), margin = 1.1),
    matcha = equiv(actual = x@matcha / glutenFreeFlour),
    cocoa = equiv(actual = x@cocoa / glutenFreeFlour),
    acai = equiv(actual = x@acai / glutenFreeFlour),
    coffee = equiv(actual = x@coffee / glutenFreeFlour)
  ) #else new(Class = 'glutenFreeBaker')
  
  attr(ret, which = 'riceBaker') <- if (riceFlour) new(
    Class = 'riceBaker',
    water = equiv(actual = water / riceFlour, ideal = devrecipe$water2riceflour(x)),
    # rice = equiv(actual = x@riceFlour / riceFlour, ideal = devrecipe$rice2riceflour(x)),
    glutinousRice = equiv(actual = x@glutinousRiceFlour / riceFlour, ideal = devrecipe$glutinousRice2riceflour(x)),
    gelatin = equiv(actual = x@gelatin / riceFlour),
    fat = equiv(actual = fat / riceFlour, ideal = devrecipe$fat2riceflour(x), ignore = .01),
    blackSesame = equiv(actual = x@blackSesame / riceFlour),
    #sugar = equiv(actual = sugar / riceFlour),
    addedStarch = equiv(actual = starch / riceFlour, ideal = devrecipe$starch2riceflour(x)),
    matcha = equiv(actual = x@matcha / riceFlour, ideal = devrecipe$matcha2riceflour(x)),
    cocoa = equiv(actual = x@cocoa / riceFlour),
    acai = equiv(actual = x@acai / riceFlour),
    coffee = equiv(actual = x@coffee / riceFlour)
  ) #else new(Class = 'riceBaker')
  
  attr(ret, which = 'cocoaDx') <- if (length(x@cocoa)) new(
    Class = 'cocoaDx',
    alcohol = equiv(actual = alcohol / x@cocoa, ideal = devrecipe$alcohol2cocoa(x)),
    drymilk = equiv(actual = x@drymilk / x@cocoa, ideal = devrecipe$drymilk2cocoa(x)),
    sugar = if (TRUE | (sugar > addedSugar)) equiv(actual = sugar / x@cocoa) else new(Class = 'equiv'),
    addedSugar = equiv(actual = addedSugar / x@cocoa, ideal = devrecipe$addedSugar2cocoa(x)),
    coffee = equiv(actual = x@coffee / x@cocoa, ideal = devrecipe$coffee2cocoa(x))
  )
  
  attr(ret, which = 'info') <- info
  
  #review <- attr(info, which = 'review')
  #attr(ret, which = 'review') <- review[names(review) == class(x)]
  
  #machine <- attr(info, which = 'machine')
  #attr(ret, which = 'machine') <- unlist(lapply(machine, FUN = function(ifun) ifun(class(x))), use.names = FALSE)
  #attr(ret, which = 'machine') <- machine[names(machine) == class(x)]
  
  return(ret)
}



