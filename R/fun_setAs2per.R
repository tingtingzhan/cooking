

setAs(from = 'raw.', to = 'per', def = \(from) {

  # focus on material, *not* on nutrition!!

  from |>
    as(Class = 'raw.') |>
    as.double.raw.(detail = FALSE, rel = TRUE) |>
    new(Class = 'equiv', current = _) |>
    new(Class = 'per', per = 'Raw Material', equiv = _)
  
})
    
    
    
    

    


setOldClass(Classes = 'perlist') # `'perlist'` is S3
setAs(from = 'recipe', to = 'perlist', def = \(from) {
  # a large part of 
  # setAs(from = 'recipe', to = 'nutrition')
  # should be here!!!!
})

