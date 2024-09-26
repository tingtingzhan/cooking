


#' @title A Patch to \link[graphics]{strwidth} for Unicode Symbols
#' 
#' @description ..
#' 
#' @param x \link[base]{character} \link[base]{vector}
#' 
#' @returns
#' Function [strwidth_] returns a \link[base]{numeric} \link[base]{vector}.
#' 
#' @examples
#' \dontrun{
#' # error on ?devtools::check # do not know why
#' # conversion failure on 'unicode' in 'mbcsToSbcs'
#' (x = 'a\u5b57\U1f375\U1f1fa\U1f1f8\U1f35e\U1f1e8\U1f1e6')
#' strwidth_(x)
#' }
#' 
#' \dontrun{
#' # unicode symbols
#' (x0 = c('a', '\u5b57', '\U1f375', '\U1f1fa\U1f1f8'))
#' nchar(x0)
#' #strsplit(x0, split = '')
#' stringi::stri_enc_mark(x0) # nah
#' stringi::stri_enc_isutf16be(x0) # um
#' strwidth(x0, units = 'inches') 
#' # ascii and utf8 are correct
#' # unicode 6.0 (https://www.unicode.org/versions/Unicode6.0.0/) is wrong
#' }
#' @importFrom graphics strwidth
#' @importFrom stringi stri_enc_mark stri_enc_isutf16be stri_enc_isutf16le stri_enc_isutf32be stri_enc_isutf32le
#' @export
strwidth_ <- function(x) {
  
  if (!is.character(x) || length(x) != 1L) stop('`x` must be len-1 character')
  if (is.na(x)) return(NA_real_)
  if (!nchar(x)) return(0)
  
  x0 <- strsplit(x, split = '')[[1L]]
  if (FALSE) {
    strwidth(' ', units = 'inches') # 0.04630534
    strwidth('a', units = 'inches') # 0.09269206
    # do not understand why..
  }
  x0[x0 == ' '] <- 'a' # ad hoc patch
  
  y0 <- strwidth(x0, units = 'inches')
  
  enc <- stri_enc_mark(x0)
  if (all(enc == 'ASCII')) return(sum(y0))
  
  utf32 <- stri_enc_isutf32be(x0) | stri_enc_isutf32le(x0)
  if (any(utf32)) stop('utf32 not supported, for now')
  
  utf16 <- stri_enc_isutf16be(x0) | stri_enc_isutf16le(x0)
  if (any(utf16)) {
    # https://en.wikipedia.org/wiki/Regional_indicator_symbol
    # '\U1F1E6' as A; '\U1F1FF' as Z
    regInd0 <- sprintf(fmt = '%X', as.hexmode('1F1E6'):as.hexmode('1F1FF'))
    regInd <- intToUtf8(paste0('0x', regInd0), multiple = TRUE)
    id <- which(x0 %in% regInd)
    # consecutive `id` be regarded as a country, whether it is indeed a country or not!
    x1 <- if (nid <- length(id)) {
      if (nid %% 2) stop('length(id) must be even')
      id_rm <- id[seq_len(nid/2) * 2]
      utf16 <- utf16[-id_rm]
      x0[-id_rm]
    } else x0
  } else x1 <- x0
  
  y1 <- strwidth(x1, units = 'inches')
  y1[utf16] <- y1[utf16] / 2
  sum(y1)
  
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
#' \dontrun{
#' # cannot trust ?base::format.default with unicode!!
#' nchar(format.default(c('a', 'abc', 'ab'), justify = 'right')) # all same :)
#' (x1 = c('tea\U1f375', 'apple', 'USA\U1f1fa\U1f1f8',
#'    '\U1f1fa\U1f1f8 and \U1f1e8\U1f1e6'))
#' nchar(x1)
#' (x1a = format.default(x1, justify = 'right'))
#' nchar(x1a) # not all same!!
#' } 
#' 
#' @importFrom stringi stri_dup
#' @export
ws_justify <- function(x) {
  
  if (FALSE) {
    x0 <- format.default(x, justify = 'right') # 'left' also okay, but not 'centre' or 'none'!
    return(gsub(pattern = '\\S', replacement = '', x = x0, perl = TRUE))
    ## '\\S': regex for non-whitespace character
    ## keeps attributes like 'matrix'; much slower than ?stringi::stri_dup, but I don't have to import \pkg{stringi}
  } ## cannot trust ?base::format.default with unicode!!!
  
  if (TRUE) {
    n_ <- nchar(x)
    return(stri_dup(str = ' ', times = max(n_) - n_))
  }
  
  if (FALSE) {
    strw <- vapply(x, FUN = strwidth_, FUN.VALUE = NA_real_)
    strw_a <- strwidth('a', units = 'inches') # do not use `' '` 
    stri_dup(str = ' ', times = round((max(strw) - strw) / strw_a))
  } # unicode error when ?devtools::check # conversion failure in 'mbcsToSbcs'
  
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
