


#' @title \linkS4class{equiv}
#' 
#' @description ..
#' 
#' @slot actual \link[base]{numeric} scalar 
#' 
#' @slot ideal \link[base]{numeric} scalar
#' 
#' @slot margin \link[base]{numeric} scalar, default 1.1
#' 
#' @slot ignore \link[base]{numeric} scalar, default `.Machine$double.eps`
#' 
#' @name equiv
#' @aliases equiv-class
#' @export
setClass(Class = 'equiv', slots = c(
  actual = 'numeric',
  ideal = 'numeric',
  margin = 'numeric',
  ignore = 'numeric'
), prototype = prototype(
  ideal = NA_real_,
  margin = 1.1,
  ignore = .Machine$double.eps
))



equiv <- function(actual, ideal, ...) {
  if (missing(ideal)) return(new(Class = 'equiv', actual = actual, ...))
  if (!length(ideal)) return(new(Class = 'equiv', actual = actual, ideal = numeric(), ...))
  if (is.na(ideal)) return(new(Class = 'equiv', actual = actual, ...))
  return(new(Class = 'equiv', actual = actual, ideal = ideal, ...))
}




#' @title `format.equiv`
#' 
#' @description ..
#' 
#' @param x \linkS4class{equiv} object
#' 
#' @param ... ..
#' 
#' @examples 
#' format(new('equiv', actual = .6))
#' format(new('equiv', actual = .6, ideal = 1))
#' 
#' @references 
#' \url{https://en.wikipedia.org/wiki/Bioequiv}
#' 
#' @export
format.equiv <- function(x, ...) {
  if (!(n <- length(x@actual))) return(invisible()) # exception handling
  #if (n != 1L) {
  #  print(x@actual)
  #  stop('S4 class \'equiv\' is not vectorized')
  #} # teabag = c(Twinings_strongEarlGrey = 1, Twinings_EarlGrey = 3)
  actual <- sum(x@actual)
  if (is.na(actual)) stop('Slot `@actual` cannot be missing')
  if (abs(actual) < x@ignore) return(invisible()) # exception handling
  
  if (actual < 0) return(invisible())
  # I do not have `@water` for all puree, yet
  
  sprintf_fun <- sprintf_bincode(min(actual, x@ideal, na.rm = TRUE))
  
  actual <- sprintf_fun(actual)
  if (!length(x@ideal)) return(c(Actual = actual, Ideal = '?'))
  if (is.na(x@ideal)) return(c(Actual = actual, Ideal = '-'))
  return(c(Actual = actual, Ideal = sprintf_fun(x@ideal)))
}




sprintf_bincode <- function(x) {
  if ((length(x) != 1L) || !is.numeric(x) || is.na(x)) stop('illegal input')
  switch(.bincode(
    x, 
    #breaks = c(0, .002, .02, 1, Inf),
    breaks = c(0, .001, .01, 1, Inf),
    right = FALSE # important!!
  ), '1' = { # (0, .001)
    fmt <- '%.1f\u2031' # nchar('\u2031') == 1L # Per Ten Thousand
    m <- 1e4
  }, '2' = { # [.001, .01)
    fmt <- '%.1f\u2030' # nchar('\u2030') == 1L # Per Mille
    m <- 1e3
  }, '3' = { # [.01, 1)
    fmt <- '%.1f%%'
    m <- 1e2
  }, '4' = { # [1, Inf) 
    fmt <- '%.2f'
    m <- 1
  }, stop('shouldnt come here'))
  
  function(newx) {
    # `newx` can be vector
    tmp <- sprintf(fmt = fmt, m * newx) 
    tmp[is.na(newx) | (newx < 1e-4)] <- '-'
    return(tmp)
  }
}






#' @title show equiv
#' 
#' @description
#' ..
#' 
#' @param object \linkS4class{equiv} object
#' 
#' 
#' @export
setMethod(f = show, signature = signature(object = 'equiv'), definition = function(object) {
  print(format.equiv(object))
})





