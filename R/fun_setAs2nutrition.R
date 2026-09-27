

setAs(from = 'raw.', to = 'nutrition', def = \(from) {
  
  x <- from; from <- NULL
  
  grams <- x |> 
    as.numeric.raw.()
  
  info <- grams |>
    names() |> 
    lapply(FUN = \(x) {
      eval(call(name = x))
    }) |>
    do.call(what = nutritionlist, args = _) |>
    summary.nutritionlist()
  
  # not needed here, but I may future consolidate 
  # setAs(from = 'raw.', to = 'nutrition')
  # setAs(from = 'recipe', to = 'nutrition'
  # print(info) # debug
  
  tmp <- (t.default(grams) %*% info)[1, , drop = TRUE]
  
  ret <- new(
    Class = 'nutrition',  
    name = character(),
    servingGram = sum(grams),
    usd = unname(tmp['usd']), # `recipe` already dealt with currency conversion
    calorie = tmp['calorie'],
    carbohydrate = tmp['carbohydrate'],
    fiber = tmp['fiber'],
    sugar = tmp['sugar'],
    addedSugar = max(0, tmp['addedSugar']),
    alcohol = tmp['alcohol'],
    sodium = tmp['sodium'],
    fat = tmp['fat'],
    cholesterol = tmp['cholesterol'],
    protein = tmp['protein'],
    water = tmp['water']
  )
  
  if (FALSE) {
    cl <- match.call()
    x. <- as.list(cl$x) # `cl$x`, e.g. `quote(soymilk())`
    if (length(x.) == 1L) {
      if (!is.symbol(x.[[1L]])) stop('shouldnt happen')
      x_ <- as.character(x.[[1L]])
      if (!identical(x_, 'x')) { # from [nutrition.function] in ?base::lapply
        ret@name <- sprintf(fmt = '%s \U1f3fa{.run [%s](cooking::%s())}', x@alias, x_ |> col_yellow() |> style_bold(), x_)
      } # else do nothing
    }
  } # 2026-09-08 evening. Consider remove in future
  
  return(ret)
})



setClass(Class = 'cooked', contains = 'raw.')

setAs(from = 'recipe', to = 'cooked', def = \(from) {
  # the first part of 
  # setAs(from = 'recipe', to = 'nutrition')
  # should be here!!
  # to account for @waterLost, etc.
})






