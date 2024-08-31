

#' @title Print \link[base]{matrix} with ANSI Escape Sequences
#' 
#' @description
#' Print \link[base]{matrix} with ANSI escape sequences in the body
#' and/or \link[base]{dimnames}.
#' 
#' @param x \link[base]{character} \link[base]{matrix}
#' 
#' @returns
#' Function [print_ANSI_matrix] does not have a returned value.
#' 
#' @seealso `colorDF::colorDF`
#' 
#' @importFrom cli ansi_strip
#' @export
print_ANSI_matrix <- function(x) {
  
  # does not work well with 'nutrition_'
  
  if (!is.matrix(x) || !is.character(x)) stop('only dealing with \'character\' \'matrix\', for now')
  
  # names(dimnames(x)) # not considered yet..
  
  d <- dim(x)
  dnm <- dimnames(x)
  dnm0 <- lapply(dimnames(x), FUN = ansi_strip)
  
  x_ <- array(x, dim = d, dimnames = NULL)
  x0 <- array(ansi_strip(x), dim = d, dimnames = NULL)
  
  if (!length(dnm)) { # no row-name, no col-name
    rnm <- NULL
    x1 <- x0 # ANSI-stripped body
  } else if (!length(dnm[[1L]])) { # no row-name
    rnm <- NULL
    x1 <- rbind(dnm0[[2L]], x0) # ANSI-stripped col-names AND body
  } else if (!length(dnm[[2L]])) { # no col-name
    rnm <- dnm0[[1L]] # ANSI-stripped row-names
    rnm_ANSI <- dnm[[1L]] # original row-names
    x1 <- x0 # ANSI-stripped body
  } else {
    rnm <- c('', dnm0[[1L]]) # ANSI-stripped row-names
    rnm_ANSI <- c('', dnm[[1L]]) # original row-names
    x1 <- rbind(dnm0[[2L]], x0) # ANSI-stripped col-names AND body
    x1_ANSI <- rbind(dnm[[2L]], x_)
  }
  
  rnm_prt <- if (length(rnm)) {
    if (FALSE) {
      paste0(rnm, ws_justify(rnm))
    } # to check if [ws_justify] is correct
    paste0(rnm_ANSI, ws_justify(rnm))
  } # else NULL
  
  x_prt <- lapply(seq_len(d[2L]), FUN = function(i) {
    paste0(ws_justify(x1[,i]), x1_ANSI[,i])
  })
  
  prt <- .mapply(FUN = paste, dots = c(list(rnm_prt), x_prt), MoreArgs = list(collapse = ' '))
  lapply(prt, FUN = cat, sep = '\n')
  return(invisible())
  
}


#' @title Whitespace for Left/Right Justification
#' 
#' @description
#' Whitespace padded by \link[base]{format.default}.
#' 
#' @param x an R object of \link[base]{mode} \link[base]{character}
#' 
#' @note
#' See the code of \link[base]{format.default}: the operation is determined
#' by \link[base]{mode} of `x`.
#' 
#' @returns
#' Function [ws_justify] returns a \link[base]{character} \link[base]{vector}.
#' 
#' @examples
#' ws_justify(c('a', 'abc', 'ab'))
#' ws_justify(matrix(c('a', 'abc', 'ab', 'abcd'), nrow = 2L))
#' 
#' if (FALSE) {
#'  '\u5b87'; nchar('\u5b87') # 1
#'  '\U0001f375'; nchar('\U0001f375') # 1
#'  '\U0001f1fa\U0001f1f8'; nchar('\U0001f1fa\U0001f1f8') # 2
#' }
#'
#' if (FALSE) {
#'  nchar(format.default(c('a', 'abc', 'ab'), justify = 'right')) # all same :)
#'  (x0 = c('tea\U0001f375', 'apple', 'USA\U0001f1fa\U0001f1f8',
#'    '\U0001f1fa\U0001f1f8 and \U0001f1e8\U0001f1e6'))
#'  nchar(x0)
#'  (x1 = format.default(x0, justify = 'right'))
#'  nchar(x1) # not all same!!
#' } # cannot trust ?base::format.default with unicode!!
#' 
#' @importFrom stringi stri_dup
#' @export
ws_justify <- function(x) {
  
  if (FALSE) {
    # x0 <- format.default(x, justify = 'right') # 'left' also okay, but not 'centre' or 'none'!
    # return(gsub(pattern = '\\S', replacement = '', x = x0, perl = TRUE))
    ## '\\S': regex for non-whitespace character
    ## keeps attributes like 'matrix'; much slower than ?stringi::stri_dup, but I don't have to import \pkg{stringi}
  } ## cannot trust ?base::format.default with unicode!!!
  
  n_ <- nchar(x)
  stri_dup(str = ' ', times = max(n_) - n_)
  
}


if (FALSE) {
  library(microbenchmark)
  library(stringr) # stringr::str_dup
  library(stringi) # stringi::stri_dup
  n = 1e3L
  microbenchmark(
    paste(rep(' ', times = n), collapse = ''), 
    str_dup(' ', times = n), 
    stri_dup(' ', times = n)
  )
}

