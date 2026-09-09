

setAs(from = 'raw.', to = 'nutrition', def = \(from) {
  
  x <- from; from <- NULL
  
  atr0 <- attributes(x)[names(getSlots(x = 'raw.'))] # [nutrition.raw] might be applied to \linkS4class{recipe}
  atr <- atr0[lengths(atr0) > 0L]
  
  grams <- unlist(unname(atr), use.names = TRUE)
  if (!length(grams)) stop('shouldnt happen!!!')
  grams_nm <- names(grams)
  names(grams_nm) <- grams_nm
  
  nutri <- lapply(grams_nm, FUN = \(x) {
    call(name = x) |> eval() |> as(Class = 'nutrition')
  })
  
  info <- nutri |>
    summary_nutritionlist()
  # print(info) # debug
  tmp <- (t.default(grams) %*% info)[1, , drop = TRUE]
  calorie <- tmp['calorie']
  carbohydrate <- tmp['carbohydrate']
  fiber <- tmp['fiber']
  sugar <- tmp['sugar']
  addedSugar <- max(0, tmp['addedSugar'])
  sodium <- tmp['sodium']
  fat <- tmp['fat']
  cholesterol <- tmp['cholesterol']
  protein <- tmp['protein']
  alcohol <- tmp['alcohol']
  water <- tmp['water']
  addedWater <- tmp['addedWater']
  water <- tmp['water']
  usd <- tmp['usd']
  
  ret <- new(
    Class = 'nutrition', call = match.call()[[1L]], 
    name = character(),
    servingGram = sum(unlist(atr, use.names = FALSE)),
    usd = unname(usd), # `recipe` already dealt with currency conversion
    calorie = if (calorie) calorie else numeric(),
    carbohydrate = if (carbohydrate) carbohydrate else numeric(),
    fiber = if (fiber) fiber else numeric(),
    sugar = if (sugar) sugar else numeric(),
    addedSugar = if (addedSugar) addedSugar else numeric(),
    alcohol = if (alcohol) alcohol else numeric(),
    sodium = if (sodium) sodium else numeric(),
    fat = if (fat) fat else numeric(),
    cholesterol = if (cholesterol) cholesterol else numeric(),
    protein = if (protein) protein else numeric(),
    water = if (water) water else numeric()
  )
  
  if (FALSE) {
    cl <- match.call()
    x. <- as.list(cl$x) # `cl$x`, e.g. `quote(soymilk())`
    if (length(x.) == 1L) {
      if (!is.symbol(x.[[1L]])) stop('shouldnt happen')
      x_ <- as.character(x.[[1L]])
      if (!identical(x_, 'x')) { # from [nutrition.function] in ?base::lapply
        ret@name_glue <- sprintf(fmt = '%s \U1f3fa{.run [%s](cooking::%s())}', x@alias, x_ |> col_yellow() |> style_bold(), x_)
      } # else do nothing
    }
  } # 2026-09-08 evening. Consider remove in future
  
  attr(ret, which = 'info') <- info
  return(ret)
})



