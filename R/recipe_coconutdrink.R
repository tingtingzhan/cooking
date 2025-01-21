
#' @title Coconut Drink
#' 
#' @name coconutdrink
#' @export
caffeCoconut <- function() new(
  Class = 'recipe', 
  alias = '\u751f\u6930\u62ff\u94c1',
  drymilk = c(Carnation = 20),
  coffee_Tbsp = c(NescafeGold_espresso_blonde = 2),
  cocoa_tsp = c(KingArthur_Bensdorp = 1.5),
  coconut = c(Freenow_coconutmilk = 320),
  water = 265,
  date = as.Date('2025-01-21'),
  pros = c(
    'almost tastes the same as commercial version!'
  )
)






if (FALSE) {
  # to salvage a failed experiment
  
  caffeCoconut_try1 <- function() new(
    Class = 'recipe', 
    alias = 'failed caffeCoconut',
    drymilk = c(Carnation = 30),
    coffee_tsp = c(NescafeGold_espresso_blonde = 4*2),
    cocoa_tsp = c(KingArthur_Bensdorp = 1*2),
    coconut = c(Freenow_coconutmilk = 220),
    water = 350,
    cons = c(
      'coffee too strong',
      'coconut not enough'
    )
  )
  
  (tmp = caffeCoconut_try1()/614*334)
  caffeCoconut()*.82 - tmp
  
  tmp2 = tmp
  tmp2@alias = 'corrected caffeCoconut'
  tmp2@cons = character()
  tmp2@coconut = sum_.(tmp@coconut, 143)
  tmp2@water = sum_.(tmp@water, 27)
  tmp2
  
  diagnose(caffeCoconut, tmp2) # quite close!  nice!
  
}

