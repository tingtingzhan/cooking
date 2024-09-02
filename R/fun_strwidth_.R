


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