

#' @title Poultry \linkS4class{skinCoat}
#' 
#' @name skinCoat
#' @aliases skinCoat-class
#' @export
setClass(Class = 'skinCoat', contains = 'recipe', prototype = prototype(
  portion = c('whole duck\U1f986, 3-3.5lb' = 15)
))



#' @rdname skinCoat
#' @export
duck_coat <- function() new(
  Class = 'skinCoat',
  alias = 'Duck Skin Coating',
  
  syrup = c(TraderJoes_date = 9), # confirmed
  liqueur = c(Wegmans_Marsala = 6), # confirmed
  
  date = as.Date('2025-02-15'),
  review = c(
    paste(sprintf(
      fmt = '{.run [%s](cooking::%s())}', 
      'TraderJoes_date_syrup' |> make_ansi_style('sienna')() |> style_bold(),
      'TraderJoes_date_syrup'
    ), 'is slightly too dark')
  ),
  pros = c('took away all gamey flavor!!')
  
)