#' @title Diagnoses
#' 
#' @description
#' Baker's percentage 
#'
#' Chinese baker's percentage
#' 
#' Cooked percentage ..
#' 
#' @slot per \link[base]{character} scalar
#' 
#' @slot puree \linkS4class{equiv}
#' @slot eggYolk \linkS4class{equiv}
#' @slot eggWhite \linkS4class{equiv}
#' @slot Na2CO3 \linkS4class{equiv}
#' @slot NaHCO3 \linkS4class{equiv}
#' @slot bakingPowder \linkS4class{equiv}
#' @slot salt \linkS4class{equiv}
#' @slot yeast \linkS4class{equiv}
#' 
#' @slot water \linkS4class{equiv}
#' @slot carbohydrate \linkS4class{equiv}
#' @slot sugar \linkS4class{equiv}
#' @slot addedSugar \linkS4class{equiv}
#' @slot sodium \linkS4class{equiv}
#' @slot protein \linkS4class{equiv}
#' @slot drymilk \linkS4class{equiv}
#' @slot creamCheese \linkS4class{equiv}
#' @slot tea \linkS4class{equiv}
#' @slot matcha \linkS4class{equiv}
#' @slot beet \linkS4class{equiv}
#' @slot ginger \linkS4class{equiv}
#' @slot cumin \linkS4class{equiv}
#' @slot cilantro \linkS4class{equiv}
#' @slot garlic \linkS4class{equiv}
#' @slot onion \linkS4class{equiv}
#' @slot turmeric \linkS4class{equiv}
#' @slot cinnamon \linkS4class{equiv}
#' @slot paprika \linkS4class{equiv}
#' @slot whitePepper \linkS4class{equiv}
#' @slot blackPepper \linkS4class{equiv}
#' @slot curry \linkS4class{equiv}
#' @slot chiliMix \linkS4class{equiv}
#' @slot blackSesame \linkS4class{equiv}
#' @slot coconut \linkS4class{equiv}
#' @slot cocoa \linkS4class{equiv}
#' @slot coffee \linkS4class{equiv}
#' @slot acai \linkS4class{equiv}
#' @slot fat \linkS4class{equiv}
#' @slot sesameOil \linkS4class{equiv}
#' @slot greenPeppercornOil \linkS4class{equiv}
#' @slot cholesterol \linkS4class{equiv}
#' @slot addedStarch \linkS4class{equiv}
#' @slot gelatin \linkS4class{equiv}
#' @slot rice \linkS4class{equiv}
#' @slot glutinousRice \linkS4class{equiv}
#' @slot cornmeal \linkS4class{equiv}
#' 
#' @name diagnosis
#' @aliases recipeDx-class
#' @export
setClass(Class = 'recipeDx', slots = c(
  per = 'character',
  puree = 'equiv',
  water = 'equiv',
  carbohydrate = 'equiv',
  addedStarch = 'equiv',
  rice = 'equiv',
  glutinousRice = 'equiv',
  gelatin = 'equiv',
  alcohol = 'equiv',
  cornmeal = 'equiv',
  cholesterol = 'equiv',
  drymilk = 'equiv',
  creamCheese = 'equiv',
  protein = 'equiv',
  fat = 'equiv',
  sesameOil = 'equiv',
  greenPeppercornOil = 'equiv',
  blackSesame = 'equiv',
  coconut = 'equiv',
  eggYolk = 'equiv',
  eggWhite = 'equiv',
  sugar = 'equiv',
  addedSugar = 'equiv',
  yeast = 'equiv',
  salt = 'equiv',
  msg = 'equiv',
  sodium = 'equiv',
  Na2CO3 = 'equiv',
  NaHCO3 = 'equiv',
  bakingPowder = 'equiv',
  matcha = 'equiv',
  ginger = 'equiv',
  beet = 'equiv',
  cocoa = 'equiv',
  acai = 'equiv',
  coffee = 'equiv',
  tea = 'equiv',
  cumin = 'equiv',
  cilantro = 'equiv',
  garlic = 'equiv',
  onion = 'equiv',
  turmeric = 'equiv',
  cinnamon = 'equiv',
  paprika = 'equiv',
  chiliMix = 'equiv',
  curry = 'equiv',
  whitePepper = 'equiv',
  blackPepper = 'equiv',
  coriander = 'equiv'
))


#' @rdname diagnosis
#' @aliases baker-class
#' @export
setClass(Class = 'baker', contains = 'recipeDx', prototype = prototype(
  per = 'All-Purpose\U1f370\U1f35e Flour'
))


# According to 
# https://www.kingarthurbaking.com/pro/formulas
# Baker's percentage of water is
# added-water : flour
# water in flour is *not* included!!!


#' @rdname diagnosis
#' @aliases pastryBaker-class
#' @export
setClass(Class = 'pastryBaker', contains = 'recipeDx', prototype = prototype(
  per = 'Pastry\U1f370 Flour'
))

#' @rdname diagnosis
#' @aliases mixBaker-class
#' @export
setClass(Class = 'mixBaker', contains = 'recipeDx', prototype = prototype(
  per = 'Mixed Wheat Flour'
))

#' @rdname diagnosis
#' @aliases breadBaker-class
#' @export
setClass(Class = 'breadBaker', contains = 'recipeDx', prototype = prototype(
  per = 'Bread\U1f35e Flour'
))

#' @rdname diagnosis
#' @aliases glutenFreeBaker-class
#' @export
setClass(Class = 'glutenFreeBaker', contains = 'recipeDx', prototype = prototype(
  per = 'Gluten-Free Flour'
))

