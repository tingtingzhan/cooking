

# stopifnot(identical(' ', '\u0020'))




#' @title Kitchen \linkS4class{tool}s
#' 
#' @description ..
#' 
#' @slot name,name2 \link[base]{character} scalars, brand and name of kitchen tool, and its auxiliary tool
#' 
#' @slot capacity \link[base]{numeric} scalar, maximum capacity, in times of recipe
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
#' @export
setClass(Class = 'tool', slots = c(
  name = 'character', alias = 'character',
  name2 = 'character',
  capacity = 'numeric',
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
    x@name <- x@kitchenaid |>
      sprintf(fmt = 'https://www.kitchenaid.com/p.%s.html') |>
      style_hyperlink(text = paste('Kitchen Aid', x@name), url = _) |> 
      c()
    x@kitchenaid <- character()
  }
  
  if (length(x@staub)) {
    x@name <- x@staub |>
      sprintf(fmt = 'https://www.zwilling.com/us/%s.html') |>
      style_hyperlink(text = paste('Staub', x@name), url = _) |> 
      c()
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
    
  c(x@alias, x@name) |>
    paste(collapse = ' ') |>
    sprintf(fmt = '\u2756 %s \u2756\n') |>
    make_ansi_style('royalblue')() |> 
    cat()
  
  x@name2 |> 
    sprintf(fmt = '\u2756 %s \u2756\n') |> 
    make_ansi_style('royalblue')() |> 
    cat()
  
  if (length(x@capacity)) {
    x@capacity |> 
      sprintf(fmt = '\u00d7%.1f recipes') |>
      bg_br_yellow() |>
      sprintf(fmt = ' \u2726 Max. Capacity: %s\n') |> 
      cat()
  }
  
  x@treatment |> 
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  sprintf(
    fmt = ' \u2726 %s %s\n',
    x@program,
    (names(x@program) %||% '') |> bg_br_yellow()
  ) |> 
    cat(sep = '')
  
  x@attachment |> 
    sprintf(fmt = ' \U1f6e0 %s\n') |> 
    cat(sep = '')
  
  temperature <- sprintf(
    fmt = '\U1f321%.0f\u00b0F %.0f\u00b0C',
    x@fahrenheit,
    (x@fahrenheit - 32) * 5/9 # celsius
  ) |> 
    col_blue() |> style_bold()
  
  minute <- sprintf(
    fmt = '\u23f0%s %s', 
    x@minute |> fmt_min() |> col_red() |> style_bold(),
    (names(x@minute) %||% '') |> bg_br_yellow()
  ) |>
    trimws()
  
  if (length(minute) && length(temperature)) {
    sprintf(fmt = '   %s %s', temperature, minute) |> 
      cat(sep = '\n')
  } else if (length(minute)) {
    sprintf(fmt = '   %s', minute) |> 
      cat(sep = '\n')
  } else if (length(temperature)) {
    sprintf(fmt = '   %s', temperature) |> 
      cat(sep = '\n')
  } # else do nothing
  
  x@operation |>
    gsub(pattern = '\n', replacement = '') |>
    gsub(pattern = '^ *|(?<= ) | *$', replacement = '', perl = TRUE) |>
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  #cat('\n')
  
  x@cooling |> 
    sprintf(fmt = ' \u21ac %s\n') |> 
    cat(sep = '')
  
  x@waterLost |> 
    sprintf(fmt = ' \u2668 water evaporated: %.0f grams\n') |> 
    cat(sep = '')
  
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





