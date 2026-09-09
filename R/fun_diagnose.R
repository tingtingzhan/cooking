

#' @title Diagnose Multiple 
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{nutrition}
#' 
#' @export
diagnose <- \(...) {
  
  dots <- list(...) |>
    lapply(FUN = as, Class = 'nutrition')
  
  cat('\n')
  'Nutrition\n' |> bg_br_yellow() |> cat()
  dots |>
    summary_nutritionlist() |>
    print() # print.summary_nutritionlist
  
  names(dots) <- dots |>
    vapply(FUN = slot, name = 'name', FUN.VALUE = NA_character_)
  
  for (which in c(
    'perAllPurposeFlr', 'perPastryFlr', 'perBreadFlr', 
    'perCornmeal', 'perRiceFlr', 
    'perCocoa', 'perTea', 'perCreamCheese', 'perRaw'
  )) {
    dots |>
      lapply(FUN = attr, which = which, exact = TRUE) |>
      print_perlist()
  }
  
  return(invisible())
  
}




