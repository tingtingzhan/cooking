

#' @title nutrition_
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{nutrition} class
#' 
#' @param dots a \link[base]{list} of objects convertible to \linkS4class{nutrition} class
#' 
#' @export
nutrition_ <- function(..., dots = list(...)) {
  
  dots <- lapply(dots, FUN = nutrition)
  
  ret0 <- lapply(dots, FUN = function(v) c(
    calorie = sum(v@calorie),
    water = sum(v@water), # sum(numeric()) returns 0
    carbohydrate = sum(v@carbohydrate),
    sugar = sum(v@sugar), 
    addedSugar = sum(v@addedSugar), 
    fat = sum(v@fat), 
    cholesterol = sum(v@cholesterol),
    sodium = sum(v@sodium),
    protein = sum(v@protein),
    alcohol = sum(v@alcohol),
    usd = sum(v@usd)
  ) / v@servingGram)
  
  ret <- do.call(what = rbind, args = ret0) # matrix
  
  #review <- lapply(dots, FUN = slot, name = 'review')
  #attr(ret, which = 'review') <- review[lengths(review, use.names = FALSE) > 0L]
  #machine <- lapply(dots, FUN = slot, name = 'machine')
  #attr(ret, which = 'machine') <- machine[lengths(machine, use.names = FALSE) > 0L]
  
  attr(ret, which = 'name') <- vapply(dots, FUN = nutrition_name_brand, FUN.VALUE = '')
  attr(ret, which = 'name_cli') <- lapply(dots, FUN = function(x) {
    # (x = dots[[1L]])
    if (!identical(x@name_glue$str, '')) return(x@name_glue)
    nutrition_name_brand(x)
  })
  
  class(ret) <- 'nutrition_'
  return(ret)
  
}

#' @export
print.nutrition_ <- function(x, ...) {
  ret0 <- x
  attributes(ret0)[setdiff(names(attributes(x)), y = c('dim', 'dimnames'))] <- NULL
  
  # do not print `calorie` and `usd`, meaningless (i.e., calorie/servingGram)
  ret0 <- ret0[, !(colnames(ret0) %in% c('calorie', 'usd'))]
  # remove all-0 columns
  ret1 <- ret0[, colMeans(ret0 == 0) != 1]
  
  ret2 <- lapply(seq_len(ncol(ret1)), FUN = function(i) {
    sprintf_bincode(max(ret1[,i]))(ret1[,i])
  })
  
  ret <- do.call(cbind, ret2)
  dimnames(ret) <- list(attr(x, which = 'name'), show_endpoint(colnames(ret1)))

  print_ANSI_matrix(ret)
  cat('\n')
  return(invisible(ret))
  
}




