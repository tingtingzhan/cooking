
# illegal use of un-exported functions
#glue_cmd <- cli:::glue_cmd
# cli__message <- cli:::cli__message
#cli__message_create <- cli:::cli__message_create
#cli__message_emit <- cli:::cli__message_emit

if (FALSE) {
  cli::cli_text('Tingting\'s {.run [soymilk](cooking::soymilk())}')
  
  ret0 <- cli:::glue_cmd('Tingting\'s {.run [soymilk](cooking::soymilk())}')
  class(ret0) # cli_glue_delay
  # inside ?cli:::cli__message
  ret1 = cli:::cli__message_create(type = 'text', list(text = ret0))
  class(ret1)
  getOption("cli.record") # default NULL
  cli:::cli__message_emit(ret1)
  cli:::cli__default_handler(ret1)
  getOption("cli.default_handler") # default NULL
  cli:::cli_server_default_safe(ret1)
}




#' @title Style URL
#' 
#' @param url_ \link[base]{character} scalar or \link[base]{vector}
#' 
#' @param text_ (optional) \link[base]{character} scalar or \link[base]{vector}
#' 
#' @references
#' \url{https://github.com/rstudio/rstudio/issues/1941}
#' 
#' @examples
#' cat(styleURL(c('www.google.com', 'www.apple.com')), sep = '\n')
#' 
#' @importFrom cli style_hyperlink
#' @export
styleURL <- function(url_, text_) {
  
  if (!length(url_)) return(invisible())
  
  if (!is.character(url_) || anyNA(url_) || !all(nzchar(url_))) stop('illegal `url_`')
  
  url_ok <- grepl(pattern = '\033]8;', x = url_)
  if (all(url_ok)) return(url_)
  
  url__ <- url_[!url_ok]
  id <- !grepl('^https://|^http://', x = url__)
  if (any(id)) url__[id] <- paste0('https://', url__[id])
  
  if (missing(text_) || !length(text_)) {
    text_ <- gsub('^https://|^http://', replacement = '', x = url__)
  }
  if (!is.character(text_) || length(text_) != length(url__) || anyNA(text_) || !all(nzchar(text_))) stop('illegal reference name')
  
  url_[!url_ok] <- style_hyperlink(text = text_, url = url__)
  #return(unclass(url_))
  return(url_)
  
}


