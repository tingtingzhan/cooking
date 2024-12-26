
#' @title Suggested \linkS4class{recipe} of \linkS4class{nutrition}
#' 
#' @param object see **Usage**
#' 
#' @param ... ..
#' 
#' @returns
#' S3 generic [suggested] returns a \linkS4class{recipe}.
#' 
#' @name suggested
#' @export
suggested <- function(object, ...) UseMethod(generic = 'suggested')


#' @rdname suggested
#' @export suggested.function
#' @export
suggested.function <- function(object, ...) {
  #suggested(object(), ...)
  cl <- match.call()
  if (is.symbol(cl$object)) {
    # to pass correct call to [suggested.nutrition]
    cl[[1L]] <- quote(suggested)
    cl$object <- as.call(list(cl$object)) # wow!
    return(eval(cl))
  } 
  
  # will not pass correct call to [suggested.nutrition]
  # when used in lapply(., FUN = suggested)
  # .. when `cl$object` will be `X[[i]]`
  return(suggested(object())) 
  
}  
  
#' @rdname suggested
#' @export suggested.nutrition
#' @export
suggested.nutrition <- function(object, ...) {
  suggestion <- object@suggestion
  if (!length(suggestion)) return(invisible())
  flavor <- object@servingGram
  nm <- as.character(object@call)
  names(flavor) <- nm
  do.call(what = new, args = c(list(
    Class = 'recipe', 
    #alias = sprintf(fmt = 'Suggested {.run [%s](cooking::%s())}', style_bold(col_yellow(nm)), nm),
    alias = sprintf(fmt = 'Suggested %s', style_bold(make_ansi_style('sienna')(nm))),
    flavor = flavor
  ), suggestion))
}


