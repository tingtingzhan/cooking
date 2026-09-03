


#' @title Summation of Ingredients
#' 
#' @description ..
#' 
#' @param ... \strong{named} \link[base]{numeric} \link[base]{vector}s
#' 
#' @return 
#' The function [sum_by_name()] returns a \link[base]{numeric} \link[base]{vector}.
#' 
#' @examples
#' sum_by_name(1, 2)
#' sum_by_name(1, c(a = 2))
#' 
#' x1 = c(a = 2, b = 3)
#' x2 = c(b = 2, c = 1)
#' x3 = c(a = 1, b = -2, c = -1)
#' sum_by_name(x1, x2, x3)
#' @export
sum_by_name <- \(...) {
  
  xs <- list(...)
  xs <- xs[lengths(xs, use.names = FALSE) > 0L]
  if (!length(xs)) return(numeric())
  
  ns <- lengths(xs, use.names = FALSE)
  nms <- lapply(xs, FUN = names)
  nms_len <- lengths(nms, use.names = FALSE)
  if (all(ns == 1L)) {
    ret <- sum(unlist(xs, use.names = FALSE))
    if (all(nms_len == 0L)) return(ret)
    if (sum(nms_len) == 1L) {
      # beautiful! only one ingredient has name
      names(ret) <- nms[[which(nms_len == 1L)]]
      return(ret)
    }
  }
  
  nm <- nms |>
    unlist(use.names = FALSE) |>
    unique.default()
  ret <- numeric(length = length(nm))
  names(ret) <- nm
  for (i in xs) ret[names(i)] <- ret[names(i)] + i
  return(ret)
  
}









#' @title Ratio between Ingredients
#' 
#' @description ..
#' 
#' @param e1,e2 \strong{named} \link[base]{numeric} vectors
#' 
#' @return 
#' The function [ratio_by_name] returns a \link[base]{numeric} scalar.
#' 
#' @export
ratio_by_name <- function(e1, e2) {
  .Deprecated(msg = 'needs a full re-write')
  if (!(n1 <- length(e1))) stop('exclude in parent function')
  if (!(n2 <- length(e2))) stop('exclude in parent function')
  nm1 <- names(e1)
  nm2 <- names(e2)
  if ((n1 == 1L) && (n2 == 1L) && !length(nm1) && !length(nm2)) return(e1/e2)
  
  if (!length(nm1) || anyNA(nm1) || !all(nzchar(nm1)) ||
      !length(nm2) || anyNA(nm2) || !all(nzchar(nm2))) stop('must both be fully named')
  
  if (!length(nm <- intersect(nm1, nm2))) return(NA_real_)
  
  ret <- e1[nm] / e2[nm]
  if (anyNA(ret)) stop('should not happen')
  if (max(ret) - min(ret) > .Machine$double.eps) return(NA_real_)
  return(ret[1L])
}


