

#' @title diagnose
#' 
#' @description
#' ..
#' 
#' @param ... objects convertible to \linkS4class{nutrition}
#' 
#' @export
diagnose <- \(...) {
  
  # dots <- lapply(dots, FUN = nutrition) # mess up with call later
  dots <- as.list(match.call())[-1L] |>
    lapply(FUN = \(x) {
      return(eval(call(name = 'nutrition', x)))
    })
  
  cat('\n')
  'Nutrition\n' |> bg_br_yellow() |> cat()
  dots |>
    nutrition_(dots = _) |>
    print.nutrition_()
  
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




