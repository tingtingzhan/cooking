


#' @title Summation of Ingredients
#' 
#' @description ..
#' 
#' @param ... \strong{named} \link[base]{numeric} vectors
#' 
#' @return 
#' Function [sum_.] returns a \link[base]{numeric} vector.
#' 
#' @examples
#' x1 = c(a = 2, b = 3)
#' x2 = c(b = 2, c = 1)
#' x3 = c(a = 3, b = 2, c = 1)
#' sum_.(x1, x2, x3)
#' 
#' @export
sum_. <- function(...) {
  xs <- list(...)
  xs <- xs[lengths(xs, use.names = FALSE) > 0L]
  if (!length(xs)) return(numeric())
  
  ns <- lengths(xs, use.names = FALSE)
  nms <- lapply(xs, FUN = names)
  if (all(ns == 1L, lengths(nms) == 0L)) return(sum(unlist(xs, use.names = FALSE)))
  
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
#' Function [ratio_ingredients] returns a \link[base]{numeric} scalar.
#' 
#' @export
ratio_ingredients <- function(e1, e2) {
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


#' @title Difference between Ingredients
#' 
#' @description ..
#' 
#' @param e1,e2 \strong{named} \link[base]{character} vectors
#' 
#' @return 
#' Function [diff_ingredients] returns a \link[base]{character} vector.
#' 
#' @export
diff_ingredients <- function(e1, e2) {
  
  if (!(n1 <- length(e1))) return(e1)
  if (!(n2 <- length(e2))) return(e1)
  
  nm1 <- names(e1)
  nm2 <- names(e2)
  
  ret <- if ((n1 == 1L) && (n2 == 1L) && !length(nm1) && !length(nm2)) {
    e1 - e2
  } else {
    if (!length(nm1) || anyNA(nm1) || !all(nzchar(nm1)) ||
        !length(nm2) || anyNA(nm2) || !all(nzchar(nm2))) {
      print(e1)
      print(e2)
      stop('must both be fully named')
    }
    if (!length(nm <- intersect(nm1, nm2))) return(e1)
    e1[nm] <- e1[nm] - e2[nm]
    e1
  }
  
  if (any(ret < -.Machine$double.eps)) {
  #  print(e1)
  #  print(e2)
  #  print(ret)
    stop('some ingredient is negative')
  }
  
  return(ret[abs(ret) > .Machine$double.eps])
  
}