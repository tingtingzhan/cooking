

#' @title cooking
#' 
#' @description ..
#' 
#' @importFrom cli col_red col_green col_yellow col_magenta col_grey
#' @importFrom cli col_br_red col_br_green col_br_blue col_br_magenta col_br_white
#' @importFrom cli bg_black bg_green
#' @importFrom cli bg_br_green bg_br_yellow bg_br_magenta
#' @importFrom cli style_hyperlink style_bold
#' @importFrom cli cli_text make_ansi_style
#' @importFrom methods callNextMethod getSlots initialize new setClass setMethod show signature slot slot<- slotNames
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

# see
# cli:::ansi_fg_r
# cli:::ansi_bg_r
# ?cli::ansi_palettes

# illegal use of un-exported functions
glue_cmd <- cli:::glue_cmd
cli__message <- cli:::cli__message
if (FALSE) {
  #?cli::cli_text # does not have a returned value
  cli::cli_text('Tingting\'s {.run [soymilk](cooking::soymilk())}')
  
  ret0 <- cli:::glue_cmd('Tingting\'s {.run [soymilk](cooking::soymilk())}')
  class(ret0) # cli_glue_delay
  cli:::cli__message(type = 'text', args = list(text = ret0))
}
