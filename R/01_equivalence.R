


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
  actual <- sum(x@actual)
  if (is.na(actual)) stop('Slot `@actual` cannot be missing')
  if (abs(actual) < x@ignore) return(invisible()) # exception handling
  
  if (actual < 0) return(invisible())
  # I do not have `@water` for all puree, yet
  
  .label <- min(actual, x@ideal, na.rm = TRUE) |> .label_bin_()
  
  actual <- .label(actual)
  if (is.na(x@ideal)) return(c(Actual = actual, Ideal = '-'))
  return(c(Actual = actual, Ideal = .label(x@ideal)))
}



#' @importFrom scales label_number
.label_bin_ <- function(x) {
  
  if ((length(x) != 1L) || !is.numeric(x) || is.na(x)) stop('illegal input')
  
  x |> 
    .bincode(
      breaks = c(0, .001, .01, 1, Inf),
      right = FALSE # important!!
    ) |> 
    switch('1' = { # (0, .001)
      \(newx) {
        z <- label_number(scale = 1e4, suffix = '\u2031', accuracy = .1)(newx)
        z[is.na(newx) | (newx < 1e-5)] <- '-'
        return(z)
      }
    }, '2' = { # [.001, .01)
      \(newx) {
        z <- label_number(scale = 1e3, suffix = '\u2030', accuracy = .1)(newx)
        z[is.na(newx) | (newx < 1e-4)] <- '-'
        return(z)
      }
    }, '3' = { # [.01, 1)
      \(newx) {
        z <- label_number(scale = 1e2, suffix = '%', accuracy = .1)(newx)
        z[is.na(newx) | (newx < 1e-3)] <- '-'
        return(z)
      }
    }, '4' = { # [1, Inf) 
      \(newx) {
        z <- label_number(accuracy = .2)(newx)
        z[is.na(newx) | (newx < 1e-2)] <- '-'
        return(z)
      }
    }, stop('shouldnt come here'))
  
}


# @param x \link[base]{numeric} \link[base]{matrix}
col_label_bin_ <- function(x, FUN, ...) {
  x |> 
    apply(MARGIN = 2L, FUN = \(i) {
      i |> .label_bin_(FUN(i, ...))()
    }, simplify = FALSE) |>
    do.call(what = cbind) # un-simplify then cbind, to make sure not getting a 'vector' :)
}  





#' @rdname show_cooking
#' @aliases show,equiv-method
#' @export
setMethod(f = show, signature = 'equiv', definition = function(object) {
  object |> format.equiv() |> print()
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
#' @slot flour \linkS4class{equiv}
#' @slot breadFlour \linkS4class{equiv}
#' @slot pastryFlour \linkS4class{equiv}
#' 
#' @slot water \linkS4class{equiv}
#' @slot addedWater \linkS4class{equiv}
#' @slot carbohydrate \linkS4class{equiv}
#' @slot fiber \linkS4class{equiv}
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
#' @slot pumpkinSpice \linkS4class{equiv}
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
  water = 'equiv', addedWater = 'equiv',
  carbohydrate = 'equiv',
  addedStarch = 'equiv',
  flour = 'equiv', breadFlour = 'equiv', pastryFlour = 'equiv',
  rice = 'equiv', glutinousRice = 'equiv',
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
  fiber = 'equiv',
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
  pumpkinSpice = 'equiv',
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
#' @aliases cornBaker-class
#' @export
setClass(Class = 'cornBaker', contains = 'recipeDx', prototype = prototype(
  per = 'Cornmeal\U1f33d'
))


#' @rdname diagnosis
#' @aliases riceBaker-class
#' @export
setClass(Class = 'riceBaker', contains = 'recipeDx', prototype = prototype(
  per = 'Glutinous+Rice\U1f33e Flour'
))

#' @rdname diagnosis
#' @aliases cocoaDx-class
#' @export
setClass(Class = 'cocoaDx', contains = 'recipeDx', prototype = prototype(
  per = 'Alkalized Cocoa'
))

#' @rdname diagnosis
#' @aliases teaDx-class
#' @export
setClass(Class = 'teaDx', contains = 'recipeDx', prototype = prototype(
  per = 'Tea\U1f343'
))

#' @rdname diagnosis
#' @aliases creamcheeseDx-class
#' @export
setClass(Class = 'creamcheeseDx', contains = 'recipeDx', prototype = prototype(
  per = 'Cream Cheese'
))


#' @rdname diagnosis
#' @aliases cookedTexture-class
#' @export
setClass(Class = 'cookedTexture', contains = 'recipeDx', prototype = prototype(
  per = paste0('Serving; ', col_red('Texture Profile'))
))

#' @rdname diagnosis
#' @aliases cookedFlavor-class
#' @export
setClass(Class = 'cookedFlavor', contains = 'recipeDx', prototype = prototype(
  per = paste0('Serving; ', col_red('Flavor Profile'))
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
  equiv_slot <- slt |> lapply(FUN = slot, object = x) # all 'equiv' slots
  fmt_equiv <- equiv_slot |> lapply(FUN = format.equiv)
  
  id <- (lengths(fmt_equiv, use.names = FALSE) > 0L)
  if (!any(id)) return(invisible())
  ret0 <- fmt_equiv[id]
  names(ret0) <- show_endpoint(slt[id])
  
  relat <- vapply(equiv_slot[id], FUN = \(i) {
    if (!length(i@ideal) || is.na(i@ideal)) return(NA_integer_)
    .bincode(i@actual/i@ideal, breaks = c(0, 1/i@margin, i@margin, Inf))
  }, FUN.VALUE = NA_integer_)
  
  if (all(is.na(relat))) {
    ret <- ret0 |> lapply(FUN = `[`, 1L) 
  } else {
    ret <- .mapply(dots = list(ret0, relat), MoreArgs = NULL, FUN = \(x, rel) {
      # i = 3L; x = ret0[[i]]; rel = relat[[i]]
      x[1L] <- switch(as.character(rel), '1' = { # actual < ideal
        (x[1L]) |> col_br_blue() |> style_bold()
      }, 'NA' =, '2' = { # actual == ideal
        (x[1L]) |> col_grey()
      }, '3' = { # actual > ideal
        (x[1L]) |> col_br_red() |> style_bold()
      })
      return(x)
    })
    names(ret) <- names(ret0) # base::.mapply drops names
  }

  return(invisible(do.call(cbind, args = ret)))
  
}



show_endpoint <- function(x) {
  x[x == 'addedWater'] <- '+water'
  x[x == 'addedSugar'] <- '+sugar'
  x[x == 'addedStarch'] <- '+starch'
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
  x[x == 'greenPeppercornOil'] <- 'ppcOil' |> col_br_white() |> bg_green()
  x[x == 'pastryFlour'] <- '\U0001f370flour'
  x[x == 'breadFlour'] <- '\U0001f35eflour'
  return(x)
}




#' @rdname show_cooking
#' @aliases show,recipeDx-method
#' @export
setMethod(f = show, signature = 'recipeDx', definition = function(object) {
  ret <- format.recipeDx(object)
  if (!length(ret)) return(invisible())
  object@per |> 
    sprintf(fmt = '\u214c %s\n') |> 
    style_bold() |>
    bg_br_yellow() |>
    cat()
  print_ANSI_matrix(ret)
  cat('\n')
})





