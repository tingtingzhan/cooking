

#' @title diagnose
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{recipe}
#' 
#' @importFrom stats median.default
#' @export
diagnose <- \(...) {
  
  # dots <- lapply(dots, FUN = nutrition) # mess up with call later
  dots <- as.list(match.call())[-1L] |>
    lapply(FUN = \(x) {
      return(eval(call(name = 'nutrition', x)))
    })
  
  cat('\n')
  'Nutrition\n' |> bg_br_yellow() |> cat()
  dots |>
    nutrition_(dots = _) |>
    print.nutrition_()
  
  names(dots) <- dots |>
    vapply(FUN = slot, name = 'name', FUN.VALUE = NA_character_)
  diagnose_(dots, which = 'perAllPurposeFlr')
  diagnose_(dots, which = 'perPastryFlr')
  diagnose_(dots, which = 'perBreadFlr')
  diagnose_(dots, which = 'perCornmeal')
  diagnose_(dots, which = 'perRiceFlr')
  diagnose_(dots, which = 'perCocoa')
  diagnose_(dots, which = 'perTea')
  diagnose_(dots, which = 'perCreamCheese')
  diagnose_(dots, which = 'perRaw')
  
  return(invisible())
  
}




# @param dots a \link[base]{list} of \linkS4class{nutrition}s
# @param which \link[base]{character} scalar
#' @importFrom charwidth cat_matrix
diagnose_ <- \(dots, which) {
  
  atr <- dots |>
    lapply(FUN = attr, which = which, exact = TRUE)
  atr <- atr[lengths(atr) > 0L]
  if (!length(atr)) return(invisible())
  
  y0 <- atr |>
    lapply(FUN = \(a) { # (a = atr[[1L]])
      a@equiv |>
        vapply(FUN = slot, name = 'current', FUN.VALUE = NA_real_, USE.NAMES = TRUE)
    })
  if (all(!lengths(y0))) stop('wont happen')
  y1 <- do.call(rbind, args = y0)
  y2 <- y1[, colMeans(is.na(y1)) != 1L, drop = FALSE]
  #y3 <- y2[rowMeans(is.na(y2)) != 1L, , drop = FALSE]
  y3 <- y2
  if (!length(y3)) return(invisible())
  if (all(is.na(y3))) return(invisible())
  if (all(abs(y3) < .Machine$double.eps, na.rm = TRUE)) return(invisible())
  colnames(y3) <- colnames(y3) |>
    nutrition_slot_short()
  y <- y3 |> 
    col_binlabel(FUN = median.default, na.rm = TRUE)
  
  atr[[1L]]@per |> 
    sprintf(fmt = '\u214c %s\n') |> 
    style_bold() |> bg_br_yellow() |> 
    cat()
  y |> cat_matrix()
  cat('\n')
  return(invisible(y))
}
