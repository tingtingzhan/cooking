
#' @title Multiplication and Ratio of \linkS4class{recipe} Object
#' 
#' @description ..
#' 
#' @param e1 \linkS4class{recipe} and/or \linkS4class{raw} object
#' 
#' @param e2 \link[base]{numeric} scalar
#' 
#' @name S4generic_recipe
NULL

#' @rdname S4generic_recipe
# @aliases *,raw.,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'raw.', e2 = 'numeric'), definition = \(e1, e2) {
  e1_ <- as(e1, Class = 'raw.', strict = TRUE)
  if (length(e2) != 1L || anyNA(e2)) stop('illegal `e2`')
  for (i in slotNames(e1_)) {
    slot(e1_, name = i) <- slot(e1_, name = i) * e2
  }
  return(e1_)
})

#' @rdname S4generic_recipe
# @aliases *,numeric,raw.-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'numeric', e2 = 'raw.'), definition = \(e1, e2) e2 * e1)

#' @rdname S4generic_recipe
# @aliases /,recipe,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'recipe', e2 = 'numeric'), definition = \(e1, e2) e1 * (1/e2))




#' @title Arithmetic of Two \linkS4class{recipe} Objects
#' 
#' @description ..
#' 
#' @param e1,e2 \linkS4class{raw} and/or \linkS4class{recipe} objects
#' 
#' @name S4generic_2recipe
#' @aliases +,raw.,raw.-method
#' @export
setMethod(f = '+', signature = signature(e1 = 'raw.', e2 = 'raw.'), definition = \(e1, e2) {
  
  slt0 <- names(getSlots(x = 'raw.'))
  names(slt0) <- slt0
  ret0 <- lapply(slt0, FUN = \(i) sum_by_name(slot(e1, name = i), slot(e2, name = i)))
  
  ret1 <- ret0[lengths(ret0) > 0L]
  ret <- do.call(what = new, args = c(list(
    Class = 'raw.'
  ), ret1))
  return(ret)
  
})

#' @rdname S4generic_2recipe
# @aliases -,raw.,raw.-method
#' @export
setMethod(f = '-', signature = signature(e1 = 'raw.', e2 = 'raw.'), definition = \(e1, e2) e1 + (-1) * e2)


#' @title Ratio of Two \linkS4class{recipe} Objects
#' 
#' @description ..
#' 
#' @param e1,e2 \linkS4class{recipe} objects
#' 
#' @examples
#' #hotcc = mocaccino()
#' #hotdrink(hotcc) * 2 / hotcc
#' # debugging now
#' 
#' @export
setMethod(f = '/', signature = signature(e1 = 'raw.', e2 = 'raw.'), definition = \(e1, e2) {
  
  e1_ <- as(e1, Class = 'raw.')
  e2_ <- as(e2, Class = 'raw.')
  
  # [ratio_by_name] needs a full re-write
  rt <- .mapply(
    FUN = ratio_by_name, 
    dots = list(e1 = attributes(e1_), e2 = attributes(e2_)), 
    MoreArgs = NULL
  ) |>
    unlist(use.names = FALSE)
  if (max(rt, na.rm = TRUE) - min(rt, na.rm = TRUE) > .Machine$double.eps) return(NA_real_)
  
  ret <- rt[1L]
  attr(ret, which = 'e1_other') <- e1 - e2 * ret
  attr(ret, which = 'e2_total') <- nutrition.recipe(e2)@servingGram * ret
  return(ret)
})




