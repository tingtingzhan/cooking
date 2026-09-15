
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
  
  if (length(x@alias)) {
    x@name <- paste(x@alias, x@name)
    x@alias <- character()
  }

  return(x)
  
})




#' @rdname tool-class
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'tool', definition = \(object) {
  
  if (identical(object, new(Class = 'tool'))) return(invisible())
    
  object@name |> sprintf(fmt = '\u2756 %s \u2756\n') |> make_ansi_style('royalblue')() |> cat()
  object@name2 |> sprintf(fmt = '\u2756 %s \u2756\n') |> make_ansi_style('royalblue')() |> cat()
  
  if (length(object@recipe_pc)) {
    object@recipe_pc |> sprintf(fmt = ' \u2726 Makes x%.1f recipes at a time\n') |> cat()
  }
  
  # object@recipe_weight
  # stopifnot(identical(' ', '\u0020'))
  object@treatment |> sprintf(fmt = ' \u21ac %s\n') |> cat(sep = '')
  
  object@program |> sprintf(fmt = ' \u2726 %s\n') |> cat()
  object@attachment |> sprintf(fmt = ' \U1f6e0 %s\n') |> cat()
  
  txt_fahrenheit <- object@fahrenheit |> sprintf(fmt = '%.0f\u00b0F') |> col_blue()
  txt_celsius <- ((object@fahrenheit - 32) * 5/9) |> sprintf(fmt = '%.0f\u00b0C') |> col_magenta()
  
  if (length(object@minute)) {
    min_ <- object@minute
    if (is.null(names(min_))) names(min_) <- character(length = length(min_))
    sprintf(
      fmt = ' \U1f321%s \U1f321%s \u23f0%s %s', 
      txt_fahrenheit, txt_celsius,
      min_ |> fmt_min() |> col_red() |> style_bold(),
      min_ |> names() |> bg_br_yellow()
    ) |> cat(sep = '\n')
  } else sprintf(
    fmt = ' \U1f321%s \U1f321%s', 
    txt_fahrenheit, 
    txt_celsius
  ) |> paste(collapse = '\n') |> cat()
  
  object@operation |>
    gsub(pattern = '\n', replacement = '') |>
    gsub(pattern = '^ *|(?<= ) | *$', replacement = '', perl = TRUE) |>
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  object@cooling |> 
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  object@waterLost |> 
    sprintf(fmt = ' \u2756 water evaporated: %.0f grams\n') |> 
    cat()
  
  object@note |> 
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





