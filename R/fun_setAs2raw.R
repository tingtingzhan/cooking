


setAs(from = 'recipe', to = 'raw.', def = \(from) {
  slt0 <- names(getSlots(x = 'raw.'))
  atr0 <- attributes(from)[slt0]
  atr <- atr0[lengths(atr0) > 0L]
  do.call(what = new, args = c(list(Class = 'raw.'), atr))
})



