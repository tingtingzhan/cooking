
setGeneric(name = '%in%', 
           where = asNamespace('cooking'),
           useAsDefault = base::`%in%`)





#' @title `S4` Arithmetic
#' 
#' @description
#' `S4` arithmetic.
#' 
#' @param e1,e2 see **Usage**
#' 
#' @name S4arith
#' @aliases *,raw.,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'raw.', e2 = 'numeric'), definition = \(e1, e2) {
  e1 <- e1 |>
    as(Class = 'raw.', strict = TRUE)
  if (length(e2) != 1L || anyNA(e2)) stop('illegal `e2`')
  for (i in slotNames(e1)) {
    slot(e1, name = i) <- slot(e1, name = i) * e2
  }
  return(e1)
})

#' @rdname S4arith
#' @aliases *,numeric,raw.-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'numeric', e2 = 'raw.'), definition = \(e1, e2) e2 * e1)

#' @rdname S4arith
#' @aliases /,raw.,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'raw.', e2 = 'numeric'), definition = \(e1, e2) e1 * (1/e2))





#' @rdname S4arith
#' @aliases +,raw.,raw.-method
#' @export
setMethod(f = '+', signature = signature(e1 = 'raw.', e2 = 'raw.'), definition = \(e1, e2) {
  
  e1 <- as(e1, Class = 'raw.', strict = TRUE)
  e2 <- as(e2, Class = 'raw.', strict = TRUE)
  
  slt0 <- names(getSlots(x = 'raw.'))
  names(slt0) <- slt0
  ret0 <- lapply(slt0, FUN = \(i) sum_by_name(slot(e1, name = i), slot(e2, name = i)))
  
  ret1 <- ret0[lengths(ret0) > 0L]
  ret <- do.call(what = new, args = c(list(
    Class = 'raw.'
  ), ret1))
  return(ret)
  
})

#' @rdname S4arith
#' @aliases -,raw.,raw.-method
#' @export
setMethod(f = '-', signature = signature(e1 = 'raw.', e2 = 'raw.'), definition = \(e1, e2) e1 + (-1) * e2)






#' @rdname S4arith
#' @aliases *,nutrition,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'nutrition', e2 = 'numeric'), definition = \(e1, e2) {
  if (length(e2) != 1L || anyNA(e2) || (e2 <= 0)) stop('illegal `e2`')
  for (i in setdiff(names(which(getSlots('nutrition') == 'numeric')), c('AbV', 'pieceWeight'))) {
    slot(e1, name = i) <- slot(e1, name = i) * e2
  }
  return(e1)
})


#' @rdname S4arith
#' @aliases /,nutrition,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'nutrition', e2 = 'numeric'), definition = \(e1, e2) e1 * (1/e2))






#' @title `S4` `%in%`
#' 
#' @param x,table see **Usage**
#' 
#' @aliases %in%,spice,raw.-method
#' @export
setMethod(f = '%in%', signature = c(x = 'spice', table = 'raw.'), definition = \(x, table) {
  
  ptn <- x@call |> 
    as.character() |>
    sprintf(fmt = '_%s$')
  
  length(table@spice) && grepl(pattern = ptn, x = names(table@spice))
  
})

