


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
  
  if (which %in% c(
    'starch', 'oil', 
    'butter', 'cheese', 'condensedMilk', 'cottageCheese', 'creamCheese', 'drymilk', 'evaporatedMilk', 
    'filmjolk', 'ghee', 'heavyCream', 'kefir', 'lightCream', 'mascarpone', 'milk',
    'sourCream', 'yogurt', 'yogurtGreek',
    'syrup'
  )) {
    add_suffix <- \(x0, which) {
      if (!length(names(x0))) return(x0)
      idx <- !endsWith(names(x0), suffix = paste0('_', which))
      names(x0)[idx] <- paste0(names(x0)[idx], '_', which)
      return(x0)
    }
    x_gram <- add_suffix(x_gram, which = which)
    if (has_tsp) x_tsp <- add_suffix(x_tsp, which = which)
    if (has_Tbsp) x_Tbsp <- add_suffix(x_Tbsp, which = which)
    if (has_cup) x_cup <- add_suffix(x_cup, which = which)
    if (has_brick) x_brick <- add_suffix(x_brick, which = which)
  }
  
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






check_gelatin <- \(x) {
  if (n_leaf <- length(x@gelatin_leaf)) {
    if (n_leaf > 1L) stop('only use Gold gelatin leaves')
    if (is.na(x@gelatin_leaf) || (x@gelatin_leaf <= 0)) stop('number of gelatin sheets must be all >0')
    x@gelatin <- sum(x@gelatin, x@gelatin_leaf * 2)
    x@gelatin_leaf <- numeric()
  }
  if (n <- length(x@gelatin)) {
    if (n != 1L) stop('only use Gold gelatin')
    names(x@gelatin) <- 'Champion_gold_gelatin'
  }
  return(x)
}




getTealoose <- \(x) {
  # `x` is recipe@teabag, number of tea bags
  if (!length(x)) return(numeric())
  info_ <- x |> names() |> lapply(FUN = \(i) eval(call(i)))
  mapply(FUN = \(info, pc) {
    info@servingGram * pc
  }, pc = x, info = info_)
}

getTeabag <- \(x) {
  # `x` is recipe@tea, weight of loose tea
  if (!length(x)) return(numeric())
  info_ <- x |> names() |> lapply(FUN = \(i) eval(call(i)))
  mapply(FUN = \(info, wt) {
    wt / info@servingGram
  }, wt = x, info = info_)
}



getGelatinLeaf <- \(x) {
  (x/2) |> sprintf(fmt = '%.1f leaves') |> col_br_blue()
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
      e2 = c(d = 60*24, hr = 60, min = 1),
      n = 3L,
      tol = 1e-6
    )
  
}


#' @importFrom consec cmod
fmt_vol <- \(x, nm = names(x)) {
  
  if (!length(x)) return(character())
  
  (x/gram_per_tsp(nm)) |>
    cmod(
      e1 = _, 
      e2 = c(
        Cup = 48,
        '\u2154Cup' = 48*2/3,
        '\u00bdCup' = 48/2,
        '\u2153Cup' = 48/3,
        '\u00bcCup' = 48/4,
        Tbsp = 3,
        '2tsp' = 2,
        '1\u00bdtsp' = 1.5,
        '1tsp' = 1,
        '\u00bdtsp' = .5,
        '\u00bctsp' = 1/4,
        '\u215btsp' = 1/8
      ),
      n = 3L,
      tol = 1e-6
    ) |>
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
        #i@alias_flavor
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


format_pc <- \(object, name) {
  ret <- slot(object, name = name) / eval(call(name))@servingGram
  ret |> 
    sprintf(fmt = '%.3gpcs') |> 
    col_br_blue() |> 
    style_bold()
}




