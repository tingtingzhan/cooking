
setAs(from = 'nutrition', to = 'recipe', def = \(from) {
  
  x <- from; from <- NULL
  suggestion <- x@suggestion
  if (!length(suggestion)) return(invisible())
  
  do.call(what = new, args = c(list(
    Class = 'recipe', 
    alias = x@call |>
      as.character() |> 
      make_ansi_style('sienna')() |> 
      style_bold() |> 
      sprintf(fmt = 'Suggested %s') |> 
      bg_br_white() |> 
      c(),
    misc = setNames(x@servingGram, nm = as.character(x@call))
  ), suggestion))
  
})



