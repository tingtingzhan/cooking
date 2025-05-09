

#' @title nutrition_
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{nutrition} class
#' 
#' @param dots a \link[base]{list} of objects convertible to \linkS4class{nutrition} class
#' 
#' @keywords internal
#' @export
nutrition_ <- function(..., dots = list(...)) {
  
  dots <- dots |> lapply(FUN = nutrition)
  
  ret <- dots |>
    lapply(FUN = \(v) {
      c(
        calorie = sum(v@calorie),
        water = sum(v@water), # sum(numeric()) returns 0
        carbohydrate = sum(v@carbohydrate),
        fiber = sum(v@fiber),
        sugar = sum(v@sugar), 
        addedSugar = sum(v@addedSugar), 
        fat = sum(v@fat), 
        cholesterol = sum(v@cholesterol),
        sodium = sum(v@sodium),
        protein = sum(v@protein),
        alcohol = sum(v@alcohol),
        usd = sum(v@usd)
      ) / v@servingGram
    }) |>
    do.call(what = rbind) # matrix
  
  if (!('water' %in% colnames(ret))) stop('should never happen')
  addedWater_ <- water_ <- ret[,'water']
  addedWater_[water_ < .2] <- 0 # King Arthur commercial flour has water 14% 
  ret <- cbind(ret, addedWater = addedWater_)
  
  #review <- dots |> lapply(FUN = slot, name = 'review')
  #attr(ret, which = 'review') <- review[lengths(review, use.names = FALSE) > 0L]
  #machine <- dots |> lapply(FUN = slot, name = 'machine')
  #attr(ret, which = 'machine') <- machine[lengths(machine, use.names = FALSE) > 0L]

  nm <- dots |>
    vapply(FUN = \(i) c(i@name, i@brand) |> paste(collapse = ' '), FUN.VALUE = '')
  nm_glue <- dots |>
    vapply(FUN = \(i) c(i@name_glue, i@brand) |> paste(collapse = ' '), FUN.VALUE = '')
  
  rownames(ret) <- nm # *not* `nm_glue`
  attr(ret, which = 'glue') <- nm_glue
  class(ret) <- 'nutrition_'
  return(ret)
  
}

#' @export
print.nutrition_ <- function(x, ...) {
  
  ret0 <- x
  attributes(ret0)[setdiff(names(attributes(x)), y = c('dim', 'dimnames'))] <- NULL
  
  ret0 <- ret0[, !(colnames(ret0) %in% c(
    'calorie', 'usd', # meaningless (i.e., calorie/servingGram)
    'addedWater'
  ))]
  
  ret <- ret0[, colMeans(ret0 == 0) != 1] |> 
    col_label_bin_(FUN = max)
  colnames(ret) <- ret |> colnames() |> show_endpoint()
  
  ret |> print_ANSI_matrix()
  cat('\n')
  return(invisible(ret))
  
}




