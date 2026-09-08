
# does not have to be after equiv.R :)


#' @title \linkS4class{per}
#' 
#' @description ..
#' 
#' @slot per \link[base]{character} scalar
#' 
#' @slot equiv a \link[base]{list} of \linkS4class{equiv} objects
#' 
# @name per-class
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
    names() |> 
    show_endpoint()
  fmt_equiv <- x@equiv |>
    lapply(FUN = format.equiv) |>
    setNames(nm = nm)
  
  o <- order(nm)
  ret <- fmt_equiv[o] |>
    do.call(what = cbind, args = _)
  if (all(ret[2L,] == '-')) {
    ret <- ret[1L, , drop = FALSE]
  } # else do nothing
  return(ret)
  
}


show_endpoint <- \(x) {
  x[x == 'addedWater'] <- 'water+'
  x[x == 'addedSugar'] <- 'sugar+'
  x[x == 'addedStarch'] <- 'starch+'
  # x[x == 'alcohol'] <- '\U1f943'
  x[x == 'carbohydrate'] <- 'carb' 
  x[x == 'NaHCO3'] <- 'NaHCO\u2083' 
  x[x == 'Na2CO3'] <- 'Na\u2082CO\u2083' 
  x[x == 'cornmeal'] <- '\U1f33d'
  x[x == 'glutinousRice'] <- 'glutRice'
  x[x == 'eggYolk'] <- '\U0001f95ayolk'
  x[x == 'eggWhite'] <- '\U0001f95awhite'
  x[x == 'sodium'] <- 'Na\u207a'
  x[x == 'bakingPowder'] <- 'bkPwd'
  x[x == 'cholesterol'] <- 'cholr'
  x[x == 'blackSesame'] <- 'sesame' |> col_br_white() |> bg_black()
  x[x == 'whitePepper'] <- 'whitePp'
  x[x == 'blackPepper'] <- 'blackPp'
  x[x == 'pumpkinSpice'] <- '\U0001f383spice'
  x[x == 'sesameOil'] <- 'ssmOil'
  x[x == 'creamCheese'] <- 'creamChz'
  x[x == 'rattanPepperOil'] <- 'ppcOil' |> col_br_white() |> bg_green()
  x[x == 'pastryFlour'] <- '\U0001f370flour'
  x[x == 'breadFlour'] <- '\U0001f35eflour'
  return(x)
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



