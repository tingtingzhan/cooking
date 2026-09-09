
setAs(from = 'nutrition', to = 'recipe', def = \(from) {
  
  x <- from; from <- NULL
  suggestion <- x@suggestion
  if (!length(suggestion)) return(invisible())
  flavor <- x@servingGram
  nm <- as.character(x@call)
  names(flavor) <- nm
  do.call(what = new, args = c(list(
    Class = 'recipe', 
    alias = nm |> make_ansi_style('sienna')() |> style_bold() |> sprintf(fmt = 'Suggested %s') |> bg_br_white() |> c(),
    flavor = flavor
  ), suggestion))
  
})



