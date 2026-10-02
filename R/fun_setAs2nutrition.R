

setAs(from = 'raw.', to = 'nutrition', def = \(from) {
  
  grams <- from |> 
    as.double.raw.(detail = TRUE, rel = FALSE)
  
  info <- grams |>
    names() |> 
    lapply(FUN = \(i) {
      eval(call(name = i))
    }) |>
    do.call(what = nutritionlist, args = _) |>
    as.matrix.nutritionlist(incl_usd = TRUE, incl_calorie = TRUE, rel = TRUE)
  
  z <- crossprod(grams, info)[1, , drop = TRUE]
  
  new(
    Class = 'nutrition',  
    name = character(),
    servingGram = sum(grams),
    usd = z['usd'] |> unname(),
    calorie = z['calorie'] |> unname(),
    carbohydrate = z['carbohydrate'] |> unname(),
    fiber = z['fiber'] |> unname(),
    sugar = z['sugar'] |> unname(),
    addedSugar = max(0, z['addedSugar']) |> unname(),
    alcohol = z['alcohol'] |> unname(),
    sodium = z['sodium'] |> unname(),
    fat = z['fat'] |> unname(),
    cholesterol = z['cholesterol'] |> unname(),
    protein = z['protein'] |> unname(),
    water = z['water'] |> unname()
  )
  
})







setAs(from = 'recipe', to = 'nutrition', def = \(from) {
  
  x <- from; from <- NULL
  
  nutri <- x |>
    as(Class = 'raw.') |>
    as(Class = 'nutrition')
  
  nutri@portion <- x@portion # default or not
  
  waterLost <- x@tool |>
    lapply(FUN = \(i) i@waterLost) |> 
    unlist(use.names = FALSE) |>
    sum()
  
  nutri@name <- x@alias
  # `numeric() - 3` returns `numeric()` 
  nutri@servingGram <- nutri@servingGram - waterLost - sum(x@sugarLost)
  nutri@sugar <- nutri@sugar - sum(x@sugarLost)
  nutri@addedSugar <- if (length(nutri@addedSugar)) {
    max(0, nutri@addedSugar - sum(x@sugarLost))
  } else numeric()
  nutri@water <- max(0, nutri@water - waterLost) # tzh has not put @water info for all \linkS4class{nutrition} objects
  
  return(nutri)

})



