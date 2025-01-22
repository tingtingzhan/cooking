
#' @title Coconut Drink
#' 
#' @name coconutdrink
#' @export
caffeCoconut <- function() new(
  Class = 'recipe', 
  alias = '\u751f\u6930\U1f965\u62ff\u94c1',
  drymilk = c(Carnation = 14),
  #coffee_Tbsp = c(NescafeGold_espresso_blonde = 1.4), # coffee too strong
  coffee_Tbsp = c(NescafeGold_espresso_blonde = 1), # try
  cocoa_tsp = c(KingArthur_Bensdorp = 1),
  coconut = c(Freenow_coconutmilk = 225),
  water = 185,
  Stanley14 = Stanley14(note = 'I cannot eat too much coconut butter!!'),
  date = as.Date('2025-01-22'),
  pros = c(
    'almost tastes the same as commercial version!'
  )
)






if (FALSE) {
  # to salvage a failed experiment
  
  caffeCoconut_try2 <- function() new(
    Class = 'recipe', 
    alias = '\u751f\u6930\U1f965\u62ff\u94c1',
    drymilk = c(Carnation = 14),
    coffee_Tbsp = c(NescafeGold_espresso_blonde = 1.4), # coffee too strong
    cocoa_tsp = c(KingArthur_Bensdorp = 1),
    coconut = c(Freenow_coconutmilk = 225),
    water = 185,
    Stanley14 = Stanley14(note = 'I cannot eat too much coconut butter!!'),
    date = as.Date('2025-01-21'),
    pros = c(
      'almost tastes the same as commercial version!'
    )
  )
  
  
  (tmp = caffeCoconut_try2()/431.2*334)
  caffeCoconut() - tmp
  
  tmp2 = tmp
  tmp2@alias = 'corrected caffeCoconut'
  tmp2@cons = character()
  tmp2@coconut = sum_by_name(tmp@coconut, 143)
  tmp2@water = sum_by_name(tmp@water, 27)
  tmp2
  
  diagnose(caffeCoconut, tmp2) # quite close!  nice!
  
}

