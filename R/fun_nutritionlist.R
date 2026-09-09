
#' @title Diagnose Multiple \linkS4class{nutrition} Objects
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{nutrition}
#' 
#' @export
diagnose <- \(...) {
  
  dots <- list(...) |>
    lapply(FUN = as, Class = 'nutrition')
  
  cat('\n')
  'Nutrition\n' |> bg_br_yellow() |> cat()
  dots |>
    summary.nutritionlist() |>
    print() # print.summary.nutritionlist
  
  names(dots) <- dots |>
    vapply(FUN = slot, name = 'name', FUN.VALUE = NA_character_)
  
  for (which in c(
    'perAllPurposeFlr', 'perPastryFlr', 'perBreadFlr', 
    'perCornmeal', 'perRiceFlr', 
    'perCocoa', 'perTea', 'perCreamCheese', 'perRaw'
  )) {
    dots |>
      lapply(FUN = attr, which = which, exact = TRUE) |>
      print.perlist()
  }
  
  return(invisible())
  
}









# @param x a \link[base]{list} of \linkS4class{nutrition} objects
#' @export
summary.nutritionlist <- \(object, ...) {
  
  x <- object; object <- NULL
  
  x <- x |> 
    lapply(FUN = as, Class = 'nutrition')
  
  ret <- x |> 
    lapply(FUN = \(v) {
      c(
        calorie = sum(v@calorie),
        water = sum(v@water), # sum(numeric()) returns 0
        carbohydrate = sum(v@carbohydrate),
        fiber = sum(v@fiber),
        sugar = sum(v@sugar), 
        addedSugar = sum(v@addedSugar), 
        fat = sum(v@fat), 
        cholesterol = sum(v@cholesterol),
        sodium = sum(v@sodium),
        protein = sum(v@protein),
        alcohol = sum(v@alcohol),
        usd = sum(v@usd)
      ) / v@servingGram
    }) |>
    do.call(what = rbind) # matrix
  
  if ('water' %notin% colnames(ret)) stop('should never happen')
  addedWater_ <- water_ <- ret[,'water']
  addedWater_[water_ < .2] <- 0 # King Arthur commercial flour has water 14% 
  ret <- cbind(ret, addedWater = addedWater_)

  nm <- x |>
    vapply(FUN = \(i) c(i@name, i@brand) |> paste(collapse = ' '), FUN.VALUE = '')
  nm_glue <- x |>
    vapply(FUN = \(i) c(i@name_glue, i@brand) |> paste(collapse = ' '), FUN.VALUE = '')
  
  rownames(ret) <- nm # *not* `nm_glue`
  attr(ret, which = 'glue') <- nm_glue
  class(ret) <- 'summary.nutritionlist'
  return(ret)
  
}

#' @importFrom charwidth cat_matrix
#' @method print summary.nutritionlist
#' @export
print.summary.nutritionlist <- \(x, ...) {
  
  ret0 <- x
  attributes(ret0)[setdiff(names(attributes(x)), y = c('dim', 'dimnames'))] <- NULL
  
  ret0 <- ret0[, colnames(ret0) %notin% c(
    'calorie', 'usd', # meaningless (i.e., calorie/servingGram)
    'addedWater'
  )]
  
  ret <- ret0[, colMeans(ret0 == 0) != 1] |> 
    col_binlabel(FUN = max)
  colnames(ret) <- colnames(ret) |>
    nutrition_slot_short()
  
  ret |> cat_matrix()
  cat('\n')
  return(invisible(ret))
  
}


nutrition_slot_short <- \(x) {
  x[x == 'addedSugar'] <- 'sugar+'
  x[x == 'carbohydrate'] <- 'carb' 
  x[x == 'sodium'] <- 'Na\u207a'
  x[x == 'cholesterol'] <- 'cholr'
  return(x)
}





