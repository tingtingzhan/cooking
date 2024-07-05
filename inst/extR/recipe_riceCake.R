



#' @title \linkS4class{riceCake}
#' 
#' @description ..
#' 
#' @name riceCake
#' @aliases riceCake-class
#' @export
setClass(Class = 'riceCake', contains = 'recipe')




# always sprinkle with corn starch, not with flour!



pumpkin_Bing = if (FALSE) function() new(
  # This wont work, based on my `pumpkin_stickyRice` !!
  Class = 'riceCake', 
  pumpkin = 90, # weigh and confirm
  flavor = c(fourC_panko = 5),
  glutinousRiceFlour = 60, riceFlour = 5, 
  sugar = 10, # 25g originally 
  # drymilk = ???
  note = character(),
  machine = 'Air fryer?',
  youtube = 'pdRdTzqB1Rk',
  review = character()
) else function() new(
  Class = 'riceCake',
  pumpkin = 70,
  flavor = c(fourC_panko = 2),
  glutinousRiceFlour = 50+10, # adding 20g is too much
  sugar = 5, drymilk = 15, 
  machine = list('Robam CT763' = 'Air fryer (water on bottom), 350\u00b0F, 4 min'),
  review = 'may have a 2nd try.  However, air fryer cannot replace deep frying in oil.'
) 





# https://youtu.be/eowMSl0bPGo # only rice flour


