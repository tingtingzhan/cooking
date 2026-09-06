


#' @title \linkS4class{equiv}
#' 
#' @description ..
#' 
#' @slot current,target \link[base]{numeric} scalars, named after the function \link[base]{all.equal.numeric}
#' 
#' @slot margin \link[base]{numeric} scalar, the acceptance margin of `current/target`, default value is 1.1
#' 
#' @slot tol \link[base]{numeric} scalar, default value is `.Machine$double.eps`
#' 
#' @name equiv-class
#' @export
setClass(Class = 'equiv', slots = c(
  current = 'numeric',
  target = 'numeric',
  margin = 'numeric',
  tol = 'numeric'
), prototype = prototype(
  current = NA_real_,
  target = NA_real_,
  margin = 1.1,
  tol = .Machine$double.eps
))







#' @title `format.equiv`
#' 
#' @description ..
#' 
#' @param x \linkS4class{equiv} object
#' 
#' @param ... ..
#' 
#' @examples 
#' format(new('equiv', current = .6))
#' format(new('equiv', current = .6, target = 1))
#' 
#' @references 
#' \url{https://en.wikipedia.org/wiki/Bioequiv}
#' 
#' @export
format.equiv <- \(x, ...) {
  if (!(n <- length(x@current))) return(invisible()) # exception handling
  current <- sum(x@current)
  if (is.na(current)) return(invisible())
  if (abs(current) < x@tol) return(invisible()) # exception handling
  
  if (current < 0) return(invisible())
  # I do not have `@water` for all puree, yet
  
  .label <- min(current, x@target, na.rm = TRUE) |> 
    .label_bin_()
  
  current <- .label(current)
  
  if (!length(x@target) || is.na(x@target)) {
    return(c(Current = current, Target = '-'))
  }
  
  rel <- .bincode(
    x@current/x@target, 
    breaks = c(0, 1/x@margin, x@margin, Inf)
  )
  
  current <- switch(as.character(rel), '1' = { # current < target
    current |> col_br_blue() |> style_bold()
  }, 'NA' =, '2' = { # current == target
    current |> col_grey()
  }, '3' = { # current > target
    current |> col_br_red() |> style_bold()
  })
  
  return(c(Current = current, Target = .label(x@target)))
  
}



#' @importFrom scales label_number
.label_bin_ <- \(x) {
  
  if ((length(x) != 1L) || !is.numeric(x) || is.na(x)) stop('illegal input')
  
  x |> 
    .bincode(
      breaks = c(0, .001, .01, 1, Inf),
      right = FALSE # important!!
    ) |> 
    switch('1' = { # (0, .001)
      \(newx) {
        z <- label_number(scale = 1e4, suffix = '\u2031', accuracy = .1)(newx)
        z[is.na(newx) | (newx < 1e-5)] <- '-'
        return(z)
      }
    }, '2' = { # [.001, .01)
      \(newx) {
        z <- label_number(scale = 1e3, suffix = '\u2030', accuracy = .1)(newx)
        z[is.na(newx) | (newx < 1e-4)] <- '-'
        return(z)
      }
    }, '3' = { # [.01, 1)
      \(newx) {
        z <- label_number(scale = 1e2, suffix = '%', accuracy = .1)(newx)
        z[is.na(newx) | (newx < 1e-3)] <- '-'
        return(z)
      }
    }, '4' = { # [1, Inf) 
      \(newx) {
        z <- label_number(accuracy = .2)(newx)
        z[is.na(newx) | (newx < 1e-2)] <- '-'
        return(z)
      }
    }, stop('shouldnt come here'))
  
}


# @param x \link[base]{numeric} \link[base]{matrix}
col_label_bin_ <- \(x, FUN, ...) {
  x |> 
    apply(MARGIN = 2L, FUN = \(i) {
      i |> .label_bin_(FUN(i, ...))()
    }, simplify = FALSE) |>
    do.call(what = cbind) # un-simplify then cbind, to make sure not getting a 'vector' :)
}  





#' @rdname show_cooking
#' @export
setMethod(f = show, signature = 'equiv', definition = \(object) {
  object |> 
    format.equiv() |> 
    cat() # show ANSI controls
})


