

#' @title Subtract Ingredients from \linkS4class{raw.} or \linkS4class{nutrition} Objects
#' 
#' @description
#' ..
#' 
#' @param x see **Usage**
#' 
#' @param ... ingredients to be subtracted
#' 
#' @examples
#' subtract(Keebler_grahamCrust, sugar = 3)
#' subtract(Keebler_grahamCrust, sugar = 5.5)
#' 
#' @name subtract
#' @export
subtract <- \(x, ...) UseMethod(generic = 'subtract')

#' @rdname subtract
#' @export
subtract.function <- \(x, ...) {
  subtract(x(), ...)
}



#' @rdname subtract
#' @method subtract raw.
#' @export
subtract.raw. <- \(x, ...) {
  
  x <- x
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
    
    if (inm %notin% slotNames(x)) sprintf(fmt = '`%s` is not a supported ingredient', inm) |> stop()
    old <- slot(x, name = inm)
    n_old <- length(old)
    if (!n_old) sprintf(fmt = 'orginal recipe does not contain `@%s`', inm) |> stop()
    if (n_old > 1L) sprintf(fmt = 'orginal recipe contains multiple brands of `@%s`', inm) |> stop()
    if (ival > old) sprintf(fmt = 'too much `%s` (>%.1f grams) to be subtracted', inm, old) |> stop()
    new <- old - ival # \link[base]{names} preserved
    slot(x, name = inm) <- if (new > 0) new else numeric()
    
  }

  txt[txt == 'brownSugar'] <- 'sugar'
  x@alias <- paste(x@alias, paste0('-', paste0(unique.default(txt), collapse = '/')) |> col_grey() |> bg_br_green())
  
  return(x)
  
}

#' @rdname subtract
#' @export
subtract.nutrition <- \(x, ...) {
  
  txt <- character()
  
  args <- list(...)
  arg_nm <- names(args)
  if (!length(arg_nm) || anyNA(arg_nm) || !all(nzchar(arg_nm))) stop('ingredients to be subtracted must be fully named')
  
  for (i in seq_along(args)) {
    
    inm <- arg_nm[i]
    txt <- c(txt, inm)
    
    ival <- args[[i]]
    if (!is.numeric(ival) || length(ival) != 1L || is.na(ival) || ival <= 0) sprintf(fmt = 'illegal `%s`', arg_nm[i]) |> stop()
    
    if (inm %notin% slotNames(x)) sprintf(fmt = '`%s` is not a supported ingredient', inm) |> stop()
    old <- slot(x, name = inm)
    if (ival > old) sprintf(fmt = 'too much `%s` (>%.1f grams) to be subtracted', inm, old) |> stop()
    new <- old - ival # \link[base]{names} preserved
    slot(x, name = inm) <- if (new > 0) new else numeric()
    
    if (inm == 'sugar') {
      if (length(x@addedSugar)) x@addedSugar <- if (x@addedSugar > ival) x@addedSugar - ival else numeric()
      x@carbohydrate <- x@carbohydrate - ival
    }
    
    x@servingGram <- x@servingGram - ival
    # but do NOT change servingTsp !!
    
  }
  
  tmp <- paste0('-', paste0(unique.default(txt), collapse = '/')) |> col_grey() |> bg_br_green()
  x@name <- paste(x@name, tmp)
  x@name_glue <- paste(x@name_glue, tmp)
  
  x@calorie <- numeric() # ideally I should be able to calculate this Haha
  
  x@cost_ <- character()
  x@usd <- x@jpy <- numeric() # etc.
  
  slt <- getSlots('nutrition')
  for (inm in setdiff(names(slt)[which(slt == 'character')], c('name', 'name_glue', 'brand'))) {
    slot(x, name = inm) <- character()
  }
  for (inm in names(slt)[which(slt == 'integer')]) {
    slot(x, name = inm) <- integer()
  }
  
  for (inm in setdiff(names(attributes(x)), c(names(slt), 'class'))) {
    attr(x, which = inm) <- NULL
  }
  
  return(x)
  
}
