


#' @title Summation of Ingredients
#' 
#' @description ..
#' 
#' @param ... \strong{named} \link[base]{numeric} vectors
#' 
#' @return 
#' Function [sum_by_name] returns a \link[base]{numeric} vector.
#' 
#' @examples
#' x1 = c(a = 2, b = 3)
#' x2 = c(b = 2, c = 1)
#' x3 = c(a = 3, b = 2, c = 1)
#' x4 = c(a = -1, b = -2, c = -1)
#' sum_by_name(x1, x2, x3)
#' sum_by_name(x1, x2, x4)
#' @export
sum_by_name <- function(...) {
  xs <- list(...)
  xs <- xs[lengths(xs, use.names = FALSE) > 0L]
  if (!length(xs)) return(numeric())
  
  ns <- lengths(xs, use.names = FALSE)
  nms <- lapply(xs, FUN = names)
  nms_len <- lengths(nms, use.names = FALSE)
  if (all(ns == 1L)) {
    if (all(nms_len == 0L)) return(sum(unlist(xs, use.names = FALSE)))
    if (sum(nms_len) == 1L) {
      # beautiful! only one ingredient has name
      ret <- sum(unlist(xs, use.names = FALSE))
      names(ret) <- nms[[which(nms_len == 1L)]]
      return(ret)
    }
  }
  
  nm <- unique.default(unlist(nms, use.names = FALSE))
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
#' Function [ratio_by_name] returns a \link[base]{numeric} scalar.
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


