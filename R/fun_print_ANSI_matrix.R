

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
  
  if (!is.matrix(x) || !is.character(x)) stop('only dealing with \'character\' \'matrix\', for now')
  
  # names(dimnames(x)) # not considered yet..
  
  d <- dim(x)
  dnm <- dimnames(x)
  dnm0 <- lapply(dimnames(x), FUN = ansi_strip)
  
  x_ <- array(x, dim = d, dimnames = NULL)
  x0 <- array(ansi_strip(x), dim = d, dimnames = NULL)
  
  if (!length(dnm)) { # no rowname, no colname
    rnm <- NULL
    x1 <- x0 # body, no ANSI
  } else if (!length(dnm[[1L]])) { # no rowname
    rnm <- NULL
    x1 <- rbind(dnm0[[2L]], x0) # col names AND body, no ANSI
  } else if (!length(dnm[[2L]])) { # no colname
    rnm <- dnm0[[1L]] # row names, no ANSI
    rnm_ANSI <- dnm[[1L]]
    x1 <- x0 # body, no ANSI
  } else {
    rnm <- c('', dnm0[[1L]]) # row names, no ANSI
    rnm_ANSI <- c('', dnm[[1L]]) # row names, ANSI
    x1 <- rbind(dnm0[[2L]], x0) # col names AND body, no ANSI
    x1_ANSI <- rbind(dnm[[2L]], x_)
  }
  
  rnm_prt <- if (length(rnm)) {
    paste0(rnm_ANSI, ws_justify(rnm))
  } # else NULL
  
  x_prt <- lapply(seq_len(d[2L]), FUN = function(i) {
    paste0(ws_justify(x1[,i]), x1_ANSI[,i])
  })
  
  prt <- .mapply(FUN = c, dots = c(list(rnm_prt), x_prt, list('\n')), MoreArgs = NULL)
  lapply(prt, FUN = cat, sep = ' ')
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
#' @export
ws_justify <- function(x) {
  x0 <- format.default(x, justify = 'right') # 'left' also okay, but not 'centre' or 'none'!
  
  #vapply(nchar(x0) - nchar(x), FUN = function(i) paste(rep(' ', times = i), collapse = ''), FUN.VALUE = '')
  
  # @importFrom stringi stri_dup  
  #stri_dup(str = ' ', times = nchar(x0) - nchar(x))
  
  gsub(pattern = '\\S', # non-whitespace character
       replacement = '', x = x0, perl = TRUE)
  # keeps attributes like 'matrix'
  # much slower than ?stringi::stri_dup, but I don't have to import \pkg{stringi}
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

