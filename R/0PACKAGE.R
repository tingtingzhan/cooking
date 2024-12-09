

#' @title cooking
#' 
#' @description ..
#' 
#' @importFrom cli col_red col_green col_yellow col_blue col_magenta col_cyan col_white col_grey
#' @importFrom cli col_br_red col_br_green col_br_blue col_br_magenta col_br_white
#' @importFrom cli bg_black bg_green bg_blue
#' @importFrom cli bg_br_red bg_br_green bg_br_yellow bg_br_blue bg_br_magenta bg_br_cyan
#' @importFrom cli style_hyperlink style_bold
#' @importFrom cli cli_text make_ansi_style
#' @importFrom methods callNextMethod getSlots initialize new setClass prototype setMethod show signature slot slot<- slotNames
#' @keywords internal
'_PACKAGE'


# black: 0
# red: 1
# green: 2
# yellow: 3
# blue: 4
# magenta: 5
# cyan: 6
# white: 7
# grey: '\033[90m'

if (FALSE) {
  cat('\033[38;5;166mabc\033[0m') 
  # do not know how to do customized ANSI color by RGB using \CRANpkg{cli} functions
}

if (FALSE) {
  #?cli::cli_text # does not have a returned value
  cli::cli_text('Tingting\'s {.run [soymilk](cooking::soymilk())}')
  
  ret0 <- cli:::glue_cmd('Tingting\'s {.run [soymilk](cooking::soymilk())}')
  class(ret0) # cli_glue_delay
  cli:::cli__message(type = 'text', args = list(text = ret0))
  
}
