
setGeneric(name = '%in%', 
           where = asNamespace('cooking'),
           useAsDefault = base::`%in%`)


#' @title `S4` `%in%`
#' 
#' @param x,table ..
#' 
#' @aliases %in%,spice,raw.-method
#' @export
setMethod(f = '%in%', signature = c(x = 'spice', table = 'raw.'), definition = \(x, table) {
  
  ptn <- x@call |> 
    as.character() |>
    sprintf(fmt = '_%s$')
  
  length(table@spice) && grepl(pattern = ptn, x = names(table@spice))
  
})