setAs(from = 'recipe', to = 'nutrition', def = \(from) {
  
  x <- from; from <- NULL
  
  lost <- c('waterLost', 'fatLost', 'sugarLost')
  slt0 <- names(getSlots(x = 'raw.'))
  ingredient <- names(which(lengths(attributes(x)[slt0]) > 0L))
  
  atr <- attributes(x)[ingredient]
  
  total_raw <- sum(unlist(atr, use.names = FALSE))
  
  tool_slot <- names(which(getSlots('recipe') == 'tool'))
  waterLost <- sum(x@waterLost, lapply(tool_slot, FUN = \(i) slot(x, name = i)@waterLost) |> unlist(use.names = FALSE))
  total_lost <- sum(
    waterLost,
    unlist(attributes(x)[setdiff(lost, 'waterLost')], use.names = FALSE)
  )
  total <- total_raw - total_lost
  
  grams <- unlist(unname(atr))
  if (!length(grams)) stop('shouldnt happen!!!')
  grams_nm <- names(grams)
  names(grams_nm) <- grams_nm
  
  nutri <- lapply(grams_nm, FUN = \(x) {
    call(name = x) |> eval() |> as(Class = 'nutrition')
  })
  
  
  info <- nutri |>
    summary_nutritionlist()
  # print(info) # debug
  tmp <- (t.default(grams) %*% info)[1, , drop = TRUE]
  calorie <- tmp['calorie']
  carbohydrate <- tmp['carbohydrate']
  fiber <- tmp['fiber']
  sugar <- tmp['sugar'] - sum(x@sugarLost)
  addedSugar <- max(0, tmp['addedSugar'] - sum(x@sugarLost))
  sodium <- tmp['sodium']
  fat <- tmp['fat'] - sum(x@fatLost)
  cholesterol <- tmp['cholesterol']
  protein <- tmp['protein']
  alcohol <- tmp['alcohol']
  water <- tmp['water']
  addedWater <- tmp['addedWater']
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
  
  devrecipe <- getOption('devrecipe') 
  
  ret <- new(
    Class = 'nutrition', call = match.call()[[1L]], 
    name = x@alias,
    #review = x@review,
    servingGram = total, # after sutracting everything lost!!
    usd = unname(usd), # `recipe` already dealt with currency conversion
    calorie = if (calorie) calorie else numeric(),
    carbohydrate = if (carbohydrate) carbohydrate else numeric(),
    fiber = if (fiber) fiber else numeric(),
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
  
  if (FALSE) {
    cl <- match.call()
    x. <- as.list(cl$x) # `cl$x`, e.g. `quote(soymilk())`
    if (length(x.) == 1L) {
      if (!is.symbol(x.[[1L]])) stop('shouldnt happen')
      x_ <- as.character(x.[[1L]])
      if (!identical(x_, 'x')) { # from [nutrition.function] in ?base::lapply
        ret@name_glue <- sprintf(fmt = '%s \U1f3fa{.run [%s](cooking::%s())}', x@alias, x_ |> col_yellow() |> style_bold(), x_)
      } # else do nothing
    }
  } # 2026-09-08 evening. Consider remove in future
  
  attr(ret, which = 'perRaw') <- new(
    # focus on material, *not* on nutrition!!
    Class = 'per', per = 'Raw Material', equiv = list(
      # `Base:Aerator` no longer matters :)
      #base <- sum(atr$gelatin, x@puree, x@water, x@water40, x@boilingWater, x@iceWater, x@dairy, x@flavor)
      #aerator <- sum(x@heavyCream, atr$eggWhite, x@sugar, x@brownSugar)
      #sprintf(fmt = '%.2f', base / aerator)
      # 'Gelatin:Water' = if ((gelatin <- sum(atr$gelatin)) & water) {
      #  new(Class = 'equiv', current = gelatin / water, target = devrecipe$gelatin2water(x))
      # },
      # 'SelfRising' = if (length(x@selfRisingFlour)) {
      #  target <- switch(class(x), pancake = .7)
      #  new(Class = 'equiv', current = x@selfRisingFlour / flour, target)
      #},
      # 'Acid:SelfRising' = if (length(x@selfRisingFlour)) {
      #  acid_weight <- x@flavor['CountryTime_Lemonade']
      #  acid_rate <- c(CountryTime_Lemonade = 1 - CountryTime_Lemonade()@sugar/CountryTime_Lemonade()@servingGram)
      #  acid <- sum(acid_weight * acid_rate, na.rm = TRUE)
      #  target <- switch(class(x), pancake =, pancakeMix = .0077)
      #  new(Class = 'equiv', current = acid / x@selfRisingFlour, target, margin = 1.01)
      #},
      ssmOil = new(Class = 'equiv', current = x@sesameOil / total_raw),
      rattanPpOil = new(Class = 'equiv', current = x@rattanPepperOil / total_raw),
      bkPwd = new(Class = 'equiv', current = x@bakingPowder / total_raw),
      'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / total_raw),
      msg = new(Class = 'equiv', current = x@msg / total_raw),
      drymilk = new(Class = 'equiv', current = drymilk / total_raw),
      tea = new(Class = 'equiv', current = x@tea / total_raw),
      creamChz = new(Class = 'equiv', current = sum(x@creamCheese) / total_raw),
      puree = new(Class = 'equiv', current = puree / total_raw), 
      matcha = new(Class = 'equiv', current = x@matcha / total_raw),
      beet = new(Class = 'equiv', current = x@beet / total_raw),
      ginger = new(Class = 'equiv', current = x@ginger / total_raw),
      cumin = new(Class = 'equiv', current = x@cumin / total_raw),
      cilantro = new(Class = 'equiv', current = x@cilantro / total_raw),
      garlic = new(Class = 'equiv', current = x@garlic / total_raw),
      onion = new(Class = 'equiv', current = x@onion / total_raw),
      whitePp = new(Class = 'equiv', current = x@whitePepper / total_raw),
      blackPp = new(Class = 'equiv', current = x@blackPepper / total_raw),
      turmeric = new(Class = 'equiv', current = x@turmeric / total_raw),
      cinnamon = new(Class = 'equiv', current = x@cinnamon / total_raw),
      paprika = new(Class = 'equiv', current = x@paprika / total_raw),
      coriander = new(Class = 'equiv', current = x@coriander / total_raw),
      chiliMix = new(Class = 'equiv', current = x@chiliMix / total_raw),
      '\U0001f383spice' = new(Class = 'equiv', current = x@pumpkinSpice / total_raw),
      curry = new(Class = 'equiv', current = x@curry / total_raw),
      sesame = new(Class = 'equiv', current = x@blackSesame / total_raw),
      coconut = new(Class = 'equiv', current = x@coconut / total_raw),
      cocoa = new(Class = 'equiv', current = x@cocoa / total_raw),
      coffee = new(Class = 'equiv', current = x@coffee / total_raw),
      acai = new(Class = 'equiv', current = x@acai / total_raw),
      'starch+' = new(Class = 'equiv', current = starch / total_raw),
      gelatin = new(Class = 'equiv', current = x@gelatin / total_raw)
      # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total_raw)
    ))
  
  attr(ret, which = 'perServingTexture') <- new(
    Class = 'per', per = paste0('Serving; ', col_red('Texture Profile')), equiv = list(
      #water = new(Class = 'equiv', current = if (waterCooked / total > .8) NULL else waterCooked / total, target = devrecipe$water(x)),
      water = new(Class = 'equiv', current = waterCooked / total, target = devrecipe$water(x)),
      carb = new(Class = 'equiv', current = carbohydrate / total, target = devrecipe$carbohydrate(x)),
      fiber = new(Class = 'equiv', current = fiber / total), #, target = devrecipe$carbohydrate(x)
      'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / total), # , target = devrecipe$NaHCO3(x)
      fat = new(Class = 'equiv', current = fat / total, target = devrecipe$fat(x), margin = 1.2, tol = .001),
      #cholr = new(Class = 'equiv', current = cholesterol / total),
      bkPwd = new(Class = 'equiv', current = x@bakingPowder / total, target = devrecipe$bakingPowder(x)),
      protein = new(Class = 'equiv', current = protein / total),
      'starch+' = new(Class = 'equiv', current = starch / total, target = devrecipe$starch(x)),
      gelatin = new(Class = 'equiv', current = x@gelatin / total)
      # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total)
    )
  )
  
  attr(ret, which = 'perServingFlavor') <- new(
    Class = 'per', per = paste0('Serving; ', col_red('Flavor Profile')), equiv = list(
      alcohol = new(Class = 'equiv', current = alcohol / total, target = devrecipe$alcohol(x)),
      sugar = if (TRUE | (sugar > addedSugar)) new(Class = 'equiv', current = sugar / total, target = devrecipe$sugar(x)) else new(Class = 'equiv'),
      'sugar+' = new(Class = 'equiv', current = addedSugar / total, target = devrecipe$addedSugar(x)),
      ssmOil = new(Class = 'equiv', current = x@sesameOil / total, target = devrecipe$sesameOil(x)),
      rattanPpOil = new(Class = 'equiv', current = x@rattanPepperOil / total, target = devrecipe$rattanPepperOil(x)),
      #cholr = new(Class = 'equiv', current = cholesterol / total),
      'Na\u207a' = new(Class = 'equiv', current = sodium / total, target = devrecipe$sodium(x), tol = .0001),
      msg = new(Class = 'equiv', current = x@msg / total),
      drymilk = new(Class = 'equiv', current = drymilk / total, target = devrecipe$drymilk(x)),
      tea = new(Class = 'equiv', current = x@tea / total), # , target = devrecipe$tea(x)
      creamChz = new(Class = 'equiv', current = sum(x@creamCheese) / total, target = devrecipe$creamcheese(x)),
      matcha = new(Class = 'equiv', current = x@matcha / total, target = devrecipe$matcha(x)),
      beet = new(Class = 'equiv', current = x@beet / total, target = devrecipe$beet(x)),
      ginger = new(Class = 'equiv', current = x@ginger / total, target = devrecipe$ginger(x)),
      cumin = new(Class = 'equiv', current = x@cumin / total),
      cilantro = new(Class = 'equiv', current = x@cilantro / total),
      garlic = new(Class = 'equiv', current = x@garlic / total, target = devrecipe$garlic(x)),
      onion = new(Class = 'equiv', current = x@onion / total), # , target = devrecipe$onion(x)
      whitePp = new(Class = 'equiv', current = x@whitePepper / total, target = devrecipe$whitePepper(x)),
      blackPp = new(Class = 'equiv', current = x@blackPepper / total), # , target = devrecipe$blackPepper(x)
      turmeric = new(Class = 'equiv', current = x@turmeric / total), # , target = devrecipe$turmeric(x)
      cinnamon = new(Class = 'equiv', current = x@cinnamon / total), # , target = devrecipe$cinnamon(x)
      paprika = new(Class = 'equiv', current = x@paprika / total), # , target = devrecipe$paprika(x)
      coriander = new(Class = 'equiv', current = x@coriander / total, target = devrecipe$coriander(x)),
      chiliMix = new(Class = 'equiv', current = x@chiliMix / total),
      '\U0001f383spice' = new(Class = 'equiv', current = x@pumpkinSpice / total, target = devrecipe$pumpkinSpice(x)),
      curry = new(Class = 'equiv', current = x@curry / total),
      sesame = new(Class = 'equiv', current = x@blackSesame / total, target = devrecipe$blackSesame(x)),
      coconut = new(Class = 'equiv', current = x@coconut / total),
      cocoa = new(Class = 'equiv', current = x@cocoa / total, target = devrecipe$cocoa(x)),
      coffee = new(Class = 'equiv', current = x@coffee / total, target = devrecipe$coffee(x)),
      acai = new(Class = 'equiv', current = x@acai / total, target = devrecipe$acai(x))
    )
  )
  
  if (cornmeal) {
    
    attr(ret, which = 'perCornmeal') <- new(
      Class = 'per', per = 'Cornmeal\U1f33d', equiv = list(
        # water = new(Class = 'equiv', current = water/cornmeal), # depends on `flour` as well
        flour = new(Class = 'equiv', current = flour/cornmeal, target = devrecipe$flour2cornmeal(x)),
        '\U0001f35eflour' = new(Class = 'equiv', current = breadFlour/cornmeal, target = devrecipe$breadflour2cornmeal(x)),
        '\U0001f370flour' = new(Class = 'equiv', current = pastryFlour/cornmeal, target = devrecipe$pastryflour2cornmeal(x)),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x@eggYolk/cornmeal),
        '\U0001f95awhite' = new(Class = 'equiv', current = x@eggWhite/cornmeal)
      ))
    
  } else if (sum(mix0_wheat_flour > 0) > 1L) {
    
    attr(ret, which = 'perMixFlr') <- new(
      Class = 'per', per = 'Mixed Wheat Flour', equiv = list(
        puree = new(Class = 'equiv', current = puree / mix_wheat_flour),
        water = new(Class = 'equiv', current = water / mix_wheat_flour, target = devrecipe$addedWater2wheatflourmix(x)),
        'starch+' = new(Class = 'equiv', current = starch / mix_wheat_flour),
        fat = new(Class = 'equiv', current = fat / mix_wheat_flour, target = devrecipe$fat2wheatflourmix(x)),
        sesame = new(Class = 'equiv', current = x@blackSesame / mix_wheat_flour),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x@eggYolk / mix_wheat_flour),
        '\U0001f95awhite' = new(Class = 'equiv', current = x@eggWhite / mix_wheat_flour),
        'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / mix_wheat_flour),
        'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / mix_wheat_flour),
        bkPwd = new(Class = 'equiv', current = x@bakingPowder / mix_wheat_flour, target = devrecipe$bakingPowder2wheatflourmix(x)),
        salt = new(Class = 'equiv', current = x@salt / mix_wheat_flour),
        #sugar = new(Class = 'equiv', current = sugar / mix_wheat_flour),
        # 'sugar+' = new(Class = 'equiv', current = addedSugar / mix_wheat_flour),
        yeast = new(Class = 'equiv', current = sum(x@yeast) / mix_wheat_flour, target = devrecipe$yeast2wheatflourmix(x)),
        matcha = new(Class = 'equiv', current = x@matcha / mix_wheat_flour),
        cocoa = new(Class = 'equiv', current = x@cocoa / mix_wheat_flour),
        acai = new(Class = 'equiv', current = x@acai / mix_wheat_flour),
        coffee = new(Class = 'equiv', current = x@coffee / mix_wheat_flour)
      ))
    
  } else {
    
    attr(ret, which = 'perAllPurposeFlr') <- if (flour && !inherits(x, what = 'cheesecake')) new(
      Class = 'per', per = 'All-Purpose\U1f370\U1f35e Flour', equiv = list(
        puree = new(Class = 'equiv', current = puree / flour),
        water = new(Class = 'equiv', current = water / flour, target = devrecipe$addedWater2flour(x), margin = 1.01),
        'starch+' = new(Class = 'equiv', current = starch / flour),
        fat = new(Class = 'equiv', current = fat / flour, target = devrecipe$fat2flour(x), margin = 1.05, tol = .01),
        sesame = new(Class = 'equiv', current = x@blackSesame / flour, target = devrecipe$blackSesame2flour(x)),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x@eggYolk / flour, target = devrecipe$eggYolk2flour(x)),
        '\U0001f95awhite' = new(Class = 'equiv', current = x@eggWhite / flour),
        'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / flour, target = devrecipe$Na2CO3_2flour(x)),
        'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / flour),
        bkPwd = new(Class = 'equiv', current = x@bakingPowder / flour, target = devrecipe$bakingPowder2flour(x)),
        salt = new(Class = 'equiv', current = x@salt / flour, target = devrecipe$salt2flour(x)),
        #sugar = new(Class = 'equiv', current = sugar / flour),
        # 'sugar+' = new(Class = 'equiv', current = addedSugar / flour),
        yeast = new(Class = 'equiv', current = sum(x@yeast) / flour, target = devrecipe$yeast2flour(x), margin = 1.1),
        matcha = new(Class = 'equiv', current = x@matcha / flour),
        cocoa = new(Class = 'equiv', current = x@cocoa / flour),
        acai = new(Class = 'equiv', current = x@acai / flour),
        coffee = new(Class = 'equiv', current = x@coffee / flour)
      ))
    
    
    attr(ret, which = 'perPastryFlr') <- if (pastryFlour) new(
      Class = 'per', per = 'Pastry\U1f370 Flour', equiv = list(
        puree = new(Class = 'equiv', current = puree / pastryFlour),
        water = new(Class = 'equiv', current = water / pastryFlour, target = devrecipe$addedWater2pastryflour(x), margin = 1.01),
        gelatin = new(Class = 'equiv', current = x@gelatin / pastryFlour),
        '\U1f33d' = new(Class = 'equiv', current = cornmeal / pastryFlour),
        'starch+' = new(Class = 'equiv', current = starch / pastryFlour),
        fat = new(Class = 'equiv', current = fat / pastryFlour, target = devrecipe$fat2pastryflour(x), margin = 1.05, tol = .01),
        sesame = new(Class = 'equiv', current = x@blackSesame / pastryFlour, target = devrecipe$blackSesame2pastryflour(x)),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x@eggYolk / pastryFlour, target = devrecipe$eggYolk2pastryflour(x)),
        '\U0001f95awhite' = new(Class = 'equiv', current = x@eggWhite / pastryFlour),
        'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / pastryFlour, target = devrecipe$Na2CO3_2pastryflour(x)),
        'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / pastryFlour),
        bkPwd = new(Class = 'equiv', current = x@bakingPowder / pastryFlour, target = devrecipe$bakingPowder2pastryflour(x)),
        salt = new(Class = 'equiv', current = x@salt / pastryFlour, target = devrecipe$salt2pastryflour(x)),
        #sugar = new(Class = 'equiv', current = sugar / pastryFlour),
        # 'sugar+' = new(Class = 'equiv', current = addedSugar / pastryFlour),
        yeast = new(Class = 'equiv', current = sum(x@yeast) / pastryFlour, target = devrecipe$yeast2pastryflour(x), margin = 1.1),
        matcha = new(Class = 'equiv', current = x@matcha / pastryFlour, target = devrecipe$matcha2pastryflour(x)),
        beet = new(Class = 'equiv', current = x@beet / pastryFlour, target = devrecipe$beet2pastryflour(x)),
        cocoa = new(Class = 'equiv', current = x@cocoa / pastryFlour),
        acai = new(Class = 'equiv', current = x@acai / pastryFlour, target = devrecipe$acai2pastryflour(x)),
        coffee = new(Class = 'equiv', current = x@coffee / pastryFlour)
      ))
    
    
    attr(ret, which = 'perBreadFlr') <- if (breadFlour) new(
      Class = 'per', per = 'Bread\U1f35e Flour', equiv = list(
        puree = new(Class = 'equiv', current = puree / breadFlour),
        'water+' = new(Class = 'equiv', current = addedWater / breadFlour, target = devrecipe$addedWater2breadflour(x), margin = 1.01),
        gelatin = new(Class = 'equiv', current = x@gelatin / breadFlour),
        'starch+' = new(Class = 'equiv', current = starch / breadFlour),
        fat = new(Class = 'equiv', current = fat / breadFlour, target = devrecipe$fat2breadflour(x), margin = 1.05),
        sesame = new(Class = 'equiv', current = x@blackSesame / breadFlour, target = devrecipe$blackSesame2breadflour(x)),
        # '\U0001f95ayolk' = new(Class = 'equiv', current = x@eggYolk / breadFlour, target = devrecipe$eggYolk2breadflour(x)),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x@eggYolk / breadFlour, target = devrecipe$eggYolk2breadflour(x)),
        '\U0001f95awhite' = new(Class = 'equiv', current = x@eggWhite / breadFlour),
        'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / breadFlour, target = devrecipe$Na2CO3_2breadflour(x)),
        'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / breadFlour),
        bkPwd = new(Class = 'equiv', current = x@bakingPowder / breadFlour, target = devrecipe$bakingPowder2breadflour(x)),
        salt = new(Class = 'equiv', current = x@salt / breadFlour, target = devrecipe$salt2breadflour(x)),
        #sugar = new(Class = 'equiv', current = sugar / breadFlour),
        # 'sugar+' = new(Class = 'equiv', current = addedSugar / breadFlour),
        yeast = new(Class = 'equiv', current = sum(x@yeast) / breadFlour, target = devrecipe$yeast2breadflour(x), margin = 1.1),
        matcha = new(Class = 'equiv', current = x@matcha / breadFlour, target = devrecipe$matcha2breadflour(x)),
        beet = new(Class = 'equiv', current = x@beet / breadFlour, target = devrecipe$beet2breadflour(x)),
        cocoa = new(Class = 'equiv', current = x@cocoa / breadFlour),
        acai = new(Class = 'equiv', current = x@acai / breadFlour),
        coffee = new(Class = 'equiv', current = x@coffee / breadFlour)
      ))
    
  }
  
  attr(ret, which = 'perGlutenFreeFlr') <- if (glutenFreeFlour & !breadFlour & !pastryFlour & !flour) new(
    Class = 'per', per = 'Gluten-Free Flour', equiv = list(
      puree = new(Class = 'equiv', current = puree / glutenFreeFlour),
      water = new(Class = 'equiv', current = water / glutenFreeFlour, target = devrecipe$addedWater2glutenFreeFlour(x), margin = 1.01),
      gelatin = new(Class = 'equiv', current = x@gelatin / glutenFreeFlour),
      'starch+' = new(Class = 'equiv', current = starch / glutenFreeFlour),
      fat = new(Class = 'equiv', current = fat / glutenFreeFlour, target = devrecipe$fat2glutenFreeFlour(x), margin = 1.05, tol = .01),
      sesame = new(Class = 'equiv', current = x@blackSesame / glutenFreeFlour, target = devrecipe$blackSesame2glutenFreeFlour(x)),
      '\U0001f95ayolk' = new(Class = 'equiv', current = x@eggYolk / glutenFreeFlour, target = devrecipe$eggYolk2glutenFreeFlour(x)),
      '\U0001f95awhite' = new(Class = 'equiv', current = x@eggWhite / glutenFreeFlour),
      'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / glutenFreeFlour, target = devrecipe$Na2CO3_2glutenFreeFlour(x)),
      'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / glutenFreeFlour),
      bkPwd = new(Class = 'equiv', current = x@bakingPowder / glutenFreeFlour, target = devrecipe$bakingPowder2glutenFreeFlour(x)),
      salt = new(Class = 'equiv', current = x@salt / glutenFreeFlour, target = devrecipe$salt2glutenFreeFlour(x)),
      #sugar = new(Class = 'equiv', current = sugar / glutenFreeFlour),
      # 'sugar+' = new(Class = 'equiv', current = addedSugar / glutenFreeFlour),
      yeast = new(Class = 'equiv', current = sum(x@yeast) / glutenFreeFlour, target = devrecipe$yeast2glutenFreeFlour(x), margin = 1.1),
      matcha = new(Class = 'equiv', current = x@matcha / glutenFreeFlour),
      cocoa = new(Class = 'equiv', current = x@cocoa / glutenFreeFlour),
      acai = new(Class = 'equiv', current = x@acai / glutenFreeFlour),
      coffee = new(Class = 'equiv', current = x@coffee / glutenFreeFlour)
    ))
  
  attr(ret, which = 'perRiceFlr') <- if (riceFlour) new(
    Class = 'per', per = 'Glutinous+Rice\U1f33e Flour', equiv = list(
      water = new(Class = 'equiv', current = water / riceFlour, target = devrecipe$addedWater2riceflour(x)),
      # rice = new(Class = 'equiv', current = x@riceFlour / riceFlour, target = devrecipe$rice2riceflour(x)),
      glutRice = new(Class = 'equiv', current = x@glutinousRiceFlour / riceFlour, target = devrecipe$glutinousRice2riceflour(x)),
      gelatin = new(Class = 'equiv', current = x@gelatin / riceFlour),
      fat = new(Class = 'equiv', current = fat / riceFlour, target = devrecipe$fat2riceflour(x), tol = .01),
      sesame = new(Class = 'equiv', current = x@blackSesame / riceFlour),
      #sugar = new(Class = 'equiv', current = sugar / riceFlour),
      'starch+' = new(Class = 'equiv', current = starch / riceFlour, target = devrecipe$starch2riceflour(x)),
      matcha = new(Class = 'equiv', current = x@matcha / riceFlour, target = devrecipe$matcha2riceflour(x)),
      cocoa = new(Class = 'equiv', current = x@cocoa / riceFlour),
      acai = new(Class = 'equiv', current = x@acai / riceFlour),
      coffee = new(Class = 'equiv', current = x@coffee / riceFlour)
    ))
  
  attr(ret, which = 'perCocoa') <- if (length(x@cocoa) && !inherits(x, what = c('tiramisuMix', 'tiramisu_'))) new(
    Class = 'per', per = 'Alkalized Cocoa', equiv = list(
      alcohol = new(Class = 'equiv', current = alcohol / x@cocoa, target = devrecipe$alcohol2cocoa(x)),
      drymilk = new(Class = 'equiv', current = x@drymilk / x@cocoa, target = devrecipe$drymilk2cocoa(x)),
      coconut = new(Class = 'equiv', current = x@coconut / x@cocoa),
      sugar = if (TRUE | (sugar > addedSugar)) new(Class = 'equiv', current = sugar / x@cocoa) else new(Class = 'equiv'),
      'sugar+' = new(Class = 'equiv', current = addedSugar / x@cocoa, target = devrecipe$addedSugar2cocoa(x)),
      coffee = new(Class = 'equiv', current = x@coffee / x@cocoa, target = devrecipe$coffee2cocoa(x)),
      tea = new(Class = 'equiv', current = x@tea / x@cocoa)
    )
  )
  
  
  attr(ret, which = 'perTea') <- if (length(x@tea)) new(
    Class = 'per', per = 'Tea\U1f343', equiv = list(
      drymilk = new(Class = 'equiv', current = x@drymilk / x@tea),
      coffee = new(Class = 'equiv', current = x@coffee / x@tea),
      cocoa = new(Class = 'equiv', current = x@cocoa / x@tea)
    )
  )
  
  attr(ret, which = 'perCreamCheese') <- if (length(x@creamCheese)) new(
    Class = 'per', per = 'Cream Cheese', equiv = list(
      'water+' = new(Class = 'equiv', current = addedWater/sum(x@creamCheese), target = devrecipe$addedWater2creamcheese(x)),
      fiber = new(Class = 'equiv', current = fiber/sum(x@creamCheese)), 
      'starch+' = new(Class = 'equiv', current = starch/sum(x@creamCheese)), 
      '\U0001f95ayolk' = new(Class = 'equiv', current = x@eggYolk/sum(x@creamCheese)),
      '\U0001f95awhite' = new(Class = 'equiv', current = x@eggWhite/sum(x@creamCheese))
    ))
  
  attr(ret, which = 'info') <- info
  
  #review <- attr(info, which = 'review')
  #attr(ret, which = 'review') <- review[names(review) == class(x)]
  
  #machine <- attr(info, which = 'machine')
  #attr(ret, which = 'machine') <- lapply(machine, FUN = \(ifun) ifun(class(x))) |> unlist(use.names = FALSE)
  #attr(ret, which = 'machine') <- machine[names(machine) == class(x)]
  
  return(ret)
  
})


