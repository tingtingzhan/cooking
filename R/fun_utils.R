

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



