


# [new_] will be a very important function!!
new_ <- function(Class, x) {
  atr <- attributes(x)[c(
    names(which(getSlots('recipe') == 'numeric')), 
    'alias_flavor', 'pros', 'cons'
  )]
  atr <- atr[lengths(atr, use.names = FALSE) > 0L]
  return(do.call(what = new, args = c(list(Class = Class), atr)))
}