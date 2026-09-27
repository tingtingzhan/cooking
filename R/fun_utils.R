


#' @title Summation by Name
#' 
#' @description ..
#' 
#' @param ... \strong{named} \link[base]{numeric} \link[base]{vector}s
#' 
#' @return 
#' The function [sum_by_name()] returns a \link[base]{numeric} \link[base]{vector}.
#' 
#' @examples
#' sum_by_name(1, 2)
#' sum_by_name(1, c(a = 2))
#' 
#' x1 = c(a = 2, b = 3)
#' x2 = c(b = 2, c = 1)
#' x3 = c(a = 1, b = -2, c = -1)
#' sum_by_name(x1, x2, x3)
#' @export
sum_by_name <- \(...) {
  
  xs <- list(...)
  xs <- xs[lengths(xs) > 0L]
  if (!length(xs)) return(numeric())
  
  ns <- lengths(xs, use.names = FALSE)
  nms <- lapply(xs, FUN = names)
  nms_len <- lengths(nms, use.names = FALSE)
  if (all(ns == 1L)) {
    ret <- sum(unlist(xs, use.names = FALSE))
    if (all(nms_len == 0L)) return(ret)
    if (sum(nms_len) == 1L) {
      # beautiful! only one ingredient has name
      names(ret) <- nms[[which(nms_len == 1L)]]
      return(ret)
    }
  }
  
  nm <- nms |>
    unlist(use.names = FALSE) |>
    unique.default()
  ret <- numeric(length = length(nm))
  names(ret) <- nm
  for (i in xs) ret[names(i)] <- ret[names(i)] + i
  return(ret)
  
}








# add name to len-1 vector
.addname1 <- \(x, nm = stop('no default!'), ...) {
  
  nx <- length(x)
  if (!nx) return(x) # exception
  
  if (nx == 1L) {
    xnm <- names(x)
    if (!length(xnm) || is.na(xnm) || !nzchar(xnm)) names(x) <- nm
  }
  
  xnm <- names(x) # re-do!
  if (!length(xnm) || anyNA(xnm) || !all(nzchar(xnm))) stop('ill name')
  return(x)
  
}



addname1 <- \(x, which, ...) {
  slot(x, name = which) <- slot(x, name = which) |>
    .addname1(...)
  return(x)
}


combnPc <- \(x, which, ...) {
  pc <- paste0(which, '_pc')
  v_pc <- slot(x, name = pc)
  if (!length(v_pc)) return(x)
  
  pieceGram <- names(v_pc) |>
    vapply(FUN = \(i) {
      eval(call(name = i))@pieceGram
    }, FUN.VALUE = NA_real_, USE.NAMES = TRUE)
  
  slot(x, name = which) <- sum_by_name(
    slot(x, name = which), 
    v_pc * pieceGram
  )
  
  slot(x, name = pc) <- numeric()
  
  return(x)
}





combnVol <- \(x, which, ...) {
  
  slt0 <- names(getSlots(x = 'raw.'))
  
  ._tsp <- paste0(which, '_tsp')
  has_tsp <- ._tsp %in% slt0
  
  ._Tbsp <- paste0(which, '_Tbsp')
  has_Tbsp <- ._Tbsp %in% slt0
  ._cup <- paste0(which, '_cup')
  has_cup <- ._cup %in% slt0
  ._brick <- paste0(which, '_brick')
  has_brick <- ._brick %in% slt0
  x_gram <- addname1(x, which = which, ...) |>
    slot(name = which)
  x_tsp <- if (has_tsp) {
    addname1(x, which = ._tsp, ...) |>
      slot(name = ._tsp)
  } # else NULL
  x_Tbsp <- if (has_Tbsp) addname1(x, which = ._Tbsp, ...) |>
    slot(name = ._Tbsp) # else NULL
  x_cup <- if (has_cup) addname1(x, which = ._cup, ...) |>
    slot(name = ._cup) # else NULL
  x_brick <- if (has_brick) addname1(x, which = ._brick, ...) |>
    slot(name = ._brick) # else NULL
  
  slot(x, name = which) <- sum_by_name(
    x_gram, 
    if (has_tsp) gram_per_tsp(names(x_tsp)) * x_tsp, 
    if (has_Tbsp) gram_per_tsp(names(x_Tbsp)) * (3 * x_Tbsp), # parenthesis needed!! otherwise floating issue!!!
    if (has_cup) gram_per_tsp(names(x_cup)) * (48 * x_cup),
    if (has_brick) 226.796 * x_brick
  )
  
  if (has_tsp) slot(x, name = ._tsp) <- numeric()
  if (has_Tbsp) slot(x, name = ._Tbsp) <- numeric() 
  if (has_cup) slot(x, name = ._cup) <- numeric() 
  if (has_brick) slot(x, name = ._brick) <- numeric()
  return(x)
}





meatName <- \(x, animal = stop('')) {
  if (!length(slot(x, name = animal))) return(x)
  nm <- names(slot(x, name = animal))
  if (!length(nm) || anyNA(nm) || !all(nzchar(nm))) stop('incomplete meat name')
  idx <- !startsWith(nm, prefix = paste0(animal, '_'))
  names(slot(x, name = animal))[idx] <- paste0(animal, '_', nm[idx])
  return(x)
}




