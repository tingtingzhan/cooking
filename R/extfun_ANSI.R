
#' @title An Alternative \link[base]{nchar}
#' 
#' @param x \link[base]{character} \link[base]{vector}
#' 
#' @references
#' \url{https://github.com/rstudio/rstudio/issues/3100}
#' what the author notices about 5/3 is very accurate!!
#' 
#' @examples
#' x10 = '\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u96f6'
#' x20 = '1234567890'
#' nchar(x10, type = 'width')
#' nchar(x20, type = 'width')
#' cat(x10, '\n', x20, sep = '')
#' x1 = x10 |> substr(start = 1L, stop = 6L) |> stringi::stri_dup(times = 20L)
#' x2 = x20 |> stringi::stri_dup(times = 20L)
#' cat(x1, '\n', x2, sep = '')
#' nchar_width(x1)
#' nchar_width(x2)
#' 
#' x = c('tea\U1f375', '\U1f1fa\U1f1f8 and \U1f1e8\U1f1e6')
#' nchar_width(x)
#' 
#' @importFrom stringi stri_enc_mark
#' @importFrom stringr boundary str_split
#' @export
nchar_width <- \(x) {
  x |>
    str_split(pattern = boundary(type = 'character')) |>
    vapply(FUN = \(i) {
      enc <- stri_enc_mark(i)
      if (!all(enc %in% c('ASCII', 'UTF-8'))) stop('unknown encoding')
      utf8 <- (enc == 'UTF-8')
      sum(!utf8) + sum(utf8) * (5/3)
    }, FUN.VALUE = NA_real_)
}








#' @title Print \link[base]{matrix} with ANSI Escape Sequences
#' 
#' @description
#' Print \link[base]{matrix} with ANSI escape sequences in the body
#' and/or \link[base]{dimnames}.
#' 
#' @param x \link[base]{character} \link[base]{matrix}
#' 
#' @returns
#' The function [print_ANSI_matrix] does not have a returned value.
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
  dnm0 <- dnm |> lapply(FUN = ansi_strip)
  
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
  
  x_prt <- lapply(seq_len(d[2L]), FUN = \(i) {
    paste0(ws_justify(x1[,i]), x1_ANSI[,i])
  })
  
  prt <- .mapply(FUN = paste, dots = c(list(rnm_prt), x_prt), MoreArgs = list(collapse = ' '))
  lapply(prt, FUN = cat, sep = '\n')
  # ?cli::cli_text does not respect duplicate spaces, as of 2026-04-08
  # cli::cli_text('a           b')
  # lapply(prt, FUN = cli_text, sep = '\n')
  return(invisible())
  
}


#' @title Padded Whitespace for Left/Right Justification
#' 
#' @param x an R object of \link[base]{mode} \link[base]{character}
#' 
#' @note
#' See the code of \link[base]{format.default}: the operation is determined
#' by \link[base]{mode} of `x`.
#' 
#' @returns
#' The function [ws_justify()] returns a \link[base]{character} \link[base]{vector}.
#' 
#' @examples
#' ws_justify(c('a', 'abc', 'ab'))
#' ws_justify(matrix(c('a', 'abc', 'ab', 'abcd'), nrow = 2L))
#' 
#' (x = c('apple', 'tea\U1f375', '\U1f1fa\U1f1f8 and \U1f1e8\U1f1e6'))
#' paste0(ws_justify(x), x) |> cat(sep = '\n')
#' (x1 = stringi::stri_dup(x, times = 20L))
#' paste0(ws_justify(x1), x1) |> cat(sep = '\n')
#' 
#' @importFrom stringi stri_dup
#' @export
ws_justify <- function(x) {
  n_ <- nchar_width(x)
  stri_dup(str = ' ', times = round(max(n_) - n_))
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
