
#' @title Multiplication and Ratio of \linkS4class{recipe} Object
#' 
#' @description ..
#' 
#' @param e1 \linkS4class{recipe} object
#' 
#' @param e2 \link[base]{numeric} scalar
#' 
#' @name S4generic_recipe
#' @aliases *,recipe,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'recipe', e2 = 'numeric'), definition = function(e1, e2) {
  if (length(e2) != 1L || anyNA(e2) || (e2 <= 0)) stop('illegal `e2`')
  slt <- setdiff(
    x = names(which(getSlots('recipe') == 'numeric')), 
    y = c('portion')
  )
  for (i in slt) {
    slot(e1, name = i) <- slot(e1, name = i) * e2
  }
  return(e1)
})


#' @rdname S4generic_recipe
#' @aliases /,recipe,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'recipe', e2 = 'numeric'), definition = function(e1, e2) e1 * (1/e2))




#' @title Arithmetic of Two \linkS4class{recipe} Objects
#' 
#' @description ..
#' 
#' @param e1,e2 \linkS4class{recipe} objects
#' 
#' @name S4generic_2recipe
#' @aliases +,recipe,recipe-method
#' @export
setMethod(f = '+', signature = signature(e1 = 'recipe', e2 = 'recipe'), definition = function(e1, e2) {
  
  slots_dbl <- setdiff(names(which(getSlots('recipe') == 'numeric')), c('portion'))
  names(slots_dbl) <- slots_dbl
  ret0 <- lapply(slots_dbl, FUN = function(i) sum_by_name(slot(e1, name = i), slot(e2, name = i)))
  
  ret1 <- ret0[lengths(ret0, use.names = FALSE) > 0L]
  ret <- do.call(what = new, args = c(list(
    Class = 'recipe',
    alias = paste(e1@alias, e2@alias, sep = '\n')
  ), ret1))
  return(ret)
  
})



#' @title Ratio of Two \linkS4class{recipe} Objects
#' 
#' @description ..
#' 
#' @param e1,e2 \linkS4class{recipe} objects
#' 
#' @examples
#' hotcc = mocaccino()
#' hotdrink(hotcc) * 2 / hotcc
#' 
#' @export
setMethod(f = '/', signature = signature(e1 = 'recipe', e2 = 'recipe'), definition = function(e1, e2) {
  
  slots_dbl <- setdiff(names(which(getSlots('recipe') == 'numeric')), c('portion'))
  e1_ <- attributes(e1)[slots_dbl]
  e1_ <- e1_[lengths(e1_, use.names = FALSE) > 0L]
  if (!length(e1_)) return(NA_real_)
  e2_ <- attributes(e2)[slots_dbl]
  e2_ <- e2_[lengths(e2_, use.names = FALSE) > 0L]
  if (!length(e2_)) return(NA_real_)
  
  #e1_ <- attributes(unclass(e1))
  #e1_ <- e1_[lengths(e1_, use.names = FALSE) > 0L]
  #e2_ <- attributes(unclass(e2))
  #e2_ <- e2_[lengths(e2_, use.names = FALSE) > 0L]
  
  #slots_rm <- names(which(getSlots('recipe') != 'numeric'))
  #e1_ <- e1_[!(names(e1_) %in% slots_rm)]
  #e2_ <- e2_[!(names(e2_) %in% slots_rm)]
  
  nm <- names(e2_)
  if (any(!(nm %in% names(e1_)))) return(NA_real_) # `e2` contains slots that `e1` does not contain
  e1_ <- e1_[nm]
  
  rt <- unlist(.mapply(FUN = ratio_ingredients, dots = list(e1 = e1_, e2 = e2_), MoreArgs = NULL), use.names = FALSE)
  if (max(rt, na.rm = TRUE) - min(rt, na.rm = TRUE) > .Machine$double.eps) return(NA_real_)
  
  ret <- rt[1L]
  attr(ret, which = 'e1_other') <- e1 - e2 * ret
  attr(ret, which = 'e2_total') <- nutrition.recipe(e2)@servingGram * ret
  return(ret)
})




#' @title Difference of Two \linkS4class{recipe} Objects
#' 
#' @description ..
#' 
#' @param e1,e2 \linkS4class{recipe} objects
#' 
#' @export
setMethod(f = '-', signature = signature(e1 = 'recipe', e2 = 'recipe'), definition = function(e1, e2) {
  slots_dbl <- setdiff(names(which(getSlots('recipe') == 'numeric')), c('portion'))
  names(slots_dbl) <- slots_dbl
  ret0 <- lapply(slots_dbl, FUN = function(i) { # (i = slots_dbl[[1L]])
    i1 <- slot(e1, name = i)
    i2 <- slot(e2, name = i)
    if (!length(i2)) return(i1)
    if (!length(i1) && length(i2)) stop('`e1` does not have `i`, but `e2` does')
    diff_ingredients(i1, i2)
  })
  ret <- ret0[lengths(ret0, use.names = FALSE) > 0L]
  do.call(new, args = c(list(
    Class = 'recipe',
    alias = '\u8865\u5145\u6750\u6599 Ingredients to Add'
  ), ret))
  # Future: define a new class (either inherits or being inherited by 'recipe')
  # allow negative ingredients
  # only contains ingredients slots
  # do not methods::show nutrition analysis
  # Tingting prefers inherits('recipe', what = 'ingredients')
})
