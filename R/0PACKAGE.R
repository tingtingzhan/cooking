

#' @import cli
#' @import methods
#' @keywords internal
'_PACKAGE'



col_orchid4 <- make_ansi_style('orchid4')

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
  '\033[38;5;166mabc\033[0m' |> cat() 
  # do not know how to do customized ANSI color by RGB using \CRANpkg{cli} functions
}

if (FALSE) {
  
  # read carefully!!!
  # https://cli.r-lib.org/reference/links.html
  # \CRANpkg{cli} https://cran.r-project.org/src/contrib/Archive/cli/
  # is very actively updated!!!
  
  #?cli::cli_text # does not have a returned value
  cli::cli_text('Tingting\'s {.run [soymilk](cooking::soymilk())}')
  
  cli::cli_text('Tingting\'s {.run [rnorm(10L)](stats::rnorm(10L))}') # no!
  cli::cli_text('Tingting\'s {.run [load_all](devtools::load_all())}') # yes
  cli::cli_text('Tingting\'s {.run [load_all](devtools::?load_all)}') # no!
  
  ret0 <- cli:::glue_cmd('Tingting\'s {.run [soymilk](cooking::soymilk())}')
  class(ret0) # cli_glue_delay
  cli:::cli__message(type = 'text', args = list(text = ret0))
  
}