# @param x \link[base]{numeric} \link[base]{matrix}
#' @importFrom equiv4 binlabel
col_binlabel <- \(x, FUN, ...) {
  x |> 
    apply(MARGIN = 2L, FUN = \(i) {
      i |> 
        binlabel(FUN(i, ...), accuracy = .1)() # cannot return a function, without `i`
    }, simplify = FALSE) |>
    do.call(what = cbind) # to make sure not getting a 'vector' :)
}  


#' @importFrom consec cmod
fmt_min <- \(x) {
  
  if (!length(x)) return(character())
  
  x |>
    cmod(
      e1 = _, 
      e2 = c(d = 60*24, hr = 60, min = 1, sec = 1/60),
      n = 3L,
      tol = 1e-6
    )
  
}


#' @importFrom consec cmod
fmt_vol <- \(x, nm = names(x)) {
  
  nx <- length(x)
  if (!nx) return(character())

  x1 <- x / gram_per_tsp(nm)
  
  id <- grepl(pattern = '_butter$|_creamCheese$', x = nm)
  
  z <- character(length = nx)
  z[id] <- x1[id] |>
    cmod(e1 = _, e2 = consec::teaspoon2, n = 3L, tol = 1e-6)
  z[!id] <- x1[!id] |>
    cmod(e1 = _, e2 = consec::teaspoon, n = 3L, tol = 1e-6) 
  
  z |>
    col_br_blue() |> 
    style_bold()
}



fmt_perc <- \(x, name) {
  # `x` is \linkS4class{nutrition}
  x_ <- slot(x, name = name)
  if (!length(x_) || (x_ == 0)) return(character())
  pct <- x_ / x@servingGram
  pct |> 
    binlabel(pct, accuracy = .1)() |> 
    make_ansi_style('olivedrab')() |> 
    style_bold()
}




add_store_url_ <- \(x, store, fmt, store_brand, store_name = store_brand) {
  x_store <- slot(x, name = store)
  if (!length(x_store)) return(x)
  store_url <- sprintf(fmt = fmt, x_store)
  if (!length(x@brand)) {
    if (is.na(store_brand)) stop('must have `store_brand`')
    x@brand <- style_hyperlink(url = store_url, text = store_brand) |> c()
  } else x@url <- c(x@url, style_hyperlink(url = store_url, text = paste('\U1f6d2', store_name)))
  slot(x, name = store) <- vector(mode = typeof(x_store), length = 0L)
  return(x)
}



get_flavor_ <- \(x) {
  # `x` is base::character base::vector
  x |>
    lapply(FUN = \(i) eval(call(i))) |>
    vapply(FUN = \(i) {
      if (inherits(i, 'nutrition')) {
        i@name
      } else if (inherits(i, what = 'recipe')) {
        #i@flavor
        i@alias |> 
          gsub(pattern = 'Evaporated', replacement = '') |> 
          trimws()
      } else stop('what happens?')
    }, FUN.VALUE = '') |>
    paste(collapse = ' + ')
}




gram_per_tsp <- \(x) {
  if (!length(x)) return(double())
  
  x1 <- if (is.character(x)) {
    if (anyNA(x) || !all(nzchar(x))) stop('input degenerated')
    names(x) <- x
    x |> 
      lapply(FUN = \(i) {
        call(name = i) |>
          eval() |>
          as(Class = 'nutrition')
      })
  } else x
  
  if (!is.recursive(x1) || !all(vapply(x1, FUN = inherits, what = 'nutrition', FUN.VALUE = NA))) 
    stop('input cannot be converted to `nutrition`')
  
  x1 |> 
    vapply(FUN = \(i) {
      if (!length(i@servingTsp)) return(NA_real_) #stop(ix@name, ' does not have volume info')
      i@servingGram / i@servingTsp
    }, FUN.VALUE = NA_real_, USE.NAMES = TRUE)
}







fmt_pc <- \(x) {
  
  # x is `raw.@fruit`, for example
  
  if (!length(x)) return(invisible())
    
  id_pc <- names(x) |>
    vapply(FUN = exists, where = asNamespace('cooking'), inherits = FALSE, FUN.VALUE = NA)
  
  v_pc <- names(x)[id_pc] |>
    lapply(FUN = \(i) {
      eval(call(name = i))
    })
  
  pieceGram <- v_pc |> 
    vapply(FUN = slot, name = 'pieceGram', FUN.VALUE = NA_real_)
    
  fmt <- v_pc |>
    vapply(FUN = slot, name = 'piece_fmt', FUN.VALUE = '')
    
  z <- character(length = length(x))
  z[id_pc] <- (x[id_pc] / pieceGram) |>
    sprintf(fmt = fmt) |> # `fmt` can be vectorized!!
    col_br_magenta() |> 
    style_bold()
  return(z)
  
}




prt_raw_vol <- \(x) {
  
  nm <- x |> 
    names() |>
    vapply(FUN = \(i) {
      eval(call(name = i)) |>
        labels() # [labels.nutrition] or [labels.recipe] (when dealing with `@homemade`)
    }, FUN.VALUE = '')
  
  sprintf(fmt = '%s %.0f grams %s\n', nm, x, fmt_vol(x)) |> 
    lapply(FUN = cli_text)
  
}


prt_raw_pc <- \(x) {
  
  nm <- x |> 
    names() |>
    vapply(FUN = \(i) {
      eval(call(name = i)) |>
        labels() # [labels.nutrition] or [labels.recipe] (when dealing with `@homemade`)
    }, FUN.VALUE = '')
  
  sprintf(fmt = '%s %.0f grams %s\n', nm, x, fmt_pc(x)) |> 
    lapply(FUN = cli_text)
  
}


