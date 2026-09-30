

setAs(from = 'raw.', to = 'nutrition', def = \(from) {
  
  grams <- from |> 
    as.double.raw.()
  
  info <- grams |>
    names() |> 
    lapply(FUN = \(i) {
      eval(call(name = i))
    }) |>
    do.call(what = nutritionlist, args = _) |>
    as.matrix.nutritionlist(incl_usd = TRUE, incl_calorie = TRUE, rel = TRUE)
  
  z <- crossprod(grams, info)[1, , drop = TRUE]
  
  new(
    Class = 'nutrition',  
    name = character(),
    servingGram = sum(grams),
    usd = z['usd'] |> unname(),
    calorie = z['calorie'] |> unname(),
    carbohydrate = z['carbohydrate'] |> unname(),
    fiber = z['fiber'] |> unname(),
    sugar = z['sugar'] |> unname(),
    addedSugar = max(0, z['addedSugar']) |> unname(),
    alcohol = z['alcohol'] |> unname(),
    sodium = z['sodium'] |> unname(),
    fat = z['fat'] |> unname(),
    cholesterol = z['cholesterol'] |> unname(),
    protein = z['protein'] |> unname(),
    water = z['water'] |> unname()
  )
  
})







setAs(from = 'recipe', to = 'nutrition', def = \(from) {
  
  x <- from; from <- NULL
  
  nutri <- x |>
    as(Class = 'raw.') |>
    as(Class = 'nutrition')
  
  waterLost <- x@tool |>
    lapply(FUN = \(i) i@waterLost) |> 
    unlist(use.names = FALSE) |>
    sum()
  
  nutri@name <- x@alias
  # `numeric() - 3` returns `numeric()` 
  nutri@servingGram <- nutri@servingGram - waterLost - sum(x@sugarLost)
  nutri@sugar <- nutri@sugar - sum(x@sugarLost)
  nutri@addedSugar <- if (length(nutri@addedSugar)) {
    max(0, nutri@addedSugar - sum(x@sugarLost))
  } else numeric()
  nutri@water <- max(0, nutri@water - waterLost) # tzh has not put @water info for all \linkS4class{nutrition} objects
  
  # next: return here!!!
  
  mixWheatFlr <- c(
    sum(x['_allPurposeFlr$']), 
    sum(x['_pastryFlr$']), 
    sum(x['_breadFlr$']), 
    sum(x['_wheatFlr$'])
  )

  devrecipe <- getOption('devrecipe')
  
  z <- c(
    #nutri |>
    #  as.double.nutrition(incl_calorie = FALSE, incl_usd = FALSE, incl_carbohydrate = FALSE, rel = FALSE),
    water = x@water |> sum(), 
    #carb = nutri@carbohydrate, # not important here
    fiber = nutri@fiber, fat = nutri@fat, 
    #cholr = nutri@cholesterol,
    'Na\u207a' = nutri@sodium, # this rename is a headache..
    #sodium = nutri@sodium,
    sugar = nutri@sugar, 'sugar+' = nutri@addedSugar, # rename again
    protein = nutri@protein,
    alcohol = nutri@alcohol, 
    'NaHCO\u2083' = x@NaHCO3 |> sum(), 
    'Na\u2082CO\u2083' = x@Na2CO3 |> sum(), 
    salt = x@salt |> sum(), # e.g., salt-2-flour, salt-2-yeast
    bkPwd = x@bakingPowder |> sum(), 
    yeast = x@yeast |> sum(),
    'starch+' = x@starch |> sum(), 
    gelatin = x@gelatin |> sum(),
    ssmOil = x['_sesame_oil$'] |> sum(), 
    rattanPpOil = x['_rattanPepper_oil$'] |> sum(),
    msg = x@msg |> sum(),
    tea = x@tea |> sum(), 
    
    acai = x['_acai_pulv$'] |> sum(),
    beet = x['_beet_pulv$'] |> sum(),
    matcha = x@matcha |> sum(), 
    
    blackPp = x['_blackPepper$'] |> sum(), 
    cilantro = x['_cilantro$'] |> sum(),
    cinnamon = x['_cinnamon$'] |> sum(),
    coriander = x['_coriander$'] |> sum(),
    cumin = x['_cumin$'] |> sum(),
    garlic = x['_garlic$'] |> sum(), 
    ginger = x['_ginger$'] |> sum(), 
    onion = x['_onion$'] |> sum(), 
    paprika = x['_paprika$'] |> sum(),
    '\U0001f383spice' = x['_pumpkinSpice$'] |> sum(),
    sesame = x@blackSesame |> sum(), 
    turmeric = x['_turmeric$'] |> sum(), 
    whitePp = x['_whitePepper$'] |> sum(), 
    
    #chiliMix = x@chiliMix |> sum(),
    #curry = x@curry |> sum(),
    
    coconutBar = x['_coconutBar$'] |> sum(),
    coconutFlr = x['_coconutFlr$'] |> sum(),
    
    drymilk = x['_drymilk$'] |> sum(),
    creamChz = x['_creamCheese$'] |> sum(),
    cocoa = x@cocoa |> sum(),
    coffee = x@coffee |> sum(), 
    
    flour = x['_allPurposeFlr$'] |> sum(),
    '\U0001f35eflr' = x['_breadFlr$'] |> sum(), 
    '\U0001f370flr' = x['_pastryFlr$'] |> sum(), 
    '\U0001f95ayolk' = x['^eggYolk$'] |> sum(),
    # '\U0001f95awhite' = x['^eggWhite$'] |> sum(), # waterLost after cooking!!
    '\U1f33d' = x['_cornmeal$'] |> sum(),
    glutRice = x['_glutinousRiceFlr$'] |> sum()#, 
    
    #puree = x@puree |> sum() # waterLost after cooking!!
  )
  
  # attr(nutri, which = 'perRaw') # now in setAs(from = 'raw.', to = 'per')
  
  #attr(nutri, which = 'perServingTexture') <- new(
  #  Class = 'per', 
  #  per = paste0('Serving; ', col_red('Texture Profile')), 
  #  equiv = new(Class = 'equiv', current = z / nutri@servingGram, target = c(
  #    water = devrecipe$water(x),
  #    #carb = devrecipe$carbohydrate(x),
  #    fat = devrecipe$fat(x), 
  #    bkPwd = devrecipe$bakingPowder(x),
  #    'starch+' = devrecipe$starch(x)
  #  )))
  
  
  attr(nutri, which = 'perServing') <- new(
    Class = 'per', 
    per = 'Serving', 
    equiv = new(Class = 'equiv', current = z / nutri@servingGram, target = c(
      water = devrecipe$water(x),
      #carb = devrecipe$carbohydrate(x),
      fat = devrecipe$fat(x), 
      bkPwd = devrecipe$bakingPowder(x),
      'starch+' = devrecipe$starch(x),
      alcohol = devrecipe$alcohol(x),
      sugar = devrecipe$sugar(x), 
      'sugar+' = devrecipe$addedSugar(x),
      ssmOil = devrecipe$sesameOil(x),
      rattanPpOil = devrecipe$rattanPepperOil(x),
      'Na\u207a' = devrecipe$sodium(x),
      #sodium = devrecipe$sodium(x),
      drymilk = devrecipe$drymilk(x),
      creamChz = devrecipe$creamcheese(x),
      matcha = devrecipe$matcha(x),
      beet = devrecipe$beet(x),
      ginger = devrecipe$ginger.(x),
      garlic = devrecipe$garlic(x),
      whitePp = devrecipe$whitePepper(x),
      coriander = devrecipe$coriander(x),
      '\U0001f383spice' = devrecipe$pumpkinSpice(x),
      sesame = devrecipe$blackSesame(x),
      cocoa = devrecipe$cocoa(x),
      coffee = devrecipe$coffee(x),
      acai = devrecipe$acai(x)
    )))
  
  attr(nutri, which = 'perCornmeal') <- new(
    Class = 'per', 
    per = 'Cornmeal\U1f33d', 
    equiv = new(Class = 'equiv', current = z / sum(x['_cornmeal$']), target = c(
      flour = devrecipe$flour2cornmeal(x),
      '\U0001f35eflr' = devrecipe$breadFlr2cornmeal(x),
      '\U0001f370flr' = devrecipe$pastryFlr2cornmeal(x)
    ))) 
  
  if (sum(mixWheatFlr > 0) > 1L) {
    
    attr(nutri, which = 'perMixFlr') <- new(
      Class = 'per', 
      per = 'Mixed Wheat Flour', 
      equiv = new(Class = 'equiv', current = z / sum(mixWheatFlr), target = c(
        water = devrecipe$water2wheatflourmix(x),
        fat = devrecipe$fat2wheatflourmix(x),
        bkPwd = devrecipe$bakingPowder2wheatflourmix(x),
        yeast = devrecipe$yeast2wheatflourmix(x)
      )))
    
  } else {
    
    attr(nutri, which = 'perAllPurposeFlr') <- if (!inherits(x, what = 'cheesecake')) new(
      Class = 'per', 
      per = 'All-Purpose\U1f370\U1f35e Flour', 
      equiv = new(Class = 'equiv', current = z / sum(x['_allPurposeFlr$']), target = c(
        water = devrecipe$water2flour(x),
        fat = devrecipe$fat2flour(x),
        sesame = devrecipe$blackSesame2flour(x),
        '\U0001f95ayolk' = devrecipe$eggYolk2flour(x),
        'Na\u2082CO\u2083' = devrecipe$Na2CO3_2flour(x),
        bkPwd = devrecipe$bakingPowder2flour(x),
        salt = devrecipe$salt2flour(x),
        yeast = devrecipe$yeast2flour(x)
      )))
    
    
    attr(nutri, which = 'perPastryFlr') <- new(
      Class = 'per', 
      per = 'Pastry\U1f370 Flour', 
      equiv = new(Class = 'equiv', current = z / sum(x['_pastryFlr$']), target = c(
        water = devrecipe$water2pastryFlr(x),
        fat = devrecipe$fat2pastryFlr(x),
        sesame = devrecipe$blackSesame2pastryFlr(x),
        '\U0001f95ayolk' = devrecipe$eggYolk2pastryFlr(x),
        'Na\u2082CO\u2083' = devrecipe$Na2CO3_2pastryFlr(x),
        bkPwd = devrecipe$bakingPowder2pastryFlr(x),
        salt = devrecipe$salt2pastryFlr(x),
        yeast = devrecipe$yeast2pastryFlr(x),
        matcha = devrecipe$matcha2pastryFlr(x),
        beet = devrecipe$beet2pastryFlr(x),
        acai = devrecipe$acai2pastryFlr(x)
      )))
    
    
    attr(nutri, which = 'perBreadFlr') <- new(
      Class = 'per', 
      per = 'Bread\U1f35e Flour', 
      equiv = new(Class = 'equiv', current = z / sum(x['_breadFlr$']), target = c(
        fat = devrecipe$fat2breadFlr(x),
        sesame = devrecipe$blackSesame2breadFlr(x),
        '\U0001f95ayolk' = devrecipe$eggYolk2breadFlr(x),
        'Na\u2082CO\u2083' = devrecipe$Na2CO3_2breadFlr(x),
        bkPwd = devrecipe$bakingPowder2breadFlr(x),
        salt = devrecipe$salt2breadFlr(x),
        yeast = devrecipe$yeast2breadFlr(x),
        matcha = devrecipe$matcha2breadFlr(x),
        beet = devrecipe$beet2breadFlr(x)
      )))
    
  }
  
  attr(nutri, which = 'perGlutenFreeFlr') <- if (!sum(x['_breadFlr$']) & !sum(x['_pastryFlr$']) & !sum(x['_allPurposeFlr$'])) new(
    Class = 'per', 
    per = 'Gluten-Free Flour', 
    equiv = new(Class = 'equiv', current = z / sum(x['_gluten0Flr$']), target = c(
      water = devrecipe$water2gluten0Flr(x),
      fat = devrecipe$fat2gluten0Flr(x),
      sesame = devrecipe$blackSesame2gluten0Flr(x),
      '\U0001f95ayolk' = devrecipe$eggYolk2gluten0Flr(x),
      'Na\u2082CO\u2083' = devrecipe$Na2CO3_2gluten0Flr(x),
      bkPwd = devrecipe$bakingPowder2gluten0Flr(x),
      salt = devrecipe$salt2gluten0Flr(x),
      yeast = devrecipe$yeast2gluten0Flr(x)
    )))
  
  attr(nutri, which = 'perRiceFlr') <- new(
    Class = 'per', 
    per = 'Glutinous+Rice\U1f33e Flour', 
    equiv = new(Class = 'equiv', current = z / sum(x['_riceFlr$|_glutinousRiceFlr$']), target = c(
      water = devrecipe$water2riceflour(x),
      glutRice = devrecipe$glutinousRice2riceflour(x),
      fat = devrecipe$fat2riceflour(x),
      'starch+' = devrecipe$starch2riceflour(x),
      matcha = devrecipe$matcha2riceflour(x)
    )))
  
  attr(nutri, which = 'perCocoa') <- if (!inherits(x, what = c('tiramisuMix', 'tiramisu_'))) new(
    Class = 'per', 
    per = 'Alkalized Cocoa', 
    equiv = new(Class = 'equiv', current = z / x@cocoa, target = c(
      alcohol = devrecipe$alcohol2cocoa(x),
      drymilk = devrecipe$drymilk2cocoa(x),
      'sugar+' = devrecipe$addedSugar2cocoa(x),
      coffee = devrecipe$coffee2cocoa(x)
    )))
  
  
  attr(nutri, which = 'perTea') <- new(
    Class = 'per', 
    per = 'Tea\U1f343', 
    equiv = new(Class = 'equiv', current = z / x@tea))
  
  attr(nutri, which = 'perCreamCheese') <- new(
    Class = 'per', 
    per = 'Cream Cheese', 
    equiv = new(Class = 'equiv', current = z / sum(x['_creamCheese$'])))
  
  return(nutri)
  
})



