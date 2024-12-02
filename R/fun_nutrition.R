

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
    stop('nutrition name must be len-1 character')
  }
  return(eval(call(name = 'nutrition', x = parse(text = x)[[1L]])))
}

#' @rdname nutrition
#' @export nutrition.function
#' @export
nutrition.function <- function(x) {
  
  cl <- match.call()
  if (is.symbol(cl$x)) {
    # to pass correct call to [nutrition.recipe]
    cl[[1L]] <- quote(nutrition)
    cl$x <- as.call(list(cl$x)) # wow!
    return(eval(cl))
  } 
  
  # will not pass correct call to [nutrition.recipe]
  # when used in lapply(., FUN = nutrition)
  # .. when `cl$x` will be `X[[i]]`
  return(nutrition(x())) 
}


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
  
  cl <- match.call()
  x. <- as.list(cl$x) # `cl$x`, e.g. `quote(soymilk())`
  if (length(x.) == 1L) {
    if (!is.symbol(x.[[1L]])) stop('shouldnt happen')
    x_ <- as.character(x.[[1L]])
    if (!identical(x_, 'x')) { # from [nutrition.function] in ?base::lapply
      ret@name_glue <- sprintf(fmt = '%s \U1f3fa{.run [%s](cooking::%s())}', x@alias, style_bold(col_yellow(x_)), x_)
    } # else do nothing
  }
  
  attr(ret, which = 'total_lost') <- total_lost
  
  attr(ret, which = 'uncooked') <- new(
    # focus on material, *not* on nutrition!!
    Class = 'uncooked',
    # `Base:Aerator` no longer matters :)
    #base <- sum(atr$gelatin, x@puree, x@water, x@water40, x@boilingWater, x@iceWater, x@dairy, x@flavor)
    #aerator <- sum(x@heavyCream, atr$eggWhite, x@sugar, x@brownSugar)
    #sprintf(fmt = '%.2f', base / aerator)
    # 'Gelatin:Water' = if ((gelatin <- sum(atr$gelatin)) & water) {
    #  new(Class = 'equiv', actual = gelatin / water, ideal = devrecipe$gelatin2water(x))
    # },
    # 'SelfRising' = if (length(x@selfRisingFlour)) {
    #  ideal <- switch(class(x), pancake = .7)
    #  new(Class = 'equiv', actual = x@selfRisingFlour / flour, ideal)
    #},
    # 'Acid:SelfRising' = if (length(x@selfRisingFlour)) {
    #  acid_weight <- x@flavor['CountryTime_Lemonade']
    #  acid_rate <- c(CountryTime_Lemonade = 1 - CountryTime_Lemonade()@sugar/CountryTime_Lemonade()@servingGram)
    #  acid <- sum(acid_weight * acid_rate, na.rm = TRUE)
    #  ideal <- switch(class(x), pancake =, pancakeMix = .0077)
    #  new(Class = 'equiv', actual = acid / x@selfRisingFlour, ideal, margin = 1.01)
    #},
    sesameOil = new(Class = 'equiv', actual = x@sesameOil / total_raw),
    greenPeppercornOil = new(Class = 'equiv', actual = x@greenPeppercornOil / total_raw),
    bakingPowder = new(Class = 'equiv', actual = x@bakingPowder / total_raw),
    NaHCO3 = new(Class = 'equiv', actual = x@NaHCO3 / total_raw),
    msg = new(Class = 'equiv', actual = x@msg / total_raw),
    drymilk = new(Class = 'equiv', actual = drymilk / total_raw),
    tea = new(Class = 'equiv', actual = tea / total_raw),
    creamCheese = new(Class = 'equiv', actual = sum(x@creamCheese) / total_raw),
    matcha = new(Class = 'equiv', actual = x@matcha / total_raw),
    beet = new(Class = 'equiv', actual = x@beet / total_raw),
    ginger = new(Class = 'equiv', actual = x@ginger / total_raw),
    cumin = new(Class = 'equiv', actual = x@cumin / total_raw),
    cilantro = new(Class = 'equiv', actual = x@cilantro / total_raw),
    garlic = new(Class = 'equiv', actual = x@garlic / total_raw),
    onion = new(Class = 'equiv', actual = x@onion / total_raw),
    whitePepper = new(Class = 'equiv', actual = x@whitePepper / total_raw),
    blackPepper = new(Class = 'equiv', actual = x@blackPepper / total_raw),
    turmeric = new(Class = 'equiv', actual = x@turmeric / total_raw),
    cinnamon = new(Class = 'equiv', actual = x@cinnamon / total_raw),
    paprika = new(Class = 'equiv', actual = x@paprika / total_raw),
    coriander = new(Class = 'equiv', actual = x@coriander / total_raw),
    chiliMix = new(Class = 'equiv', actual = x@chiliMix / total_raw),
    curry = new(Class = 'equiv', actual = x@curry / total_raw),
    blackSesame = new(Class = 'equiv', actual = x@blackSesame / total_raw),
    coconut = new(Class = 'equiv', actual = x@coconut / total_raw),
    cocoa = new(Class = 'equiv', actual = x@cocoa / total_raw),
    coffee = new(Class = 'equiv', actual = x@coffee / total_raw),
    acai = new(Class = 'equiv', actual = x@acai / total_raw),
    addedStarch = new(Class = 'equiv', actual = starch / total_raw),
    gelatin = new(Class = 'equiv', actual = x@gelatin / total_raw)
    # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total_raw)
  ) # else NULL
  
  attr(ret, which = 'cookedTexture') <- new(
    Class = 'cookedTexture',
    #water = new(Class = 'equiv', actual = if (waterCooked / total > .8) NULL else waterCooked / total, ideal = devrecipe$water(x)),
    water = new(Class = 'equiv', actual = waterCooked / total, ideal = devrecipe$water(x)),
    carbohydrate = new(Class = 'equiv', actual = carbohydrate / total, ideal = devrecipe$carbohydrate(x)),
    NaHCO3 = new(Class = 'equiv', actual = x@NaHCO3 / total), # , ideal = devrecipe$NaHCO3(x)
    fat = new(Class = 'equiv', actual = fat / total, ideal = devrecipe$fat(x), margin = 1.2, ignore = .001),
    #cholesterol = new(Class = 'equiv', actual = cholesterol / total),
    bakingPowder = new(Class = 'equiv', actual = x@bakingPowder / total, ideal = devrecipe$bakingPowder(x)),
    protein = new(Class = 'equiv', actual = protein / total),
    addedStarch = new(Class = 'equiv', actual = starch / total, ideal = devrecipe$starch(x)),
    gelatin = new(Class = 'equiv', actual = x@gelatin / total)
    # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total)
  )
  
  attr(ret, which = 'cookedFlavor') <- new(
    Class = 'cookedFlavor',
    alcohol = new(Class = 'equiv', actual = alcohol / total, ideal = devrecipe$alcohol(x)),
    sugar = if (TRUE | (sugar > addedSugar)) new(Class = 'equiv', actual = sugar / total, ideal = devrecipe$sugar(x)) else new(Class = 'equiv'),
    addedSugar = new(Class = 'equiv', actual = addedSugar / total, ideal = devrecipe$addedSugar(x)),
    sesameOil = new(Class = 'equiv', actual = x@sesameOil / total, ideal = devrecipe$sesameOil(x)),
    greenPeppercornOil = new(Class = 'equiv', actual = x@greenPeppercornOil / total, ideal = devrecipe$greenPeppercornOil(x)),
    #cholesterol = new(Class = 'equiv', actual = cholesterol / total),
    sodium = new(Class = 'equiv', actual = sodium / total, ideal = devrecipe$sodium(x), ignore = .0001),
    msg = new(Class = 'equiv', actual = x@msg / total),
    drymilk = new(Class = 'equiv', actual = drymilk / total, ideal = devrecipe$drymilk(x)),
    tea = new(Class = 'equiv', actual = tea / total), # , ideal = devrecipe$tea(x)
    creamCheese = new(Class = 'equiv', actual = sum(x@creamCheese) / total, ideal = devrecipe$creamcheese(x)),
    matcha = new(Class = 'equiv', actual = x@matcha / total, ideal = devrecipe$matcha(x)),
    beet = new(Class = 'equiv', actual = x@beet / total, ideal = devrecipe$beet(x)),
    ginger = new(Class = 'equiv', actual = x@ginger / total, ideal = devrecipe$ginger(x)),
    cumin = new(Class = 'equiv', actual = x@cumin / total),
    cilantro = new(Class = 'equiv', actual = x@cilantro / total),
    garlic = new(Class = 'equiv', actual = x@garlic / total, ideal = devrecipe$garlic(x)),
    onion = new(Class = 'equiv', actual = x@onion / total), # , ideal = devrecipe$onion(x)
    whitePepper = new(Class = 'equiv', actual = x@whitePepper / total, ideal = devrecipe$whitePepper(x)),
    blackPepper = new(Class = 'equiv', actual = x@blackPepper / total), # , ideal = devrecipe$blackPepper(x)
    turmeric = new(Class = 'equiv', actual = x@turmeric / total), # , ideal = devrecipe$turmeric(x)
    cinnamon = new(Class = 'equiv', actual = x@cinnamon / total), # , ideal = devrecipe$cinnamon(x)
    paprika = new(Class = 'equiv', actual = x@paprika / total), # , ideal = devrecipe$paprika(x)
    coriander = new(Class = 'equiv', actual = x@coriander / total, ideal = devrecipe$coriander(x)),
    chiliMix = new(Class = 'equiv', actual = x@chiliMix / total),
    curry = new(Class = 'equiv', actual = x@curry / total),
    blackSesame = new(Class = 'equiv', actual = x@blackSesame / total, ideal = devrecipe$blackSesame(x)),
    coconut = new(Class = 'equiv', actual = x@coconut / total),
    cocoa = new(Class = 'equiv', actual = x@cocoa / total, ideal = devrecipe$cocoa(x)),
    coffee = new(Class = 'equiv', actual = x@coffee / total, ideal = devrecipe$coffee(x)),
    acai = new(Class = 'equiv', actual = x@acai / total, ideal = devrecipe$acai(x))
  )
  
  if (cornmeal) {
    
    attr(ret, which = 'cornBaker') <- new(
      Class = 'cornBaker',
      # water = new(Class = 'equiv', actual = water/cornmeal), # depends on `flour` as well
      flour = new(Class = 'equiv', actual = flour/cornmeal, ideal = devrecipe$flour2cornmeal(x)),
      breadFlour = new(Class = 'equiv', actual = breadFlour/cornmeal, ideal = devrecipe$breadflour2cornmeal(x)),
      pastryFlour = new(Class = 'equiv', actual = pastryFlour/cornmeal, ideal = devrecipe$pastryflour2cornmeal(x)),
      eggYolk = new(Class = 'equiv', actual = x@eggYolk/cornmeal),
      eggWhite = new(Class = 'equiv', actual = x@eggWhite/cornmeal)
    )
    
  } else if (sum(mix0_wheat_flour > 0) > 1L) {
    
    #attr(ret, which = 'mixWheatFlour') <- mix0_wheat_flour
    
    attr(ret, which = 'mixBaker') <- new(
      Class = 'mixBaker',
      puree = new(Class = 'equiv', actual = puree / mix_wheat_flour),
      water = new(Class = 'equiv', actual = water / mix_wheat_flour, ideal = devrecipe$water2wheatflourmix(x)),
      addedStarch = new(Class = 'equiv', actual = starch / mix_wheat_flour),
      fat = new(Class = 'equiv', actual = fat / mix_wheat_flour, ideal = devrecipe$fat2wheatflourmix(x)),
      blackSesame = new(Class = 'equiv', actual = x@blackSesame / mix_wheat_flour),
      eggYolk = new(Class = 'equiv', actual = x@eggYolk / mix_wheat_flour),
      eggWhite = new(Class = 'equiv', actual = x@eggWhite / mix_wheat_flour),
      Na2CO3 = new(Class = 'equiv', actual = x@Na2CO3 / mix_wheat_flour),
      NaHCO3 = new(Class = 'equiv', actual = x@NaHCO3 / mix_wheat_flour),
      bakingPowder = new(Class = 'equiv', actual = x@bakingPowder / mix_wheat_flour, ideal = devrecipe$bakingPowder2wheatflourmix(x)),
      salt = new(Class = 'equiv', actual = x@salt / mix_wheat_flour),
      #sugar = new(Class = 'equiv', actual = sugar / mix_wheat_flour),
      #addedSugar = new(Class = 'equiv', actual = addedSugar / mix_wheat_flour),
      yeast = new(Class = 'equiv', actual = sum(x@yeast) / mix_wheat_flour, ideal = devrecipe$yeast2wheatflourmix(x)),
      matcha = new(Class = 'equiv', actual = x@matcha / mix_wheat_flour),
      cocoa = new(Class = 'equiv', actual = x@cocoa / mix_wheat_flour),
      acai = new(Class = 'equiv', actual = x@acai / mix_wheat_flour),
      coffee = new(Class = 'equiv', actual = x@coffee / mix_wheat_flour)
    )
    
  } else {
    
    attr(ret, which = 'baker') <- if (flour) {
      new(
        Class = 'baker',
        puree = new(Class = 'equiv', actual = puree / flour),
        water = new(Class = 'equiv', actual = water / flour, ideal = devrecipe$water2flour(x), margin = 1.01),
        addedStarch = new(Class = 'equiv', actual = starch / flour),
        fat = new(Class = 'equiv', actual = fat / flour, ideal = devrecipe$fat2flour(x), margin = 1.05, ignore = .01),
        blackSesame = new(Class = 'equiv', actual = x@blackSesame / flour, ideal = devrecipe$blackSesame2flour(x)),
        eggYolk = new(Class = 'equiv', actual = x@eggYolk / flour, ideal = devrecipe$eggYolk2flour(x)),
        eggWhite = new(Class = 'equiv', actual = x@eggWhite / flour),
        Na2CO3 = new(Class = 'equiv', actual = x@Na2CO3 / flour, ideal = devrecipe$Na2CO3_2flour(x)),
        NaHCO3 = new(Class = 'equiv', actual = x@NaHCO3 / flour),
        bakingPowder = new(Class = 'equiv', actual = x@bakingPowder / flour, ideal = devrecipe$bakingPowder2flour(x)),
        salt = new(Class = 'equiv', actual = x@salt / flour, ideal = devrecipe$salt2flour(x)),
        #sugar = new(Class = 'equiv', actual = sugar / flour),
        #addedSugar = new(Class = 'equiv', actual = addedSugar / flour),
        yeast = new(Class = 'equiv', actual = sum(x@yeast) / flour, ideal = devrecipe$yeast2flour(x), margin = 1.1),
        matcha = new(Class = 'equiv', actual = x@matcha / flour),
        cocoa = new(Class = 'equiv', actual = x@cocoa / flour),
        acai = new(Class = 'equiv', actual = x@acai / flour),
        coffee = new(Class = 'equiv', actual = x@coffee / flour)
      )
    } #else NULL
    
    attr(ret, which = 'pastryBaker') <- if (pastryFlour) {
      new(
        Class = 'pastryBaker',
        puree = new(Class = 'equiv', actual = puree / pastryFlour),
        water = new(Class = 'equiv', actual = water / pastryFlour, ideal = devrecipe$water2pastryflour(x), margin = 1.01),
        gelatin = new(Class = 'equiv', actual = x@gelatin / pastryFlour),
        cornmeal = new(Class = 'equiv', actual = cornmeal / pastryFlour),
        addedStarch = new(Class = 'equiv', actual = starch / pastryFlour),
        fat = new(Class = 'equiv', actual = fat / pastryFlour, ideal = devrecipe$fat2pastryflour(x), margin = 1.05, ignore = .01),
        blackSesame = new(Class = 'equiv', actual = x@blackSesame / pastryFlour, ideal = devrecipe$blackSesame2pastryflour(x)),
        eggYolk = new(Class = 'equiv', actual = x@eggYolk / pastryFlour, ideal = devrecipe$eggYolk2pastryflour(x)),
        eggWhite = new(Class = 'equiv', actual = x@eggWhite / pastryFlour),
        Na2CO3 = new(Class = 'equiv', actual = x@Na2CO3 / pastryFlour, ideal = devrecipe$Na2CO3_2pastryflour(x)),
        NaHCO3 = new(Class = 'equiv', actual = x@NaHCO3 / pastryFlour),
        bakingPowder = new(Class = 'equiv', actual = x@bakingPowder / pastryFlour, ideal = devrecipe$bakingPowder2pastryflour(x)),
        salt = new(Class = 'equiv', actual = x@salt / pastryFlour, ideal = devrecipe$salt2pastryflour(x)),
        #sugar = new(Class = 'equiv', actual = sugar / pastryFlour),
        #addedSugar = new(Class = 'equiv', actual = addedSugar / pastryFlour),
        yeast = new(Class = 'equiv', actual = sum(x@yeast) / pastryFlour, ideal = devrecipe$yeast2pastryflour(x), margin = 1.1),
        matcha = new(Class = 'equiv', actual = x@matcha / pastryFlour, ideal = devrecipe$matcha2pastryflour(x)),
        beet = new(Class = 'equiv', actual = x@beet / pastryFlour, ideal = devrecipe$beet2pastryflour(x)),
        cocoa = new(Class = 'equiv', actual = x@cocoa / pastryFlour),
        acai = new(Class = 'equiv', actual = x@acai / pastryFlour, ideal = devrecipe$acai2pastryflour(x)),
        coffee = new(Class = 'equiv', actual = x@coffee / pastryFlour)
      ) #else new(Class = 'pastryBaker')
    }
    
    attr(ret, which = 'breadBaker') <- if (breadFlour) {
      new(
        Class = 'breadBaker',
        puree = new(Class = 'equiv', actual = puree / breadFlour),
        water = new(Class = 'equiv', actual = water / breadFlour, ideal = devrecipe$water2breadflour(x), margin = 1.01),
        gelatin = new(Class = 'equiv', actual = x@gelatin / breadFlour),
        addedStarch = new(Class = 'equiv', actual = starch / breadFlour),
        fat = new(Class = 'equiv', actual = fat / breadFlour, ideal = devrecipe$fat2breadflour(x), margin = 1.05),
        blackSesame = new(Class = 'equiv', actual = x@blackSesame / breadFlour, ideal = devrecipe$blackSesame2breadflour(x)),
        #eggYolk = new(Class = 'equiv', actual = x@eggYolk / breadFlour, ideal = devrecipe$eggYolk2breadflour(x)),
        eggYolk = new(Class = 'equiv', actual = x@eggYolk / breadFlour, ideal = devrecipe$eggYolk2breadflour(x)),
        eggWhite = new(Class = 'equiv', actual = x@eggWhite / breadFlour),
        Na2CO3 = new(Class = 'equiv', actual = x@Na2CO3 / breadFlour, ideal = devrecipe$Na2CO3_2breadflour(x)),
        NaHCO3 = new(Class = 'equiv', actual = x@NaHCO3 / breadFlour),
        bakingPowder = new(Class = 'equiv', actual = x@bakingPowder / breadFlour, ideal = devrecipe$bakingPowder2breadflour(x)),
        salt = new(Class = 'equiv', actual = x@salt / breadFlour, ideal = devrecipe$salt2breadflour(x)),
        #sugar = new(Class = 'equiv', actual = sugar / breadFlour),
        #addedSugar = new(Class = 'equiv', actual = addedSugar / breadFlour),
        yeast = new(Class = 'equiv', actual = sum(x@yeast) / breadFlour, ideal = devrecipe$yeast2breadflour(x), margin = 1.1),
        matcha = new(Class = 'equiv', actual = x@matcha / breadFlour, ideal = devrecipe$matcha2breadflour(x)),
        beet = new(Class = 'equiv', actual = x@beet / breadFlour, ideal = devrecipe$beet2breadflour(x)),
        cocoa = new(Class = 'equiv', actual = x@cocoa / breadFlour),
        acai = new(Class = 'equiv', actual = x@acai / breadFlour),
        coffee = new(Class = 'equiv', actual = x@coffee / breadFlour)
      )
    } #else NULL
    
  }
  
  attr(ret, which = 'glutenFreeBaker') <- if (glutenFreeFlour & !breadFlour & !pastryFlour & !flour) new(
    Class = 'glutenFreeBaker',
    puree = new(Class = 'equiv', actual = puree / glutenFreeFlour),
    water = new(Class = 'equiv', actual = water / glutenFreeFlour, ideal = devrecipe$water2glutenFreeFlour(x), margin = 1.01),
    gelatin = new(Class = 'equiv', actual = x@gelatin / glutenFreeFlour),
    addedStarch = new(Class = 'equiv', actual = starch / glutenFreeFlour),
    fat = new(Class = 'equiv', actual = fat / glutenFreeFlour, ideal = devrecipe$fat2glutenFreeFlour(x), margin = 1.05, ignore = .01),
    blackSesame = new(Class = 'equiv', actual = x@blackSesame / glutenFreeFlour, ideal = devrecipe$blackSesame2glutenFreeFlour(x)),
    eggYolk = new(Class = 'equiv', actual = x@eggYolk / glutenFreeFlour, ideal = devrecipe$eggYolk2glutenFreeFlour(x)),
    eggWhite = new(Class = 'equiv', actual = x@eggWhite / glutenFreeFlour),
    Na2CO3 = new(Class = 'equiv', actual = x@Na2CO3 / glutenFreeFlour, ideal = devrecipe$Na2CO3_2glutenFreeFlour(x)),
    NaHCO3 = new(Class = 'equiv', actual = x@NaHCO3 / glutenFreeFlour),
    bakingPowder = new(Class = 'equiv', actual = x@bakingPowder / glutenFreeFlour, ideal = devrecipe$bakingPowder2glutenFreeFlour(x)),
    salt = new(Class = 'equiv', actual = x@salt / glutenFreeFlour, ideal = devrecipe$salt2glutenFreeFlour(x)),
    #sugar = new(Class = 'equiv', actual = sugar / glutenFreeFlour),
    #addedSugar = new(Class = 'equiv', actual = addedSugar / glutenFreeFlour),
    yeast = new(Class = 'equiv', actual = sum(x@yeast) / glutenFreeFlour, ideal = devrecipe$yeast2glutenFreeFlour(x), margin = 1.1),
    matcha = new(Class = 'equiv', actual = x@matcha / glutenFreeFlour),
    cocoa = new(Class = 'equiv', actual = x@cocoa / glutenFreeFlour),
    acai = new(Class = 'equiv', actual = x@acai / glutenFreeFlour),
    coffee = new(Class = 'equiv', actual = x@coffee / glutenFreeFlour)
  ) #else new(Class = 'glutenFreeBaker')
  
  attr(ret, which = 'riceBaker') <- if (riceFlour) new(
    Class = 'riceBaker',
    water = new(Class = 'equiv', actual = water / riceFlour, ideal = devrecipe$water2riceflour(x)),
    # rice = new(Class = 'equiv', actual = x@riceFlour / riceFlour, ideal = devrecipe$rice2riceflour(x)),
    glutinousRice = new(Class = 'equiv', actual = x@glutinousRiceFlour / riceFlour, ideal = devrecipe$glutinousRice2riceflour(x)),
    gelatin = new(Class = 'equiv', actual = x@gelatin / riceFlour),
    fat = new(Class = 'equiv', actual = fat / riceFlour, ideal = devrecipe$fat2riceflour(x), ignore = .01),
    blackSesame = new(Class = 'equiv', actual = x@blackSesame / riceFlour),
    #sugar = new(Class = 'equiv', actual = sugar / riceFlour),
    addedStarch = new(Class = 'equiv', actual = starch / riceFlour, ideal = devrecipe$starch2riceflour(x)),
    matcha = new(Class = 'equiv', actual = x@matcha / riceFlour, ideal = devrecipe$matcha2riceflour(x)),
    cocoa = new(Class = 'equiv', actual = x@cocoa / riceFlour),
    acai = new(Class = 'equiv', actual = x@acai / riceFlour),
    coffee = new(Class = 'equiv', actual = x@coffee / riceFlour)
  ) #else new(Class = 'riceBaker')
  
  attr(ret, which = 'cocoaDx') <- if (length(x@cocoa)) new(
    Class = 'cocoaDx',
    alcohol = new(Class = 'equiv', actual = alcohol / x@cocoa, ideal = devrecipe$alcohol2cocoa(x)),
    drymilk = new(Class = 'equiv', actual = x@drymilk / x@cocoa, ideal = devrecipe$drymilk2cocoa(x)),
    sugar = if (TRUE | (sugar > addedSugar)) new(Class = 'equiv', actual = sugar / x@cocoa) else new(Class = 'equiv'),
    addedSugar = new(Class = 'equiv', actual = addedSugar / x@cocoa, ideal = devrecipe$addedSugar2cocoa(x)),
    coffee = new(Class = 'equiv', actual = x@coffee / x@cocoa, ideal = devrecipe$coffee2cocoa(x))
  )
  
  attr(ret, which = 'info') <- info
  
  #review <- attr(info, which = 'review')
  #attr(ret, which = 'review') <- review[names(review) == class(x)]
  
  #machine <- attr(info, which = 'machine')
  #attr(ret, which = 'machine') <- unlist(lapply(machine, FUN = function(ifun) ifun(class(x))), use.names = FALSE)
  #attr(ret, which = 'machine') <- machine[names(machine) == class(x)]
  
  return(ret)
}



