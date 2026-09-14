

#' @title \linkS4class{spice}
#' 
#' @slot call \link[base]{language}, the function name to create this \linkS4class{spice}
#' 
#' @slot alias \link[base]{character} scalar
#' 
#' @slot url \link[base]{character} scalar
#' 
#' @export
setClass(Class = 'spice', slots = c(
  call = 'language',
  alias = 'character',
  url = 'character'
))



#' @importFrom cli ansi_string
# @importFrom quantmod getQuote
setMethod(f = initialize, signature = 'spice', definition = \(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  # `-3` frame is determined by ?methods::new and ?methods::initialize (dont ask me why..)
  x@call <- match.call(
    definition = sys.function(-3), 
    call = sys.call(-3)
  )[[1L]]
  
  if (is.symbol(x@call)) {
    # do nothing
  } else if (as.character(x@call[[1L]]) %in% c('::', ':::')) {
    x@call <- x@call[[3L]]
  } else stop(x@call)
  
  if (!length(x@url)) {
    x@url <- x@call |>
      as.character() |>
      sprintf(fmt = 'https://en.wikipedia.org/wiki/%s')
  }
  
  return(x)
  
})


#' @export
format.spice <- \(x, ...) {
  alias <- x@alias |>
    style_hyperlink(url = x@url) |>
    col_blue()
  name <- x@call |>
    as.character() |>
    col_br_magenta()
  
  paste0(alias, name)
}


#' @rdname spice-class
#' @param object a \linkS4class{spice} object
#' @importFrom cli col_blue col_br_magenta style_hyperlink
#' @export
setMethod(f = show, signature = 'spice', definition = \(object) object |> format.spice() |> cat())  



