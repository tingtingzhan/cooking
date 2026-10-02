
#setOldClass(Classes = 'perlist') # `'perlist'` is S3

#' @export
summary.nutrition <- \(object, ...) {
  z <- object |>
    as.double.nutrition(
      incl_calorie = FALSE, 
      incl_usd = FALSE, 
      incl_water = FALSE, # **not** nutri@water
      incl_carbohydrate = FALSE, 
      rel = TRUE
    ) |>
    new(Class = 'equiv', current = _) |>
    new(Class = 'per', per = 'Serving', equiv = _)
  return(list(perServing = z))
}



#' @method summary raw.
#' @export
summary.raw. <- \(object, ...) {
  
  x <- object; object <- NULL
  
  nutri <- x |>
    as(Class = 'nutrition')
  # setAs(from = 'raw.', to = 'nutrition')
  # setAs(from = 'recipe', to = 'nutrition')
  
  z <- c(
    nutri |>
      as.double.nutrition(
        incl_calorie = FALSE, 
        incl_usd = FALSE, 
        incl_water = FALSE, # **not** nutri@water
        incl_carbohydrate = FALSE, 
        rel = FALSE
      ),
    x |>
      as(Class = 'raw.') |>
      as.double.raw.(detail = FALSE, rel = FALSE)
  )
  
  mixWheatFlr <- c(
    sum(x['_allPurposeFlr$']), 
    sum(x['_pastryFlr$']), 
    sum(x['_breadFlr$']), 
    sum(x['_wheatFlr$'])
  )
  
  devrecipe <- getOption('devrecipe')

  ret <- list()
  
  ret$perRaw <- x |>
    as(Class = 'raw.') |>
    as.double.raw.(detail = FALSE, rel = TRUE) |>
    new(Class = 'equiv', current = _) |>
    new(Class = 'per', per = 'Raw Ingredients', equiv = _)
  
  ret$perServing <- new(
    Class = 'per', 
    per = 'Serving', 
    equiv = new(Class = 'equiv', current = z / nutri@servingGram, target = c(
      water = devrecipe$water(x), # um, this is wrong; raw-water / cooked-total
      #carbohydrate = devrecipe$carbohydrate(x),
      fat = devrecipe$fat(x), 
      bakingPowder = devrecipe$bakingPowder(x),
      starch = devrecipe$starch(x),
      alcohol = devrecipe$alcohol(x),
      sugar = devrecipe$sugar(x), 
      addedSugar = devrecipe$addedSugar(x),
      ssmOil = devrecipe$sesameOil(x),
      rattanPpOil = devrecipe$rattanPepperOil(x),
      sodium = devrecipe$sodium(x),
      drymilk = devrecipe$drymilk(x),
      creamChz = devrecipe$creamcheese(x),
      matcha = devrecipe$matcha(x),
      beet = devrecipe$beet(x),
      ginger = devrecipe$ginger.(x),
      garlic = devrecipe$garlic(x),
      whitePp = devrecipe$whitePepper(x),
      coriander = devrecipe$coriander(x),
      pumpkinSpice = devrecipe$pumpkinSpice(x),
      sesame = devrecipe$blackSesame(x),
      cocoa = devrecipe$cocoa(x),
      coffee = devrecipe$coffee(x),
      acai = devrecipe$acai(x)
    )))
  
  ret$perCornmeal <- new(
    Class = 'per', 
    per = 'Cornmeal\U1f33d', 
    equiv = new(Class = 'equiv', current = z / sum(x['_cornmeal$']), target = c(
      flour = devrecipe$flour2cornmeal(x),
      breadFlr = devrecipe$breadFlr2cornmeal(x),
      pastryFlr = devrecipe$pastryFlr2cornmeal(x)
    ))) 
  
  if (sum(mixWheatFlr > 0) > 1L) {
    
    ret$perMixFlr <- new(
      Class = 'per', 
      per = 'Mixed Wheat Flour', 
      equiv = new(Class = 'equiv', current = z / sum(mixWheatFlr), target = c(
        water = devrecipe$water2wheatflourmix(x),
        fat = devrecipe$fat2wheatflourmix(x),
        bakingPowder = devrecipe$bakingPowder2wheatflourmix(x),
        yeast = devrecipe$yeast2wheatflourmix(x)
      )))
    
  } else {
    
    ret$perAllPurposeFlr <- if (!inherits(x, what = 'cheesecake')) new(
      Class = 'per', 
      per = 'All-Purpose\U1f370\U1f35e Flour', 
      equiv = new(Class = 'equiv', current = z / sum(x['_allPurposeFlr$']), target = c(
        water = devrecipe$water2flour(x),
        fat = devrecipe$fat2flour(x),
        sesame = devrecipe$blackSesame2flour(x),
        eggYolk = devrecipe$eggYolk2flour(x),
        Na2CO3 = devrecipe$Na2CO3_2flour(x),
        bakingPowder = devrecipe$bakingPowder2flour(x),
        salt = devrecipe$salt2flour(x),
        yeast = devrecipe$yeast2flour(x)
      )))
    
    
    ret$perPastryFlr <- new(
      Class = 'per', 
      per = 'Pastry\U1f370 Flour', 
      equiv = new(Class = 'equiv', current = z / sum(x['_pastryFlr$']), target = c(
        water = devrecipe$water2pastryFlr(x),
        fat = devrecipe$fat2pastryFlr(x),
        sesame = devrecipe$blackSesame2pastryFlr(x),
        eggYolk = devrecipe$eggYolk2pastryFlr(x),
        Na2CO3 = devrecipe$Na2CO3_2pastryFlr(x),
        bakingPowder = devrecipe$bakingPowder2pastryFlr(x),
        salt = devrecipe$salt2pastryFlr(x),
        yeast = devrecipe$yeast2pastryFlr(x),
        matcha = devrecipe$matcha2pastryFlr(x),
        beet = devrecipe$beet2pastryFlr(x),
        acai = devrecipe$acai2pastryFlr(x)
      )))
    
    
    ret$perBreadFlr <- new(
      Class = 'per', 
      per = 'Bread\U1f35e Flour', 
      equiv = new(Class = 'equiv', current = z / sum(x['_breadFlr$']), target = c(
        fat = devrecipe$fat2breadFlr(x),
        sesame = devrecipe$blackSesame2breadFlr(x),
        eggYolk = devrecipe$eggYolk2breadFlr(x),
        Na2CO3 = devrecipe$Na2CO3_2breadFlr(x),
        bakingPowder = devrecipe$bakingPowder2breadFlr(x),
        salt = devrecipe$salt2breadFlr(x),
        yeast = devrecipe$yeast2breadFlr(x),
        matcha = devrecipe$matcha2breadFlr(x),
        beet = devrecipe$beet2breadFlr(x)
      )))
    
  }
  
  ret$perGlutenFreeFlr <- if (!sum(x['_breadFlr$']) & !sum(x['_pastryFlr$']) & !sum(x['_allPurposeFlr$'])) new(
    Class = 'per', 
    per = 'Gluten-Free Flour', 
    equiv = new(Class = 'equiv', current = z / sum(x['_gluten0Flr$']), target = c(
      water = devrecipe$water2gluten0Flr(x),
      fat = devrecipe$fat2gluten0Flr(x),
      sesame = devrecipe$blackSesame2gluten0Flr(x),
      eggYolk = devrecipe$eggYolk2gluten0Flr(x),
      Na2CO3 = devrecipe$Na2CO3_2gluten0Flr(x),
      bakingPowder = devrecipe$bakingPowder2gluten0Flr(x),
      salt = devrecipe$salt2gluten0Flr(x),
      yeast = devrecipe$yeast2gluten0Flr(x)
    )))
  
  ret$perRiceFlr <- new(
    Class = 'per', 
    per = 'Glutinous+Rice\U1f33e Flour', 
    equiv = new(Class = 'equiv', current = z / sum(x['_riceFlr$|_glutinousRiceFlr$']), target = c(
      water = devrecipe$water2riceflour(x),
      glutRice = devrecipe$glutinousRice2riceflour(x),
      fat = devrecipe$fat2riceflour(x),
      starch = devrecipe$starch2riceflour(x),
      matcha = devrecipe$matcha2riceflour(x)
    )))
  
  ret$perCocoa <- if (!inherits(x, what = c('tiramisuMix', 'tiramisu_'))) new(
    Class = 'per', 
    per = 'Alkalized Cocoa', 
    equiv = new(Class = 'equiv', current = z / x@cocoa, target = c(
      alcohol = devrecipe$alcohol2cocoa(x),
      drymilk = devrecipe$drymilk2cocoa(x),
      addedSugar = devrecipe$addedSugar2cocoa(x),
      coffee = devrecipe$coffee2cocoa(x)
    )))
  
  
  ret$perTea <- new(
    Class = 'per', 
    per = 'Tea\U1f343', 
    equiv = new(Class = 'equiv', current = z / x@tea))
  
  ret$perCreamCheese <- new(
    Class = 'per', 
    per = 'Cream Cheese', 
    equiv = new(Class = 'equiv', current = z / sum(x['_creamCheese$'])))
  
  #class(ret) <- c('perlist', 'listof', 'list', class(ret)) |>
  #  unique.default()
  class(ret) <- c('summary.raw.', class(ret)) |>
    unique.default()
  # **not** 'perlist'!!!
  return(ret)
    
}


#' @export
summary.recipe <- \(object, ...) {
  z <- object |>
    summary.raw.(...)
  class(z) <- c('summary.recipe', setdiff(class(z), 'summary.raw.')) |>
    unique.default()
  return(z)
}



#' @method print summary.raw.
#' @export
print.summary.raw. <- \(x, ...) {
  id <- (lengths(x) > 0L)
  if (!any(id)) return(invisible())
  x[id] |>
    lapply(FUN = print) # do not want to print list names
  return(invisible())
}

#' @method print summary.recipe
#' @export
print.summary.recipe <- print.summary.raw.
  