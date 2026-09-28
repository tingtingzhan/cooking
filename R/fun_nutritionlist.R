


#' @title \link[base]{list} of \linkS4class{nutrition}s
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{nutrition}
#' 
#' @export
nutritionlist <- \(...) {
  
  z <- list(...) |>
    lapply(FUN = as, Class = 'nutrition')
  
  if (!all(vapply(z, FUN = inherits, what = 'nutrition', FUN.VALUE = NA))) {
    stop()
  } 

  names(z) <- z |>
    vapply(FUN = labels.nutrition, FUN.VALUE = '')
  
  class(z) <- c('nutritionlist', 'listof', 'list') 
  return(z)
  
}




#' @export
print.nutritionlist <- \(x, ...) {
  
  cat('\n')
  'Nutrition\n' |> bg_br_yellow() |> cat()
  x |>
    summary.nutritionlist() |>
    print.summary.nutritionlist()
  
  for (which in c(
    'perAllPurposeFlr', 'perPastryFlr', 'perBreadFlr', 
    'perCornmeal', 'perRiceFlr', 
    'perCocoa', 'perTea', 'perCreamCheese', 'perRaw'
  )) {
    x |>
      lapply(FUN = attr, which = which, exact = TRUE) |>
      print.perlist()
  }
  
  # new per-raw!!!
  
  
  return(invisible())
  
}






#' @export
summary.nutritionlist <- \(object, ...) {
  
  ret <- object |> 
    lapply(FUN = as, Class = 'nutrition') |> # make double sure
    lapply(FUN = as.double.nutrition) |>
    do.call(what = rbind, args = _) # matrix
  
  class(ret) <- c('summary.nutritionlist', class(ret)) |>
    unique.default()
  return(ret)
  
}




#' @importFrom charwidth row_fmt_matrix
# @importFrom cli cli_verbatim
#' @method print summary.nutritionlist
#' @export
print.summary.nutritionlist <- \(x, ...) {
  
  ret0 <- x
  attributes(ret0)[setdiff(names(attributes(x)), y = c('dim', 'dimnames'))] <- NULL
  
  ret0 <- ret0[, colnames(ret0) %notin% c(
    'calorie', 'usd'
  )]
  
  ret <- ret0[, colMeans(ret0 == 0) != 1] |> 
    col_binlabel(FUN = max)
  colnames(ret) <- colnames(ret) |>
    nutrition_slot_short()
  
  ret |> 
    row_fmt_matrix() |>
    cat(sep = '\n')
    # cli_verbatim() # sep by '\n' by default
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





