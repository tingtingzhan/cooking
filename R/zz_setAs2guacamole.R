

setAs(from = 'meatDip', to = 'guacamole', def = \(from) {
  x <- from; from <- NULL
  
  if (length(x@fruit_pc) && ('avocado' %in% names(x@fruit_pc))) {
    x@fruit_pc['avocado'] <- x@fruit_pc['avocado'] + 1
  } else {
    x@fruit_pc <- c(x@fruit_pc, avocado = 1)
  }
  
  x@oil <- numeric() # avocado contains a lot of oil
  x@class2 <- '\U0001f951\U0001f963'
  x@review <- character()
  new(Class = 'guacamole', x)
})
