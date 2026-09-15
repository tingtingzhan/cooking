

setAs(from = 'meatDip', to = 'guacamole', def = \(from) {
  x <- from; from <- NULL
  if (length(x@avocado_pc)) stop()
  x@avocado_pc <- 1
  x@class2 <- '\U0001f951\U0001f963'
  x@review <- character()
  new(Class = 'guacamole', x)
})
