
#' @title Kitchen \linkS4class{tool}s
#' 
#' @description ..
#' 
#' @slot name,name2 \link[base]{character} scalars, brand and name of kitchen tool, and its auxiliary tool
#' 
#' @slot recipe_pc \link[base]{numeric} scalar, how many times of recipe
#' 
#' @slot recipe_weight \link[base]{numeric} scalar, weight of recipe (in grams)
#' 
#' @slot treatment \link[base]{character} scalar, pre-treatment
#' 
#' @slot program \link[base]{character} scalar, program
#' 
#' @slot operation \link[base]{character} scalar or \link[base]{vector}, operation(s) on multiple days
#' 
#' @slot attachment \link[base]{character} scalar
#' 
#' @slot fahrenheit \link[base]{numeric} scalar 
#' 
#' @slot minute \link[base]{numeric} scalar
#' 
#' @slot cooling \link[base]{character} scalar or \link[base]{vector}, instructions of cooling down
#' 
#' @slot note \link[base]{character} scalar or \link[base]{vector}, other notes
#' 
#' @slot waterLost \link[base]{numeric} scalar, water evaporated in cooking (in grams) 
#' 
#' @slot alias \link[base]{character} scalar
#' @slot kitchenaid \link[base]{character} scalar
#' @slot staub \link[base]{character} scalar
#' 
#' @name tool-class
#' @export
setClass(Class = 'tool', slots = c(
  name = 'character', alias = 'character',
  name2 = 'character',
  recipe_pc = 'numeric',
  recipe_weight = 'numeric',
  treatment = 'character',
  program = 'character',
  operation = 'character',
  attachment = 'character',
  fahrenheit = 'numeric',
  minute = 'numeric',
  cooling = 'character',
  note = 'character',
  waterLost = 'numeric',
  
  kitchenaid = 'character',
  staub = 'character'
))




setMethod(f = initialize, signature = 'tool', definition = \(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  if (length(x@kitchenaid)) {
    x@name <- style_hyperlink(text = x@name, url = sprintf(fmt = 'https://www.kitchenaid.com/p.%s.html', x@kitchenaid)) |> c()
    x@kitchenaid <- character()
  }
  
  if (length(x@staub)) {
    x@name <- style_hyperlink(text = x@name, url = sprintf(fmt = 'https://www.zwilling.com/us/%s.html', x@staub)) |> c()
    x@staub <- character()
  }
  
  return(x)
  
})




#' @rdname tool-class
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'tool', definition = \(object) {
  
  x <- object; object <- NULL
  
  if (identical(x, new(Class = 'tool'))) return(invisible())
    
  paste(x@alias, x@name) |>
    trimws() |>
    sprintf(fmt = '\u2756 %s \u2756\n') |>
    make_ansi_style('royalblue')() |> 
    cat()
  
  x@name2 |> sprintf(fmt = '\u2756 %s \u2756\n') |> make_ansi_style('royalblue')() |> cat()
  
  if (length(x@recipe_pc)) {
    x@recipe_pc |> sprintf(fmt = ' \u2726 Makes \u00d7%.1f recipes at a time\n') |> cat()
  }
  
  # x@recipe_weight
  # stopifnot(identical(' ', '\u0020'))
  x@treatment |> sprintf(fmt = ' \u21ac %s\n') |> cat(sep = '')
  
  x@program |> sprintf(fmt = ' \u2726 %s\n') |> cat()
  x@attachment |> sprintf(fmt = ' \U1f6e0 %s\n') |> cat()
  
  txt_fahrenheit <- if (length(x@fahrenheit)) {
    x@fahrenheit |> 
      sprintf(fmt = '\U1f321%.0f\u00b0F') |> col_blue()
  } else ''
  txt_celsius <- if (length(x@fahrenheit)) {
    ((x@fahrenheit - 32) * 5/9) |> 
      sprintf(fmt = '\U1f321%.0f\u00b0C') |> col_magenta()
  } else ''
  
  if (length(x@minute)) {
    min_ <- x@minute
    if (is.null(names(min_))) names(min_) <- character(length = length(min_))
    sprintf(
      fmt = ' %s %s \u23f0%s %s', 
      txt_fahrenheit, txt_celsius,
      min_ |> fmt_min() |> col_red() |> style_bold(),
      min_ |> names() |> bg_br_yellow()
    ) |> 
      gsub(pattern = '^ *|(?<= ) | *$', replacement = ' ', perl = TRUE) |>
      cat(sep = '\n')
  } else sprintf(
    fmt = ' %s %s', 
    txt_fahrenheit, txt_celsius
  ) |> 
    gsub(pattern = '^ *|(?<= ) | *$', replacement = ' ', perl = TRUE) |>
    cat(sep = '\n')
  
  x@operation |>
    gsub(pattern = '\n', replacement = '') |>
    gsub(pattern = '^ *|(?<= ) | *$', replacement = '', perl = TRUE) |>
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  x@cooling |> 
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  x@waterLost |> 
    sprintf(fmt = ' \u2756 water evaporated: %.0f grams\n') |> 
    cat()
  
  x@note |> 
    sprintf(fmt = ' \u2756 %s\n') |> 
    cat(sep = '')
  
  cat('\n')
  
})




#' @export
print.toollist <- \(x, ...) {
  if (!all(vapply(x, FUN = inherits, what = 'tool', FUN.VALUE = NA))) stop()
  x |>
    lapply(FUN = show)
}





