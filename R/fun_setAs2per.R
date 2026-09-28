

setAs(from = 'raw.', to = 'per', def = \(from) {

  # focus on material, *not* on nutrition!!

  x <- from; from <- NULL
  
  z <- x |> 
    as.double.raw.() |>
    sum() # total raw weight
  
  new(
    Class = 'per', 
    per = 'Raw Material', 
    equiv = new(Class = 'equiv', current = c(
      ssmOil = x['_sesame_oil$'] |> sum(),
      rattanPpOil = x['_rattanPepper_oil$'] |> sum(),
      bkPwd = x@bakingPowder |> sum(),
      'NaHCO\u2083' = x@NaHCO3 |> sum(),
      msg = x@msg |> sum(),
      drymilk = x['_drymilk$'] |> sum(),
      tea = x@tea |> sum(),
      creamChz = x['_creamCheese$'] |> sum(),
      puree = x@puree |> sum(), 
      matcha = x@matcha |> sum(),
      beet = x['_beet_pulv$'] |> sum(),
      ginger = x['_ginger$'] |> sum(),
      cumin = x['_cumin$'] |> sum(),
      cilantro = x['_cilantro$'] |> sum(),
      garlic = x['_garlic$'] |> sum(),
      onion = x['_onion$'] |> sum(),
      whitePp = x['_whitePepper$'] |> sum(),
      blackPp = x['_blackPepper$'] |> sum(),
      turmeric = x['_turmeric$'] |> sum(),
      cinnamon = x['_cinnamon$'] |> sum(),
      paprika = x['_paprika$'] |> sum(),
      coriander = x['_coriander$'] |> sum(),
      # chiliMix = x@chiliMix |> sum(),
      '\U0001f383spice' = x['_pumpkinSpice$'] |> sum(),
      #curry = x@curry |> sum(),
      sesame = x@blackSesame |> sum(),
      coconutFlr = x['_coconutFlr$'] |> sum(),
      coconutBar = x['_coconutBar$'] |> sum(),
      cocoa = x@cocoa |> sum(),
      coffee = x@coffee |> sum(),
      acai = x['_acai_pulv$'] |> sum(),
      'starch+' = x@starch |> sum(),
      gelatin = x@gelatin |> sum()
    ) / z))
})
    
    
    
    

    


setOldClass(Classes = 'perlist') # `'perlist'` is S3
setAs(from = 'recipe', to = 'perlist', def = \(from) {
  # a large part of 
  # setAs(from = 'recipe', to = 'nutrition')
  # should be here!!!!
})

