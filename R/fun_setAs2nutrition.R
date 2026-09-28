

setAs(from = 'raw.', to = 'nutrition', def = \(from) {
  
  grams <- from |> 
    as.double.raw.()
  
  info <- grams |>
    names() |> 
    lapply(FUN = \(i) {
      eval(call(name = i))
    }) |>
    do.call(what = nutritionlist, args = _) |>
    summary.nutritionlist()
  
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
  
  ret <- x |>
    as(Class = 'raw.') |>
    as(Class = 'nutrition')
  
  waterLost <- x@tool |>
    lapply(FUN = \(i) i@waterLost) |> 
    unlist(use.names = FALSE) |>
    sum()
  
  ret@name <- x@alias
  # `numeric() - 3` returns `numeric()` 
  ret@servingGram <- ret@servingGram - waterLost - sum(x@sugarLost)
  ret@sugar <- ret@sugar - sum(x@sugarLost)
  ret@addedSugar <- if (length(ret@addedSugar)) {
    max(0, ret@addedSugar - sum(x@sugarLost))
  } else numeric()
  ret@water <- ret@water - waterLost
  
  # next: return here!!!
  
  mixWheatFlr <- c(
    sum(x['_allPurposeFlr$']), 
    sum(x['_pastryFlr$']), 
    sum(x['_breadFlr$']), 
    sum(x['_wheatFlr$'])
  )

  devrecipe <- getOption('devrecipe')
  
  # attr(ret, which = 'perRaw') # now in setAs(from = 'raw.', to = 'per')
  
  attr(ret, which = 'perServingTexture') <- new(
    Class = 'per', 
    per = paste0('Serving; ', col_red('Texture Profile')), 
    equiv = new(Class = 'equiv', current = c(
      water = ret@water, #target = devrecipe$water(x)),
      carb = ret@carbohydrate, #target = devrecipe$carbohydrate(x)),
      fiber = ret@fiber, #, target = devrecipe$fiber(x)
      'NaHCO\u2083' = x@NaHCO3 |> sum(), # target = devrecipe$NaHCO3(x)
      fat = ret@fat, #target = devrecipe$fat(x), 
      #cholr = ret@cholesterol,
      bkPwd = x@bakingPowder |> sum(), #target = devrecipe$bakingPowder(x)),
      protein = ret@protein,
      'starch+' = x@starch |> sum(), #target = devrecipe$starch(x)),
      gelatin = x@gelatin |> sum()
    ) / ret@servingGram)
  )
  
  
  attr(ret, which = 'perServingFlavor') <- new(
    Class = 'per', 
    per = paste0('Serving; ', col_red('Flavor Profile')), 
    equiv = new(Class = 'equiv', current = c(
      alcohol = ret@alcohol, #target = devrecipe$alcohol(x)),
      sugar = ret@sugar, #target = devrecipe$sugar(x)) 
      'sugar+' = ret@addedSugar, #target = devrecipe$addedSugar(x)),
      ssmOil = x['_sesame_oil$'] |> sum(), #target = devrecipe$sesameOil(x)),
      rattanPpOil = x['_rattanPepper_oil$'] |> sum(), #target = devrecipe$rattanPepperOil(x)),
      #cholr = ret@cholesterol,
      'Na\u207a' = ret@sodium, #target = devrecipe$sodium(x), tol = .0001),
      msg = x@msg |> sum(),
      drymilk = x['_drymilk$'] |> sum(), #target = devrecipe$drymilk(x)),
      tea = x@tea |> sum(), # target = devrecipe$tea(x)
      creamChz = x['_creamCheese$'] |> sum(), #target = devrecipe$creamcheese(x)),
      matcha = x@matcha |> sum(), #target = devrecipe$matcha(x)),
      beet = x['_beet_pulv$'] |> sum(), #target = devrecipe$beet(x)),
      ginger = x['_ginger$'] |> sum(), #target = devrecipe$ginger.(x)),
      cumin = x['_cumin$'] |> sum(),
      cilantro = x['_cilantro$'] |> sum(),
      garlic = x['_garlic$'] |> sum(), #target = devrecipe$garlic(x)),
      onion = x['_onion$'] |> sum(), # target = devrecipe$onion(x)
      whitePp = x['_whitePepper$'] |> sum(), #target = devrecipe$whitePepper(x)),
      blackPp = x['_blackPepper$'] |> sum(), # , target = devrecipe$blackPepper(x)
      turmeric = x['_turmeric$'] |> sum(), # , target = devrecipe$turmeric(x)
      cinnamon = x['_cinnamon$'] |> sum(), # , target = devrecipe$cinnamon(x)
      paprika = x['_paprika$'] |> sum(), # , target = devrecipe$paprika(x)
      coriander = x['_coriander$'] |> sum(), #target = devrecipe$coriander(x)),
      # chiliMix = x@chiliMix |> sum(),
      '\U0001f383spice' = x['_pumpkinSpice$'] |> sum(), #target = devrecipe$pumpkinSpice(x)),
      #curry = x@curry,
      sesame = x@blackSesame |> sum(), #target = devrecipe$blackSesame(x)),
      coconutFlr = x['_coconutFlr$'] |> sum(),
      coconutBar = x['_coconutBar$'] |> sum(),
      cocoa = x@cocoa |> sum(), #target = devrecipe$cocoa(x)),
      coffee = x@coffee |> sum(), #target = devrecipe$coffee(x)),
      acai = x['_acai_pulv$'] |> sum()#, target = devrecipe$acai(x))
    ) / ret@servingGram) 
  )
  
  attr(ret, which = 'perCornmeal') <- new(
    Class = 'per', 
    per = 'Cornmeal\U1f33d', 
    equiv = new(Class = 'equiv', current = c(
      water = x@water |> sum(), # depends on `flour` as well
      flour = x['_allPurposeFlr$'] |> sum(), #target = devrecipe$flour2cornmeal(x)),
      '\U0001f35eflour' = x['_breadFlr$'] |> sum(), #target = devrecipe$breadFlr2cornmeal(x)),
      '\U0001f370flour' = x['_pastryFlr$'] |> sum(), #target = devrecipe$pastryFlr2cornmeal(x)),
      '\U0001f95ayolk' = x['^eggYolk$'] |> sum(),
      '\U0001f95awhite' = x['^eggWhite$'] |> sum()
    ) / sum(x['_cornmeal$']))
  ) 
  
  if (sum(mixWheatFlr > 0) > 1L) {
    
    attr(ret, which = 'perMixFlr') <- new(
      Class = 'per', 
      per = 'Mixed Wheat Flour', 
      equiv = new(Class = 'equiv', current = c(
        puree = x@puree |> sum(),
        water = x@water |> sum(), #target = devrecipe$water2wheatflourmix(x)),
        'starch+' = x@starch |> sum(),
        fat = ret@fat, #target = devrecipe$fat2wheatflourmix(x)),
        sesame = x@blackSesame |> sum(),
        '\U0001f95ayolk' = x['^eggYolk$'] |> sum(),
        '\U0001f95awhite' = x['^eggWhite$'] |> sum(),
        'Na\u2082CO\u2083' = x@Na2CO3 |> sum(),
        'NaHCO\u2083' = x@NaHCO3 |> sum(),
        bkPwd = x@bakingPowder |> sum(), #target = devrecipe$bakingPowder2wheatflourmix(x)),
        salt = x@salt |> sum(),
        #sugar = ret@sugar,
        # 'sugar+' = ret@addedSugar,
        yeast = x@yeast |> sum(), #target = devrecipe$yeast2wheatflourmix(x)),
        matcha = x@matcha |> sum(),
        cocoa = x@cocoa |> sum(),
        acai = x['_acai_pulv$'] |> sum(),
        coffee = x@coffee |> sum()
      ) / sum(mixWheatFlr))
    )
    
  } else {
    
    attr(ret, which = 'perAllPurposeFlr') <- if (!inherits(x, what = 'cheesecake')) new(
      Class = 'per', 
      per = 'All-Purpose\U1f370\U1f35e Flour', 
      equiv = new(Class = 'equiv', current = c(
        puree = x@puree |> sum(),
        water = x@water |> sum(), #target = devrecipe$water2flour(x), margin = 1.01),
        'starch+' = x@starch |> sum(),
        fat = ret@fat, #target = devrecipe$fat2flour(x), margin = 1.05, tol = .01),
        sesame = x@blackSesame |> sum(), #target = devrecipe$blackSesame2flour(x)),
        '\U0001f95ayolk' = x['^eggYolk$'] |> sum(), #target = devrecipe$eggYolk2flour(x)),
        '\U0001f95awhite' = x['^eggWhite$'] |> sum(),
        'Na\u2082CO\u2083' = x@Na2CO3 |> sum(), #target = devrecipe$Na2CO3_2flour(x)),
        'NaHCO\u2083' = x@NaHCO3 |> sum(),
        bkPwd = x@bakingPowder |> sum(), #target = devrecipe$bakingPowder2flour(x)),
        salt = x@salt |> sum(), #target = devrecipe$salt2flour(x)),
        #sugar = ret@sugar,
        # 'sugar+' = ret@addedSugar,
        yeast = x@yeast |> sum(), #target = devrecipe$yeast2flour(x), margin = 1.1),
        matcha = x@matcha |> sum(),
        cocoa = x@cocoa |> sum(),
        acai = x['_acai_pulv$'] |> sum(),
        coffee = x@coffee |> sum()
      ) / sum(x['_allPurposeFlr$'])
      ))
    
    
    attr(ret, which = 'perPastryFlr') <- new(
      Class = 'per', 
      per = 'Pastry\U1f370 Flour', 
      equiv = new(Class = 'equiv', current = c(
        puree = x@puree |> sum(),
        water = x@water |> sum(), #target = devrecipe$water2pastryFlr(x), margin = 1.01),
        gelatin = x@gelatin |> sum(),
        '\U1f33d' = x['_cornmeal$'] |> sum(),
        'starch+' = x@starch |> sum(),
        fat = ret@fat, #target = devrecipe$fat2pastryFlr(x), margin = 1.05, tol = .01),
        sesame = x@blackSesame |> sum(), #target = devrecipe$blackSesame2pastryFlr(x)),
        '\U0001f95ayolk' = x['^eggYolk$'] |> sum(), #target = devrecipe$eggYolk2pastryFlr(x)),
        '\U0001f95awhite' = x['^eggWhite$'] |> sum(),
        'Na\u2082CO\u2083' = x@Na2CO3 |> sum(), #target = devrecipe$Na2CO3_2pastryFlr(x)),
        'NaHCO\u2083' = x@NaHCO3 |> sum(),
        bkPwd = x@bakingPowder |> sum(), #target = devrecipe$bakingPowder2pastryFlr(x)),
        salt = x@salt |> sum(), #target = devrecipe$salt2pastryFlr(x)),
        #sugar = ret@sugar,
        # 'sugar+' = ret@addedSugar,
        yeast = x@yeast |> sum(), #target = devrecipe$yeast2pastryFlr(x), margin = 1.1),
        matcha = x@matcha |> sum(), #target = devrecipe$matcha2pastryFlr(x)),
        beet = x['_beet_pulv$'] |> sum(), #target = devrecipe$beet2pastryFlr(x)),
        cocoa = x@cocoa |> sum(),
        acai = x['_acai_pulv$'] |> sum(), #target = devrecipe$acai2pastryFlr(x)),
        coffee = x@coffee |> sum()
      ) / sum(x['_pastryFlr$'])
      ))
    
    
    attr(ret, which = 'perBreadFlr') <- new(
      Class = 'per', 
      per = 'Bread\U1f35e Flour', 
      equiv = new(Class = 'equiv', current = c(
        puree = x@puree |> sum(),
        gelatin = x@gelatin |> sum(),
        'starch+' = x@starch |> sum(),
        fat = ret@fat, #target = devrecipe$fat2breadFlr(x), margin = 1.05),
        sesame = x@blackSesame |> sum(), #target = devrecipe$blackSesame2breadFlr(x)),
        '\U0001f95ayolk' = x['^eggYolk$'] |> sum(), #target = devrecipe$eggYolk2breadFlr(x)),
        '\U0001f95awhite' = x['^eggWhite$'] |> sum(),
        'Na\u2082CO\u2083' = x@Na2CO3 |> sum(), #target = devrecipe$Na2CO3_2breadFlr(x)),
        'NaHCO\u2083' = x@NaHCO3 |> sum(),
        bkPwd = x@bakingPowder |> sum(), #target = devrecipe$bakingPowder2breadFlr(x)),
        salt = x@salt |> sum(), #target = devrecipe$salt2breadFlr(x)),
        #sugar = ret@sugar,
        # 'sugar+' = ret@addedSugar,
        yeast = x@yeast |> sum(), #target = devrecipe$yeast2breadFlr(x), margin = 1.1),
        matcha = x@matcha |> sum(), #target = devrecipe$matcha2breadFlr(x)),
        beet = x['_beet_pulv$'] |> sum(), #target = devrecipe$beet2breadFlr(x)),
        cocoa = x@cocoa |> sum(),
        acai = x['_acai_pulv$'] |> sum(),
        coffee = x@coffee |> sum()
      ) / sum(x['_breadFlr$'])
      ))
    
  }
  
  attr(ret, which = 'perGlutenFreeFlr') <- if (!sum(x['_breadFlr$']) & !sum(x['_pastryFlr$']) & !sum(x['_allPurposeFlr$'])) new(
    Class = 'per', 
    per = 'Gluten-Free Flour', 
    equiv = new(Class = 'equiv', current = c(
      puree = x@puree |> sum(),
      water = x@water |> sum(), #target = devrecipe$water2gluten0Flr(x), margin = 1.01),
      gelatin = x@gelatin |> sum(),
      'starch+' = x@starch |> sum(),
      fat = ret@fat, #target = devrecipe$fat2gluten0Flr(x), margin = 1.05, tol = .01),
      sesame = x@blackSesame |> sum(), #target = devrecipe$blackSesame2gluten0Flr(x)),
      '\U0001f95ayolk' = x['^eggYolk$'] |> sum(), #target = devrecipe$eggYolk2gluten0Flr(x)),
      '\U0001f95awhite' = x['^eggWhite$'] |> sum(),
      'Na\u2082CO\u2083' = x@Na2CO3 |> sum(), #target = devrecipe$Na2CO3_2gluten0Flr(x)),
      'NaHCO\u2083' = x@NaHCO3 |> sum(),
      bkPwd = x@bakingPowder |> sum(), #target = devrecipe$bakingPowder2gluten0Flr(x)),
      salt = x@salt |> sum(), #target = devrecipe$salt2gluten0Flr(x)),
      #sugar = ret@sugar,
      # 'sugar+' = ret@addedSugar,
      yeast = x@yeast |> sum(), #target = devrecipe$yeast2gluten0Flr(x), margin = 1.1),
      matcha = x@matcha |> sum(),
      cocoa = x@cocoa |> sum(),
      acai = x['_acai_pulv$'] |> sum(),
      coffee = x@coffee |> sum()
    ) / sum(x['_gluten0Flr$'])
    ))
  
  attr(ret, which = 'perRiceFlr') <- new(
    Class = 'per', 
    per = 'Glutinous+Rice\U1f33e Flour', 
    equiv = new(Class = 'equiv', current = c(
      water = x@water |> sum(), #target = devrecipe$water2riceflour(x)),
      glutRice = x['_glutinousRiceFlr$'] |> sum(), #target = devrecipe$glutinousRice2riceflour(x)),
      gelatin = x@gelatin |> sum(),
      fat = ret@fat |> sum(), #target = devrecipe$fat2riceflour(x), tol = .01),
      sesame = x@blackSesame |> sum(),
      #sugar = ret@sugar),
      'starch+' = x@starch |> sum() |> sum(), #target = devrecipe$starch2riceflour(x)),
      matcha = x@matcha |> sum(), #target = devrecipe$matcha2riceflour(x)),
      cocoa = x@cocoa |> sum(),
      acai = x['_acai_pulv$'] |> sum(),
      coffee = x@coffee |> sum()
    ) / sum(x['_riceFlr$|_glutinousRiceFlr$'])
  ))
  
  attr(ret, which = 'perCocoa') <- if (!inherits(x, what = c('tiramisuMix', 'tiramisu_'))) new(
    Class = 'per', 
    per = 'Alkalized Cocoa', 
    equiv = new(Class = 'equiv', current = c(
      alcohol = ret@alcohol, #target = devrecipe$alcohol2cocoa(x)),
      drymilk = x['_drymilk$'] |> sum(), #target = devrecipe$drymilk2cocoa(x)),
      coconutFlr = x['_coconutFlr$'] |> sum(),
      coconutBar = x['_coconutBar$'] |> sum(),
      sugar = ret@sugar,
      'sugar+' = ret@addedSugar, #target = devrecipe$addedSugar2cocoa(x)),
      coffee = x@coffee |> sum(), #target = devrecipe$coffee2cocoa(x)),
      tea = x@tea |> sum()
    ) / x@cocoa
    ))
  
  
  attr(ret, which = 'perTea') <- new(
    Class = 'per', 
    per = 'Tea\U1f343', 
    equiv = new(Class = 'equiv', current = c(
      drymilk = x['_drymilk$'] |> sum(),
      coffee = x@coffee |> sum(),
      cocoa = x@cocoa |> sum()
    ) / x@tea
    ))
  
  attr(ret, which = 'perCreamCheese') <- new(
    Class = 'per', 
    per = 'Cream Cheese', 
    equiv = new(Class = 'equiv', current = c(
      fiber = ret@fiber, 
      'starch+' = x@starch |> sum(), 
      '\U0001f95ayolk' = x['^eggYolk$'] |> sum(),
      '\U0001f95awhite' = x['^eggWhite$'] |> sum()
    ) / sum(x['_creamCheese$'])
    ))
  
  return(ret)
  
})



