
# does not have to be after equiv.R :)


#' @title \linkS4class{per}
#' 
#' @description ..
#' 
#' @slot per \link[base]{character} scalar
#' 
#' @slot equiv a \link[base]{list} of \link[equiv4]{equiv-class} objects
#' 
# @name per-class
#' @importClassesFrom equiv4 equiv
#' @export
setClass(Class = 'per', slots = c(
  per = 'character',
  equiv = 'list'
))



# According to 
# https://www.kingarthurbaking.com/pro/formulas
# Baker's percentage of water is
# added-water : flour
# water in flour is *not* included!!!









#' @importFrom stats setNames
#' @export
format.per <- \(x, ...) {
  
  nm <- x@equiv |>
    names()
  fmt_equiv <- x@equiv |>
    lapply(FUN = format) |> # equiv4:::format.equiv
    setNames(nm = nm)
  
  o <- order(nm)
  ret <- fmt_equiv[o] |>
    do.call(what = cbind, args = _)
  if (all(ret[2L,] == '-')) {
    ret <- ret[1L, , drop = FALSE]
  } # else do nothing
  return(ret)
  
}






#' @rdname per-class
#' @param object a \linkS4class{per} object
#' @importFrom charwidth cat_matrix
#' @export
setMethod(f = show, signature = 'per', definition = \(object) {
  ret <- format.per(object)
  if (!length(ret)) return(invisible())
  object@per |> 
    sprintf(fmt = '\u214c %s\n') |> 
    style_bold() |>
    bg_br_yellow() |>
    cat()
  cat_matrix(ret)
  cat('\n')
})



