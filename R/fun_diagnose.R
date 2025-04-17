

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
diagnose <- function(...) { # , dots = list(...)
  
  # dots <- lapply(dots, FUN = nutrition) # mess up with call later
  dots <- lapply(as.list(match.call())[-1L], FUN = \(x) {
    # (x = as.list(match.call())[-1L][[1L]])
    return(eval(call(name = 'nutrition', x)))
    do.call(what = 'nutrition', args = list(x)) # seems equivalent
  })
  
  cat('\n')
  'Nutrition\n' |> bg_br_yellow() |> cat()
  print.nutrition_(nutrition_(dots = dots))
  
  names(dots) <- dots |>
    vapply(FUN = slot, name = 'name', FUN.VALUE = NA_character_)
  diagnose_(dots, which = 'baker')
  diagnose_(dots, which = 'pastryBaker')
  diagnose_(dots, which = 'breadBaker')
  diagnose_(dots, which = 'cornBaker')
  diagnose_(dots, which = 'riceBaker')
  diagnose_(dots, which = 'cocoaDx')
  diagnose_(dots, which = 'teaDx')
  diagnose_(dots, which = 'creamcheeseDx')
  diagnose_(dots, which = 'uncooked')
  
  return(invisible())
  
}


diagnose_ <- function(dots, which) {
  # @param dots a \link[base]{list} of \linkS4class{nutrition}s
  # @param which \link[base]{character} scalar
  
  atr <- dots |>
    lapply(FUN = attr, which = which, exact = TRUE)
  atr <- atr[lengths(atr) > 0L]
  if (!length(atr)) return(invisible())
  
  y0 <- atr |>
    lapply(FUN = \(a) {
      snm <- names(which(getSlots(class(a)) == 'equiv'))
      names(snm) <- snm
      snm |>
        lapply(FUN = \(j) {
          j_actual <- slot(a, name = j)@actual
          if (length(j_actual) && (j_actual > 0)) unname(j_actual) else NA_real_
        }) |> 
        unlist(use.names = TRUE)
    })
  if (all(!lengths(y0))) stop('wont happen')
  y1 <- do.call(rbind, args = y0)
  y2 <- y1[, colMeans(is.na(y1)) != 1L, drop = FALSE]
  #y3 <- y2[rowMeans(is.na(y2)) != 1L, , drop = FALSE]
  y3 <- y2
  if (!length(y3)) return(invisible())
  colnames(y3) <- show_endpoint(colnames(y3))
  
  (new(Class = which)@per) |> sprintf(fmt = '\u214c %s\n') |> style_bold() |> bg_br_yellow() |> cat()
  y <- y3 |> col_label_bin_(FUN = median.default, na.rm = TRUE)
  y |> print_ANSI_matrix()
  cat('\n')
  return(invisible(y))
}
