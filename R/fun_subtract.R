

#' @title Subtract Ingredients From Recipe or Commercial Product
#' 
#' @description
#' ..
#' 
#' @param object \linkS4class{nutrition} object
#' 
#' @param ... ingredients to be subtracted
#' 
#' @examples
#' subtract(Keebler_grahamCrust, sugar = 3)
#' subtract(Keebler_grahamCrust, sugar = 5.5)
#' 
#' @name subtract
#' @export
subtract <- function(object, ...) UseMethod(generic = 'subtract')

#' @rdname subtract
#' @export
subtract.function <- function(object, ...) {
  subtract(object(), ...)
}



#' @rdname subtract
#' @export
subtract.recipe <- function(object, ...) {
  
  obj <- object
  txt <- character()
  
  args <- list(...)
  arg_nm <- names(args)
  if (!length(arg_nm) || anyNA(arg_nm) || !all(nzchar(arg_nm))) stop('ingredients to be subtracted must be fully named')
  
  for (i in seq_along(args)) {
    
    inm <- arg_nm[i]
    txt <- c(txt, inm)
    
    ival <- args[[i]]
    if (!is.numeric(ival) || length(ival) != 1L || is.na(ival)) arg_nm[i] |> sprintf(fmt = 'illegal `%s`') |> stop()
    # `ival <= 0` allowed, 'adding' an ingredient
    
    if (!(inm %in% slotNames(obj))) sprintf(fmt = '`%s` is not a supported ingredient', inm) |> stop()
    old <- slot(obj, name = inm)
    n_old <- length(old)
    if (!n_old) sprintf(fmt = 'orginal recipe does not contain `@%s`', inm) |> stop()
    if (n_old > 1L) sprintf(fmt = 'orginal recipe contains multiple brands of `@%s`', inm) |> stop()
    if (ival > old) sprintf(fmt = 'too much `%s` (>%.1f grams) to be subtracted', inm, old) |> stop()
    new <- old - ival # \link[base]{names} preserved
    slot(obj, name = inm) <- if (new > 0) new else numeric()
    
  }

  txt[txt == 'brownSugar'] <- 'sugar'
  obj@alias <- paste(obj@alias, paste0('-', paste0(unique.default(txt), collapse = '/')) |> col_grey() |> bg_br_green())
  
  return(obj)
  
}

#' @rdname subtract
#' @export
subtract.nutrition <- function(object, ...) {
  
  obj <- object
  txt <- character()
  
  args <- list(...)
  arg_nm <- names(args)
  if (!length(arg_nm) || anyNA(arg_nm) || !all(nzchar(arg_nm))) stop('ingredients to be subtracted must be fully named')
  
  for (i in seq_along(args)) {
    
    inm <- arg_nm[i]
    txt <- c(txt, inm)
    
    ival <- args[[i]]
    if (!is.numeric(ival) || length(ival) != 1L || is.na(ival) || ival <= 0) sprintf(fmt = 'illegal `%s`', arg_nm[i]) |> stop()
    
    if (!(inm %in% slotNames(obj))) sprintf(fmt = '`%s` is not a supported ingredient', inm) |> stop()
    old <- slot(obj, name = inm)
    if (ival > old) sprintf(fmt = 'too much `%s` (>%.1f grams) to be subtracted', inm, old) |> stop()
    new <- old - ival # \link[base]{names} preserved
    slot(obj, name = inm) <- if (new > 0) new else numeric()
    
    if (inm == 'sugar') {
      if (length(obj@addedSugar)) obj@addedSugar <- if (obj@addedSugar > ival) obj@addedSugar - ival else numeric()
      obj@carbohydrate <- obj@carbohydrate - ival
    }
    
    obj@servingGram <- obj@servingGram - ival
    # but do NOT change servingTsp !!
    
  }
  
  obj@name <- paste(obj@name, paste0('-', paste0(unique.default(txt), collapse = '/')) |> col_grey() |> bg_br_green())
  
  obj@calorie <- numeric() # ideally I should be able to calculate this Haha
  
  obj@cost_ <- character()
  obj@usd <- obj@jpy <- numeric() # etc.
  
  slt <- getSlots('nutrition')
  for (inm in setdiff(names(slt)[which(slt == 'character')], c('name', 'brand'))) {
    slot(obj, name = inm) <- character()
  }
  for (inm in names(slt)[which(slt == 'integer')]) {
    slot(obj, name = inm) <- integer()
  }
  
  for (inm in setdiff(names(attributes(obj)), c(names(slt), 'class'))) {
    attr(obj, which = inm) <- NULL
  }
  
  return(obj)
  
}
