

#' @title diagnose
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{recipe} class
#' 
# @param dots a \link[base]{list} of objects convertible to \linkS4class{recipe} class
#' 
#' @importFrom stats median.default
#' @export
diagnose <- \(...) {
  
  # dots <- lapply(dots, FUN = nutrition) # mess up with call later
  dots <- as.list(match.call())[-1L] |>
    lapply(FUN = \(x) {
      # (x = as.list(match.call())[-1L][[1L]])
      return(eval(call(name = 'nutrition', x)))
      do.call(what = 'nutrition', args = list(x)) # seems equivalent
    })
  
  cat('\n')
  'Nutrition\n' |> bg_br_yellow() |> cat()
  print.nutrition_(nutrition_(dots = dots))
  
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
        vapply(FUN = \(i) {
          crt <- i@current
          if (!length(crt)) return(NA_real_)
          return(crt)
        }, FUN.VALUE = NA_real_, USE.NAMES = TRUE)
    })
  if (all(!lengths(y0))) stop('wont happen')
  y1 <- do.call(rbind, args = y0)
  y2 <- y1[, colMeans(is.na(y1)) != 1L, drop = FALSE]
  #y3 <- y2[rowMeans(is.na(y2)) != 1L, , drop = FALSE]
  y3 <- y2
  if (!length(y3)) return(invisible())
  colnames(y3) <- show_endpoint(colnames(y3))
  
  atr[[1L]]@per |> 
    sprintf(fmt = '\u214c %s\n') |> 
    style_bold() |> bg_br_yellow() |> 
    cat()
  y <- y3 |> 
    col_label_bin_(FUN = median.default, na.rm = TRUE)
  y |> cat_matrix()
  cat('\n')
  return(invisible(y))
}
