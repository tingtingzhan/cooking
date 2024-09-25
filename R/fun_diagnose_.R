

#' @title diagnose_
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{recipe} class
#' 
#' @param dots a \link[base]{list} of objects convertible to \linkS4class{recipe} class
#' 
#' @importFrom stats median.default
# @importFrom cli.tzh print_ANSI_matrix
#' @export
diagnose_ <- function(..., dots = list(...)) {
  
  xs <- lapply(dots, FUN = function(i) nutrition(i))
  
  nm <- vapply(xs, FUN = slot, name = 'name', FUN.VALUE = NA_character_)
  names(xs) <- nm
  
  tmpfun <- function(which) {
    y0 <- lapply(xs, FUN = function(i) {
      a1 <- attr(i, which = which, exact = TRUE)
      if (!length(a1)) return(invisible())
      snm <- names(which(getSlots(class(a1)) == 'equiv'))
      names(snm) <- snm
      unlist(lapply(snm, FUN = function(j) {
        j_actual <- slot(a1, name = j)@actual
        if (length(j_actual) && (j_actual > 0)) unname(j_actual) else NA_real_
      }), use.names = TRUE)
    })
    if (all(!lengths(y0))) return(invisible())
    y1 <- do.call(rbind, args = y0)
    y2 <- y1[, colMeans(is.na(y1)) != 1L, drop = FALSE]
    y3 <- y2[rowMeans(is.na(y2)) != 1L, , drop = FALSE]
    if (!length(y3)) return(invisible())
    colnames(y3) <- show_endpoint(colnames(y3))
    
    y <- do.call(cbind, args = lapply(seq_len(dim(y3)[2L]), FUN = function(i) {
      sprintf_bincode(median.default(y3[,i], na.rm = TRUE))(y3[,i])
    }))
    dimnames(y) <- dimnames(y3)
    cat('\033[0;103m', sprintf(fmt = '\u214c %s\n', new(Class = which)@per), '\033[0m', sep = '')
    print_ANSI_matrix(y)
    cat('\n')
    return(invisible(y))
  }
  
  cat('\n')
  
  tmpfun(which = 'baker')
  tmpfun(which = 'pastryBaker')
  tmpfun(which = 'breadBaker')
  tmpfun(which = 'riceBaker')
  tmpfun(which = 'cocoaDutchMix')
  tmpfun(which = 'uncooked')
  
  return(invisible())
  
}

