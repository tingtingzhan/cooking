


#' @title \link[base]{list} of \linkS4class{nutrition}s
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{nutrition}
#' 
#' @export
nutritionlist <- \(...) {
  
  x <- list(...)
  
  z <- x |>
    lapply(FUN = as, Class = 'nutrition')
  
  sumx <- x |>
    lapply(FUN = summary)
  # [summary.nutrition]
  # [summary.raw.]
  # [summary.recipe]
  
  if (!all(vapply(z, FUN = inherits, what = 'nutrition', FUN.VALUE = NA))) {
    stop()
  } 

  nm <- z |>
    vapply(FUN = labels.nutrition, FUN.VALUE = '')
  names(z) <- names(sumx) <- nm
  attr(z, which = 'sumx') <- sumx # think of a better way to pass this info to downstream functions?
  
  class(z) <- c('nutritionlist', 'listof', 'list') 
  return(z)
  
}




#' @export
print.nutritionlist <- \(x, ...) {
  
  cat('\n')
  'Nutrition\n' |> bg_br_yellow() |> cat()
  x |>
    as.matrix.nutritionlist(...) |>
    print.nutritionMatrix()
  
  for (which in c(
    'perAllPurposeFlr', 'perPastryFlr', 'perBreadFlr', 
    'perCornmeal', 'perRiceFlr', 
    'perCocoa', 'perTea', 'perCreamCheese', 'perRaw'
  )) {
    x |>
      attr(which = 'sumx') |>
      lapply(FUN = '[[', which = which, exact = TRUE) |>
      print.perlist()
  }
  
  # new per-raw!!!
  
  
  return(invisible())
  
}





#' @method as.matrix nutritionlist
#' @export
as.matrix.nutritionlist <- \(x, ...) {
  
  ret <- x |> 
    lapply(FUN = as, Class = 'nutrition') |> # make double sure
    lapply(FUN = as.double.nutrition, ...) |>
    do.call(what = rbind, args = _) # matrix
  
  class(ret) <- c('nutritionMatrix', class(ret)) |>
    unique.default()
  return(ret)
  
}




#' @importFrom charwidth row_fmt_matrix
# @importFrom cli cli_verbatim
# @method print nutritionMatrix
#' @export
print.nutritionMatrix <- \(x, ...) {
  
  ret0 <- x
  #attributes(ret0)[setdiff(names(attributes(x)), y = c('dim', 'dimnames'))] <- NULL
  
  #ret0 <- ret0[, colnames(ret0) %notin% c(
  #  'calorie', 'usd'
  #)]
  
  ret <- ret0[, colMeans(ret0 == 0) != 1] |>
    apply(MARGIN = 2L, FUN = max_binlabel, accuracy = .1, simplify = FALSE) |>
    do.call(what = cbind) # to make sure not getting a 'vector'
  
  colnames(ret) <- colnames(ret) |>
    nutri_short()
  
  ret |> 
    row_fmt_matrix() |>
    cat(sep = '\n')
    # cli_verbatim() # sep by '\n' by default
  cat('\n')
  return(invisible(ret))
  
}


nutri_short <- \(x) {
  x[x == 'addedSugar'] <- '+sugar'
  x[x == 'starch'] <- '+starch'
  x[x == 'carbohydrate'] <- 'carb' 
  x[x == 'sodium'] <- 'Na\u207a'
  x[x == 'cholesterol'] <- 'cholr'
  x[x == 'Na2CO3'] <- 'Na\u2082CO\u2083'
  x[x == 'NaHCO3'] <- 'NaHCO\u2083'
  x[x == 'bakingPowder'] <- 'bkPwd'
  x[x == 'pumpkinSpice'] <- '\U0001f383spice'
  x[x == 'breadFlr'] <- '\U0001f35eflr'
  x[x == 'pastryFlr'] <- '\U0001f370flr'
  x[x == 'eggYolk'] <- '\U0001f95ayolk'
  x[x == 'eggWhite'] <- '\U0001f95awhite'
  x[x == 'cornmeal'] <- '\U1f33d'
  return(x)
}





