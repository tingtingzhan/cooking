
#' @title Integer Division and Modulo with a `tol`
#' 
#' @param e1,e2 \link[base]{numeric} \link[base]{vector}s, see functions `base::%/%` and `base::%%`
#' 
#' @param tol \link[base]{double} scalar, default `.Machine$double.eps`
#' 
#' @examples
#' (x = 48*2 - .Machine$double.eps * 1e3L)
#' x %/% 48 # nah
#' x %% 48 # nah
#' mod_(x, e2 = 48, tol = 1e-6) # yeah!
#' @export
mod_ <- function(e1, e2, tol = .Machine$double.eps) {
  z <- e1 %/% e2
  e1. <- e1 %% e2
  id <- which(abs(e1. - e2) < tol) # takes care of NA
  if (length(id)) {
    z[id] <- z[id] + 1
    e1.[id] <- 0
  }
  attr(z, which = 'e1') <- e1.
  return(z)
}