setAs(from = 'recipe', to = 'nutrition', def = \(from) {
  
  x <- from; from <- NULL
  
  lost <- c('sugarLost')
  
  grams <- x |>
    as.numeric.raw.()
  
  total_raw <- sum(grams)
  
  waterLost <- x@tool |>
    lapply(FUN = \(i) i@waterLost) |> 
    unlist(use.names = FALSE) |>
    sum()
  total_lost <- sum(
    waterLost,
    unlist(attributes(x)[setdiff(lost, 'waterLost')], use.names = FALSE)
  )
  total <- total_raw - total_lost
  
  info <- grams |>
    names() |> 
    lapply(FUN = \(x) {
      eval(call(name = x))
    }) |>
    do.call(what = nutritionlist, args = _) |>
    summary.nutritionlist()
  
  # print(info) # debug
  tmp <- (t.default(grams) %*% info)[1, , drop = TRUE]
  
  flour <- sum(x@flour)
  pastryFlr <- sum(x['_pastryFlr$'])
  breadFlr <- sum(x['_breadFlr$'])
  wheatFlr <- sum(x['_wheatFlr$'])
  mix0_wheat_flour <- c(flour = flour, pastry = pastryFlr, bread = breadFlr, wheat = wheatFlr)
  mix_wheat_flour <- sum(mix0_wheat_flour)
  
  gluten0Flr <- sum(x['_gluten0Flr$'])
  cornmeal <- sum(x['_cornmeal$'])
  
  riceFlr <- sum(x['_riceFlr$'], x['_glutinousRiceFlr$'])
  
  puree <- sum(x@puree)
  starch <- sum(x@starch)
  
  devrecipe <- getOption('devrecipe') 
  
  ret <- new(
    Class = 'nutrition',  
    name = x@alias,
    #review = x@review,
    servingGram = total, # after sutracting everything lost!!
    usd = unname(tmp['usd']), # `recipe` already dealt with currency conversion
    calorie = tmp['calorie'],
    carbohydrate = tmp['carbohydrate'],
    fiber = tmp['fiber'],
    sugar = tmp['sugar'] - sum(x@sugarLost),
    addedSugar = max(0, tmp['addedSugar'] - sum(x@sugarLost)),
    alcohol = tmp['alcohol'],
    sodium = tmp['sodium'],
    fat = tmp['fat'],
    cholesterol = tmp['cholesterol'],
    protein = tmp['protein'],
    water = tmp['water'] - waterLost
  )
  
  if (FALSE) {
    cl <- match.call()
    x. <- as.list(cl$x) # `cl$x`, e.g. `quote(soymilk())`
    if (length(x.) == 1L) {
      if (!is.symbol(x.[[1L]])) stop('shouldnt happen')
      x_ <- as.character(x.[[1L]])
      if (!identical(x_, 'x')) { # from [nutrition.function] in ?base::lapply
        ret@name <- sprintf(fmt = '%s \U1f3fa{.run [%s](cooking::%s())}', x@alias, x_ |> col_yellow() |> style_bold(), x_)
      } # else do nothing
    }
  } # 2026-09-08 evening. Consider remove in future
  
  attr(ret, which = 'perRaw') <- new(
    # focus on material, *not* on nutrition!!
    Class = 'per', per = 'Raw Material', equiv = list(
      # `Base:Aerator` no longer matters :)
      #base <- sum(atr$gelatin, x@puree, x@water, x@water40, x@boilingWater, x@iceWater, x@dairy, x@misc)
      #aerator <- sum(x['_heavyCream$'], atr['^eggWhite$'], x@sugar)
      #sprintf(fmt = '%.2f', base / aerator)
      # 'Gelatin:Water' = if ((gelatin <- sum(atr$gelatin)) & x@water) {
      #  new(Class = 'equiv', current = gelatin / x@water, target = devrecipe$gelatin2water(x))
      # },
      # 'SelfRising' = if (length(x@selfRisingFlour)) {
      #  target <- switch(class(x), pancake = .7)
      #  new(Class = 'equiv', current = x@selfRisingFlour / flour, target)
      #},
      # 'Acid:SelfRising' = if (length(x@selfRisingFlour)) {
      #  acid_weight <- x@misc['CountryTime_Lemonade']
      #  acid_rate <- c(CountryTime_Lemonade = 1 - CountryTime_Lemonade()@sugar/CountryTime_Lemonade()@servingGram)
      #  acid <- sum(acid_weight * acid_rate, na.rm = TRUE)
      #  target <- switch(class(x), pancake =, pancakeMix = .0077)
      #  new(Class = 'equiv', current = acid / x@selfRisingFlour, target, margin = 1.01)
      #},
      ssmOil = new(Class = 'equiv', current = x['_sesame_oil'] / total_raw),
      rattanPpOil = new(Class = 'equiv', current = x['_rattanPepper_oil$'] / total_raw),
      bkPwd = new(Class = 'equiv', current = x@bakingPowder / total_raw),
      'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / total_raw),
      msg = new(Class = 'equiv', current = x@msg / total_raw),
      drymilk = new(Class = 'equiv', current = sum(x['_drymilk$']) / total_raw),
      tea = new(Class = 'equiv', current = x@tea / total_raw),
      creamChz = new(Class = 'equiv', current = sum(x['_creamCheese$']) / total_raw),
      puree = new(Class = 'equiv', current = puree / total_raw), 
      matcha = new(Class = 'equiv', current = x@matcha / total_raw),
      beet = new(Class = 'equiv', current = x['_beet_pulv$'] / total_raw),
      ginger = new(Class = 'equiv', current = x['_ginger$'] / total_raw),
      cumin = new(Class = 'equiv', current = x['_cumin$'] / total_raw),
      cilantro = new(Class = 'equiv', current = x['_cilantro$'] / total_raw),
      garlic = new(Class = 'equiv', current = x['_garlic$'] / total_raw),
      onion = new(Class = 'equiv', current = x['_onion$'] / total_raw),
      whitePp = new(Class = 'equiv', current = x['_whitePepper$'] / total_raw),
      blackPp = new(Class = 'equiv', current = x['_blackPepper$'] / total_raw),
      turmeric = new(Class = 'equiv', current = x['_turmeric$'] / total_raw),
      cinnamon = new(Class = 'equiv', current = x['_cinnamon$'] / total_raw),
      paprika = new(Class = 'equiv', current = x['_paprika$'] / total_raw),
      coriander = new(Class = 'equiv', current = x['_coriander$'] / total_raw),
      # chiliMix = new(Class = 'equiv', current = x@chiliMix / total_raw),
      '\U0001f383spice' = new(Class = 'equiv', current = x['_pumpkinSpice$'] / total_raw),
      #curry = new(Class = 'equiv', current = x@curry / total_raw),
      sesame = new(Class = 'equiv', current = x@blackSesame / total_raw),
      coconutFlr = new(Class = 'equiv', current = x['_coconutFlr$'] / total_raw),
      coconutBar = new(Class = 'equiv', current = x['_coconutBar$'] / total_raw),
      cocoa = new(Class = 'equiv', current = x@cocoa / total_raw),
      coffee = new(Class = 'equiv', current = x@coffee / total_raw),
      acai = new(Class = 'equiv', current = x['_acai_pulv$'] / total_raw),
      'starch+' = new(Class = 'equiv', current = starch / total_raw),
      gelatin = new(Class = 'equiv', current = x@gelatin / total_raw)
      # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total_raw)
    ))
  
  attr(ret, which = 'perServingTexture') <- new(
    Class = 'per', per = paste0('Serving; ', col_red('Texture Profile')), equiv = list(
      #water = new(Class = 'equiv', current = if (ret@water / total > .8) NULL else ret@water / total, target = devrecipe$water(x)),
      water = new(Class = 'equiv', current = ret@water / total, target = devrecipe$water(x)),
      carb = new(Class = 'equiv', current = ret@carbohydrate / total, target = devrecipe$carbohydrate(x)),
      fiber = new(Class = 'equiv', current = ret@fiber / total), #, target = devrecipe$carbohydrate(x)
      'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / total), # , target = devrecipe$NaHCO3(x)
      fat = new(Class = 'equiv', current = ret@fat / total, target = devrecipe$fat(x), margin = 1.2, tol = .001),
      #cholr = new(Class = 'equiv', current = ret@cholesterol / total),
      bkPwd = new(Class = 'equiv', current = x@bakingPowder / total, target = devrecipe$bakingPowder(x)),
      protein = new(Class = 'equiv', current = ret@protein / total),
      'starch+' = new(Class = 'equiv', current = starch / total, target = devrecipe$starch(x)),
      gelatin = new(Class = 'equiv', current = x@gelatin / total)
      # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total)
    )
  )
  
  attr(ret, which = 'perServingFlavor') <- new(
    Class = 'per', per = paste0('Serving; ', col_red('Flavor Profile')), equiv = list(
      alcohol = new(Class = 'equiv', current = ret@alcohol / total, target = devrecipe$alcohol(x)),
      sugar = if (length(ret@sugar) && length(ret@addedSugar) && (ret@sugar > ret@addedSugar)) new(Class = 'equiv', current = ret@sugar / total, target = devrecipe$sugar(x)) else new(Class = 'equiv'),
      'sugar+' = new(Class = 'equiv', current = ret@addedSugar / total, target = devrecipe$addedSugar(x)),
      ssmOil = new(Class = 'equiv', current = x['_sesame_oil'] / total, target = devrecipe$sesameOil(x)),
      rattanPpOil = new(Class = 'equiv', current = x['_rattanPepper_oil$'] / total, target = devrecipe$rattanPepperOil(x)),
      #cholr = new(Class = 'equiv', current = ret@cholesterol / total),
      'Na\u207a' = new(Class = 'equiv', current = ret@sodium / total, target = devrecipe$sodium(x), tol = .0001),
      msg = new(Class = 'equiv', current = x@msg / total),
      drymilk = new(Class = 'equiv', current = sum(x['_drymilk$']) / total, target = devrecipe$drymilk(x)),
      tea = new(Class = 'equiv', current = x@tea / total), # , target = devrecipe$tea(x)
      creamChz = new(Class = 'equiv', current = sum(x['_creamCheese$']) / total, target = devrecipe$creamcheese(x)),
      matcha = new(Class = 'equiv', current = x@matcha / total, target = devrecipe$matcha(x)),
      beet = new(Class = 'equiv', current = x['_beet_pulv$'] / total, target = devrecipe$beet(x)),
      ginger = new(Class = 'equiv', current = x['_ginger$'] / total, target = devrecipe$ginger.(x)),
      cumin = new(Class = 'equiv', current = x['_cumin$'] / total),
      cilantro = new(Class = 'equiv', current = x['_cilantro$'] / total),
      garlic = new(Class = 'equiv', current = x['_garlic$'] / total, target = devrecipe$garlic(x)),
      onion = new(Class = 'equiv', current = x['_onion$'] / total), # , target = devrecipe$onion(x)
      whitePp = new(Class = 'equiv', current = x['_whitePepper$'] / total, target = devrecipe$whitePepper(x)),
      blackPp = new(Class = 'equiv', current = x['_blackPepper$'] / total), # , target = devrecipe$blackPepper(x)
      turmeric = new(Class = 'equiv', current = x['_turmeric$'] / total), # , target = devrecipe$turmeric(x)
      cinnamon = new(Class = 'equiv', current = x['_cinnamon$'] / total), # , target = devrecipe$cinnamon(x)
      paprika = new(Class = 'equiv', current = x['_paprika$'] / total), # , target = devrecipe$paprika(x)
      coriander = new(Class = 'equiv', current = x['_coriander$'] / total, target = devrecipe$coriander(x)),
      # chiliMix = new(Class = 'equiv', current = x@chiliMix / total),
      '\U0001f383spice' = new(Class = 'equiv', current = x['_pumpkinSpice$'] / total, target = devrecipe$pumpkinSpice(x)),
      #curry = new(Class = 'equiv', current = x@curry / total),
      sesame = new(Class = 'equiv', current = x@blackSesame / total, target = devrecipe$blackSesame(x)),
      coconutFlr = new(Class = 'equiv', current = x['_coconutFlr$'] / total),
      coconutBar = new(Class = 'equiv', current = x['_coconutBar$'] / total),
      cocoa = new(Class = 'equiv', current = x@cocoa / total, target = devrecipe$cocoa(x)),
      coffee = new(Class = 'equiv', current = x@coffee / total, target = devrecipe$coffee(x)),
      acai = new(Class = 'equiv', current = x['_acai_pulv$'] / total, target = devrecipe$acai(x))
    )
  )
  
  if (cornmeal) {
    
    attr(ret, which = 'perCornmeal') <- new(
      Class = 'per', per = 'Cornmeal\U1f33d', equiv = list(
        # water = new(Class = 'equiv', current = x@water/cornmeal), # depends on `flour` as well
        flour = new(Class = 'equiv', current = flour/cornmeal, target = devrecipe$flour2cornmeal(x)),
        '\U0001f35eflour' = new(Class = 'equiv', current = breadFlr/cornmeal, target = devrecipe$breadFlr2cornmeal(x)),
        '\U0001f370flour' = new(Class = 'equiv', current = pastryFlr/cornmeal, target = devrecipe$pastryFlr2cornmeal(x)),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x['^eggYolk$']/cornmeal),
        '\U0001f95awhite' = new(Class = 'equiv', current = x['^eggWhite$']/cornmeal)
      ))
    
  } else if (sum(mix0_wheat_flour > 0) > 1L) {
    
    attr(ret, which = 'perMixFlr') <- new(
      Class = 'per', per = 'Mixed Wheat Flour', equiv = list(
        puree = new(Class = 'equiv', current = puree / mix_wheat_flour),
        water = new(Class = 'equiv', current = x@water / mix_wheat_flour, target = devrecipe$addedWater2wheatflourmix(x)),
        'starch+' = new(Class = 'equiv', current = starch / mix_wheat_flour),
        fat = new(Class = 'equiv', current = ret@fat / mix_wheat_flour, target = devrecipe$fat2wheatflourmix(x)),
        sesame = new(Class = 'equiv', current = x@blackSesame / mix_wheat_flour),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x['^eggYolk$'] / mix_wheat_flour),
        '\U0001f95awhite' = new(Class = 'equiv', current = x['^eggWhite$'] / mix_wheat_flour),
        'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / mix_wheat_flour),
        'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / mix_wheat_flour),
        bkPwd = new(Class = 'equiv', current = x@bakingPowder / mix_wheat_flour, target = devrecipe$bakingPowder2wheatflourmix(x)),
        salt = new(Class = 'equiv', current = x@salt / mix_wheat_flour),
        #sugar = new(Class = 'equiv', current = ret@sugar / mix_wheat_flour),
        # 'sugar+' = new(Class = 'equiv', current = ret@addedSugar / mix_wheat_flour),
        yeast = new(Class = 'equiv', current = sum(x@yeast) / mix_wheat_flour, target = devrecipe$yeast2wheatflourmix(x)),
        matcha = new(Class = 'equiv', current = x@matcha / mix_wheat_flour),
        cocoa = new(Class = 'equiv', current = x@cocoa / mix_wheat_flour),
        acai = new(Class = 'equiv', current = x['_acai_pulv$'] / mix_wheat_flour),
        coffee = new(Class = 'equiv', current = x@coffee / mix_wheat_flour)
      ))
    
  } else {
    
    attr(ret, which = 'perAllPurposeFlr') <- if (flour && !inherits(x, what = 'cheesecake')) new(
      Class = 'per', per = 'All-Purpose\U1f370\U1f35e Flour', equiv = list(
        puree = new(Class = 'equiv', current = puree / flour),
        water = new(Class = 'equiv', current = x@water / flour, target = devrecipe$addedWater2flour(x), margin = 1.01),
        'starch+' = new(Class = 'equiv', current = starch / flour),
        fat = new(Class = 'equiv', current = ret@fat / flour, target = devrecipe$fat2flour(x), margin = 1.05, tol = .01),
        sesame = new(Class = 'equiv', current = x@blackSesame / flour, target = devrecipe$blackSesame2flour(x)),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x['^eggYolk$'] / flour, target = devrecipe$eggYolk2flour(x)),
        '\U0001f95awhite' = new(Class = 'equiv', current = x['^eggWhite$'] / flour),
        'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / flour, target = devrecipe$Na2CO3_2flour(x)),
        'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / flour),
        bkPwd = new(Class = 'equiv', current = x@bakingPowder / flour, target = devrecipe$bakingPowder2flour(x)),
        salt = new(Class = 'equiv', current = x@salt / flour, target = devrecipe$salt2flour(x)),
        #sugar = new(Class = 'equiv', current = ret@sugar / flour),
        # 'sugar+' = new(Class = 'equiv', current = ret@addedSugar / flour),
        yeast = new(Class = 'equiv', current = sum(x@yeast) / flour, target = devrecipe$yeast2flour(x), margin = 1.1),
        matcha = new(Class = 'equiv', current = x@matcha / flour),
        cocoa = new(Class = 'equiv', current = x@cocoa / flour),
        acai = new(Class = 'equiv', current = x['_acai_pulv$'] / flour),
        coffee = new(Class = 'equiv', current = x@coffee / flour)
      ))
    
    
    attr(ret, which = 'perPastryFlr') <- if (pastryFlr) new(
      Class = 'per', per = 'Pastry\U1f370 Flour', equiv = list(
        puree = new(Class = 'equiv', current = puree / pastryFlr),
        water = new(Class = 'equiv', current = x@water / pastryFlr, target = devrecipe$addedWater2pastryFlr(x), margin = 1.01),
        gelatin = new(Class = 'equiv', current = x@gelatin / pastryFlr),
        '\U1f33d' = new(Class = 'equiv', current = cornmeal / pastryFlr),
        'starch+' = new(Class = 'equiv', current = starch / pastryFlr),
        fat = new(Class = 'equiv', current = ret@fat / pastryFlr, target = devrecipe$fat2pastryFlr(x), margin = 1.05, tol = .01),
        sesame = new(Class = 'equiv', current = x@blackSesame / pastryFlr, target = devrecipe$blackSesame2pastryFlr(x)),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x['^eggYolk$'] / pastryFlr, target = devrecipe$eggYolk2pastryFlr(x)),
        '\U0001f95awhite' = new(Class = 'equiv', current = x['^eggWhite$'] / pastryFlr),
        'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / pastryFlr, target = devrecipe$Na2CO3_2pastryFlr(x)),
        'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / pastryFlr),
        bkPwd = new(Class = 'equiv', current = x@bakingPowder / pastryFlr, target = devrecipe$bakingPowder2pastryFlr(x)),
        salt = new(Class = 'equiv', current = x@salt / pastryFlr, target = devrecipe$salt2pastryFlr(x)),
        #sugar = new(Class = 'equiv', current = ret@sugar / pastryFlr),
        # 'sugar+' = new(Class = 'equiv', current = ret@addedSugar / pastryFlr),
        yeast = new(Class = 'equiv', current = sum(x@yeast) / pastryFlr, target = devrecipe$yeast2pastryFlr(x), margin = 1.1),
        matcha = new(Class = 'equiv', current = x@matcha / pastryFlr, target = devrecipe$matcha2pastryFlr(x)),
        beet = new(Class = 'equiv', current = x['_beet_pulv$'] / pastryFlr, target = devrecipe$beet2pastryFlr(x)),
        cocoa = new(Class = 'equiv', current = x@cocoa / pastryFlr),
        acai = new(Class = 'equiv', current = x['_acai_pulv$'] / pastryFlr, target = devrecipe$acai2pastryFlr(x)),
        coffee = new(Class = 'equiv', current = x@coffee / pastryFlr)
      ))
    
    
    attr(ret, which = 'perBreadFlr') <- if (breadFlr) new(
      Class = 'per', per = 'Bread\U1f35e Flour', equiv = list(
        puree = new(Class = 'equiv', current = puree / breadFlr),
        'water+' = new(Class = 'equiv', current = tmp['addedWater'] / breadFlr, target = devrecipe$addedWater2breadFlr(x), margin = 1.01),
        gelatin = new(Class = 'equiv', current = x@gelatin / breadFlr),
        'starch+' = new(Class = 'equiv', current = starch / breadFlr),
        fat = new(Class = 'equiv', current = ret@fat / breadFlr, target = devrecipe$fat2breadFlr(x), margin = 1.05),
        sesame = new(Class = 'equiv', current = x@blackSesame / breadFlr, target = devrecipe$blackSesame2breadFlr(x)),
        # '\U0001f95ayolk' = new(Class = 'equiv', current = x['^eggYolk$'] / breadFlr, target = devrecipe$eggYolk2breadFlr(x)),
        '\U0001f95ayolk' = new(Class = 'equiv', current = x['^eggYolk$'] / breadFlr, target = devrecipe$eggYolk2breadFlr(x)),
        '\U0001f95awhite' = new(Class = 'equiv', current = x['^eggWhite$'] / breadFlr),
        'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / breadFlr, target = devrecipe$Na2CO3_2breadFlr(x)),
        'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / breadFlr),
        bkPwd = new(Class = 'equiv', current = x@bakingPowder / breadFlr, target = devrecipe$bakingPowder2breadFlr(x)),
        salt = new(Class = 'equiv', current = x@salt / breadFlr, target = devrecipe$salt2breadFlr(x)),
        #sugar = new(Class = 'equiv', current = ret@sugar / breadFlr),
        # 'sugar+' = new(Class = 'equiv', current = ret@addedSugar / breadFlr),
        yeast = new(Class = 'equiv', current = sum(x@yeast) / breadFlr, target = devrecipe$yeast2breadFlr(x), margin = 1.1),
        matcha = new(Class = 'equiv', current = x@matcha / breadFlr, target = devrecipe$matcha2breadFlr(x)),
        beet = new(Class = 'equiv', current = x['_beet_pulv$'] / breadFlr, target = devrecipe$beet2breadFlr(x)),
        cocoa = new(Class = 'equiv', current = x@cocoa / breadFlr),
        acai = new(Class = 'equiv', current = x['_acai_pulv$'] / breadFlr),
        coffee = new(Class = 'equiv', current = x@coffee / breadFlr)
      ))
    
  }
  
  attr(ret, which = 'perGlutenFreeFlr') <- if (gluten0Flr & !breadFlr & !pastryFlr & !flour) new(
    Class = 'per', per = 'Gluten-Free Flour', equiv = list(
      puree = new(Class = 'equiv', current = puree / gluten0Flr),
      water = new(Class = 'equiv', current = x@water / gluten0Flr, target = devrecipe$addedWater2gluten0Flr(x), margin = 1.01),
      gelatin = new(Class = 'equiv', current = x@gelatin / gluten0Flr),
      'starch+' = new(Class = 'equiv', current = starch / gluten0Flr),
      fat = new(Class = 'equiv', current = ret@fat / gluten0Flr, target = devrecipe$fat2gluten0Flr(x), margin = 1.05, tol = .01),
      sesame = new(Class = 'equiv', current = x@blackSesame / gluten0Flr, target = devrecipe$blackSesame2gluten0Flr(x)),
      '\U0001f95ayolk' = new(Class = 'equiv', current = x['^eggYolk$'] / gluten0Flr, target = devrecipe$eggYolk2gluten0Flr(x)),
      '\U0001f95awhite' = new(Class = 'equiv', current = x['^eggWhite$'] / gluten0Flr),
      'Na\u2082CO\u2083' = new(Class = 'equiv', current = x@Na2CO3 / gluten0Flr, target = devrecipe$Na2CO3_2gluten0Flr(x)),
      'NaHCO\u2083' = new(Class = 'equiv', current = x@NaHCO3 / gluten0Flr),
      bkPwd = new(Class = 'equiv', current = x@bakingPowder / gluten0Flr, target = devrecipe$bakingPowder2gluten0Flr(x)),
      salt = new(Class = 'equiv', current = x@salt / gluten0Flr, target = devrecipe$salt2gluten0Flr(x)),
      #sugar = new(Class = 'equiv', current = ret@sugar / gluten0Flr),
      # 'sugar+' = new(Class = 'equiv', current = ret@addedSugar / gluten0Flr),
      yeast = new(Class = 'equiv', current = sum(x@yeast) / gluten0Flr, target = devrecipe$yeast2gluten0Flr(x), margin = 1.1),
      matcha = new(Class = 'equiv', current = x@matcha / gluten0Flr),
      cocoa = new(Class = 'equiv', current = x@cocoa / gluten0Flr),
      acai = new(Class = 'equiv', current = x['_acai_pulv$'] / gluten0Flr),
      coffee = new(Class = 'equiv', current = x@coffee / gluten0Flr)
    ))
  
  attr(ret, which = 'perRiceFlr') <- if (riceFlr) new(
    Class = 'per', per = 'Glutinous+Rice\U1f33e Flour', equiv = list(
      water = new(Class = 'equiv', current = x@water / riceFlr, target = devrecipe$addedWater2riceflour(x)),
      glutRice = new(Class = 'equiv', current = x['_glutinousRiceFlr$'] / riceFlr, target = devrecipe$glutinousRice2riceflour(x)),
      gelatin = new(Class = 'equiv', current = x@gelatin / riceFlr),
      fat = new(Class = 'equiv', current = ret@fat / riceFlr, target = devrecipe$fat2riceflour(x), tol = .01),
      sesame = new(Class = 'equiv', current = x@blackSesame / riceFlr),
      #sugar = new(Class = 'equiv', current = ret@sugar / riceFlr),
      'starch+' = new(Class = 'equiv', current = starch / riceFlr, target = devrecipe$starch2riceflour(x)),
      matcha = new(Class = 'equiv', current = x@matcha / riceFlr, target = devrecipe$matcha2riceflour(x)),
      cocoa = new(Class = 'equiv', current = x@cocoa / riceFlr),
      acai = new(Class = 'equiv', current = x['_acai_pulv$'] / riceFlr),
      coffee = new(Class = 'equiv', current = x@coffee / riceFlr)
    ))
  
  attr(ret, which = 'perCocoa') <- if (length(x@cocoa) && !inherits(x, what = c('tiramisuMix', 'tiramisu_'))) new(
    Class = 'per', per = 'Alkalized Cocoa', equiv = list(
      alcohol = new(Class = 'equiv', current = ret@alcohol / x@cocoa, target = devrecipe$alcohol2cocoa(x)),
      drymilk = new(Class = 'equiv', current = sum(x['_drymilk$']) / x@cocoa, target = devrecipe$drymilk2cocoa(x)),
      coconutFlr = new(Class = 'equiv', current = x['_coconutFlr$'] / x@cocoa),
      coconutBar = new(Class = 'equiv', current = x['_coconutBar$'] / x@cocoa),
      sugar = if (length(ret@sugar) && length(ret@addedSugar) && (ret@sugar > ret@addedSugar)) new(Class = 'equiv', current = ret@sugar / x@cocoa) else new(Class = 'equiv'),
      'sugar+' = new(Class = 'equiv', current = ret@addedSugar / x@cocoa, target = devrecipe$addedSugar2cocoa(x)),
      coffee = new(Class = 'equiv', current = x@coffee / x@cocoa, target = devrecipe$coffee2cocoa(x)),
      tea = new(Class = 'equiv', current = x@tea / x@cocoa)
    )
  )
  
  
  attr(ret, which = 'perTea') <- if (length(x@tea)) new(
    Class = 'per', per = 'Tea\U1f343', equiv = list(
      drymilk = new(Class = 'equiv', current = sum(x['_drymilk$']) / x@tea),
      coffee = new(Class = 'equiv', current = x@coffee / x@tea),
      cocoa = new(Class = 'equiv', current = x@cocoa / x@tea)
    )
  )
  
  attr(ret, which = 'perCreamCheese') <- if (length(x['_creamCheese$'])) new(
    Class = 'per', per = 'Cream Cheese', equiv = list(
      'water+' = new(Class = 'equiv', current = tmp['addedWater']/sum(x['_creamCheese$']), target = devrecipe$addedWater2creamcheese(x)),
      fiber = new(Class = 'equiv', current = ret@fiber/sum(x['_creamCheese$'])), 
      'starch+' = new(Class = 'equiv', current = starch/sum(x['_creamCheese$'])), 
      '\U0001f95ayolk' = new(Class = 'equiv', current = x['^eggYolk$']/sum(x['_creamCheese$'])),
      '\U0001f95awhite' = new(Class = 'equiv', current = x['^eggWhite$']/sum(x['_creamCheese$']))
    ))
  
  #attr(ret, which = 'info') <- info
  
  #review <- attr(info, which = 'review')
  #attr(ret, which = 'review') <- review[names(review) == class(x)]
  
  #machine <- attr(info, which = 'machine')
  #attr(ret, which = 'machine') <- lapply(machine, FUN = \(ifun) ifun(class(x))) |> unlist(use.names = FALSE)
  #attr(ret, which = 'machine') <- machine[names(machine) == class(x)]
  
  return(ret)
  
})



setOldClass(Classes = 'perlist') # `'perlist'` is S3
setAs(from = 'recipe', to = 'perlist', def = \(from) {
  # a large part of 
  # setAs(from = 'recipe', to = 'nutrition')
  # should be here!!!!
})

