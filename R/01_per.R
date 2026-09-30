

#' @title \linkS4class{per}
#' 
#' @description ..
#' 
#' @slot per \link[base]{character} scalar
#' 
#' @slot equiv \link[equiv4]{equiv-class} object
#' 
# @name per-class
#' @importClassesFrom equiv4 equiv
#' @export
setClass(Class = 'per', slots = c(
  per = 'character',
  # equiv = 'list' # was
  equiv = 'equiv'
))




#' @rdname per-class
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'per', definition = \(object) {
  
  fmt <- object@equiv |>
    format() # equiv4:::format.equiv
  if (!length(fmt)) return(invisible())
  
  object@per |> 
    sprintf(fmt = '\u214c %s\n') |> 
    bg_br_yellow() |> style_bold() |>
    cat()
  object@equiv |>
    show()
  cat('\n')
})



# @param x a \link[base]{list} of \linkS4class{per} objects
#' @importFrom charwidth row_fmt_matrix
#' @importFrom stats median.default
# @importFrom cli cli_verbatim
#' @export
print.perlist <- \(x, ...) {
  
  x <- x[lengths(x) > 0L]
  if (!length(x)) return(invisible())
  
  y1 <- x |>
    lapply(FUN = \(i) i@equiv@current) |>
    do.call(what = rbind_unbalanced, args = _)

  if (!length(y1)) return(invisible())
  
  y2 <- y1[, colMeans(is.na(y1)) != 1L, drop = FALSE]
  #y3 <- y2[rowMeans(is.na(y2)) != 1L, , drop = FALSE]
  y3 <- y2
  if (!length(y3)) return(invisible())
  if (all(is.na(y3))) return(invisible())
  if (all(abs(y3) < .Machine$double.eps, na.rm = TRUE)) return(invisible())
  y <- y3 |> 
    col_binlabel(FUN = median.default, na.rm = TRUE)
  
  x[[1L]]@per |> 
    sprintf(fmt = '\u214c %s\n') |> 
    style_bold() |> bg_br_yellow() |> 
    cat()
  y |> 
    row_fmt_matrix() |>
    cat(sep = '\n')
  # cli_verbatim() # sep by '\n' by default
  cat('\n')
  return(invisible(y))
}



