
#' @title Integer Division and Modulo with a `tol`
#' 
#' @description
#' Integer division (see function \link[base]{%/%}) and 
#' modulo (see function \link[base]{%%}) 
#' at a user-specified `tol`erance.
#' 
#' @param e1,e2 \link[base]{numeric} \link[base]{vector}s,
#' the shorter length will be recycled
# see functions \link[base]{%/%} 
# and `base::%%`
# cannot be in @param field ?????
#' 
#' @param tol \link[base]{double} scalar, default `.Machine$double.eps`
#' 
#' @returns 
#' Function [mod_] returns a \link[base]{numeric} scalar or \link[base]{vector} of 
#' the integer division (similar to function \link[base]{%/%}), with an \link[base]{attributes}
#' \describe{
#' \item{`attr(,'e1')`}{\link[base]{numeric} scalar or \link[base]{vector}, the modulo (similar to function \link[base]{%%})}
#' }
#' 
#' @examples
#' x0 = 48*2 - .Machine$double.eps*1e1
#' x0 %/% 48 # good; R takes care of this
#' x0 %% 48 # good; R takes care of this
#' 
#' (x = 48*2 - .Machine$double.eps*1e2)
#' x %/% 48 # nah
#' x %% 48 # nah
#' 
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