#' @rdname diagnosis
#' @aliases riceBaker-class
#' @export
setClass(Class = 'riceBaker', contains = 'recipeDx', prototype = prototype(
  per = 'Glutinous+Rice\U1f33e Flour'
))

#' @rdname diagnosis
#' @aliases cocoaDutchMix-class
#' @export
setClass(Class = 'cocoaDutchMix', contains = 'recipeDx', prototype = prototype(
  per = 'Alkalized Cocoa'
))

#' @rdname diagnosis
#' @aliases cookedTexture-class
#' @export
setClass(Class = 'cookedTexture', contains = 'recipeDx', prototype = prototype(
  per = 'Serving; \033[31mTexture Profile\033[0m' 
))

#' @rdname diagnosis
#' @aliases cookedFlavor-class
#' @export
setClass(Class = 'cookedFlavor', contains = 'recipeDx', prototype = prototype(
  per = 'Serving; \033[31mFlavor Profile\033[0m'
))

#' @rdname diagnosis
#' @aliases uncooked-class
#' @export
setClass(Class = 'uncooked', contains = 'recipeDx', prototype = prototype(
  per = 'Raw Material'
))


#' @export
format.recipeDx <- function(x, ...) {
  slt <- names(which(getSlots(class(x)) == 'equiv'))
  equiv_slot <- lapply(slt, FUN = slot, object = x) # all 'equiv' slots
  fmt_equiv <- lapply(equiv_slot, FUN = format.equiv)
  
  id <- (lengths(fmt_equiv, use.names = FALSE) > 0L)
  if (!any(id)) return(invisible())
  ret0 <- fmt_equiv[id]
  names(ret0) <- show_endpoint(slt[id])
  
  relat <- vapply(equiv_slot[id], FUN = function(i) {
    if (!length(i@ideal) || is.na(i@ideal)) return(NA_integer_)
    .bincode(i@actual/i@ideal, breaks = c(0, 1/i@margin, i@margin, Inf))
  }, FUN.VALUE = NA_integer_)
  
  if (all(is.na(relat))) {
    ret <- lapply(ret0, FUN = `[`, 1L) 
  } else {
    ret <- .mapply(dots = list(ret0, relat), MoreArgs = NULL, FUN = function(x, rel) {
      # i = 3L; x = ret0[[i]]; rel = relat[[i]]
      x[1L] <- switch(as.character(rel), '1' = { # actual < ideal
        #paste0('\033[1;34m', x[1L], '\033[0m') # bold blue
        paste0('\033[1;94m', x[1L], '\033[0m') # bold high-intensity blue
      }, 'NA' =, '2' = { # actual == ideal
        paste0('\033[90m', x[1L], '\033[0m') # grey
      }, '3' = { # actual > ideal
        #paste0('\033[1;31m', x[1L], '\033[0m') # bold red
        paste0('\033[1;91m', x[1L], '\033[0m') # bold high-intensity red
      })
      return(x)
    })
    names(ret) <- names(ret0) # base::.mapply drops names
  }

  return(invisible(do.call(cbind, args = ret)))
  
}



show_endpoint <- function(x) {
  x[x == 'carbohydrate'] <- 'carb' 
  x[x == 'NaHCO3'] <- 'NaHCO\u2083' 
  x[x == 'Na2CO3'] <- 'Na\u2082CO\u2083' 
  x[x == 'cornmeal'] <- '\U1f33d'
  x[x == 'glutinousRice'] <- 'glutRice'
  x[x == 'addedSugar'] <- '+sugar'
  x[x == 'addedStarch'] <- '+starch'
  #x[x == 'eggYolk'] <- '\U0001f95ayolk'
  #x[x == 'eggWhite'] <- '\U0001f95awhite'
  #x[x == 'sodium'] <- 'Na\u3253'
  x[x == 'bakingPowder'] <- 'bkPwd'
  x[x == 'cholesterol'] <- 'cholr'
  x[x == 'blackSesame'] <- '\033[40;97msesame\033[0m'
  x[x == 'whitePepper'] <- 'whitePp'
  x[x == 'blackPepper'] <- 'blackPp'
  x[x == 'sesameOil'] <- 'ssmOil'
  x[x == 'creamCheese'] <- 'creamChs'
  x[x == 'greenPeppercornOil'] <- '\033[42;97mppcOil\033[0m'
  return(x)
}




#' @title Show Diagnoses Object
#' 
#' @description
#' ..
#' 
#' @param object \linkS4class{recipeDx} object
#' 
# @importFrom cli.tzh print_ANSI_matrix
#' @export
setMethod(f = show, signature = signature(object = 'recipeDx'), definition = function(object) {
  ret <- format.recipeDx(object)
  if (!length(ret)) return(invisible())
  cat('\033[0;103m', sprintf(fmt = '\u214c %s\n', object@per), '\033[0m', sep = '')
  print_ANSI_matrix(ret)
  cat('\n')
})





