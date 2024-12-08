



# Stassen; headquarter in Sri Lanka.

Stassen_Ceylon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  stassentea = '100-etb-stassen-pure-ceylon-black-tea',
  name = 'Ceylon Black Tea',
  servingGram = 2, # **must** be per-bag!  # servingBag = 1, 
  usd = 12/100, # 2023-11-09
  review = c(
    'Soymilk coagulates -- confirm again',
    'no other better choice yet'
  ))


#' @title Harney & Sons, headquarter in New York
#' 
#' @name harney
#' @export
Harney_UvaHighlands <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], harney = 'uva-highlands', 
  name = 'Uva Highlands',
  servingGram = 454, usd = 20, # 2023-11-09
  superior = 'Harney_Assam')

#' @rdname harney
#' @export
Harney_Assam <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], harney = 'organic-assam',
  name = 'Organic Assam',
  servingGram = 454, usd = 27, # 2023-11-09
  machine = function(x) switch(x, cookie = c('Grind loose leaf tea using Niche Zero, Level 6')),
  review = 'Good base black tea.')

Harney_PuErh <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], harney = 'pu-erh',
  name = 'Pu-Erh',
  servingGram = 454, usd = 26, # 2023-11-09
  machine = function(x) switch(x, cookie = c('Grind loose leaf tea using Niche Zero, Level 6')),
  review = 'Very distinct and delightful aroma when raw.')

Harney_decafCeylon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], harney = 'decaf-ceylon',
  name = 'Decaf Ceylon',
  servingGram = 454, usd = 32) # 2023-11-09

Harney_decafEarlGrey <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], harney = 'decaf-earl-grey',
  name = 'Decaf Earl Grey',
  servingGram = 454, usd = 29) # 2023-11-09

Harney_EarlGreySupreme <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], harney = 'earl-grey-supreme', 
  name = 'Earl Grey Supreme',
  servingGram = 454, usd = 31, # 2023-11-09
  review = 'bergamont too weak, tea too strong')

Harney_LapSangSouChong <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], harney = 'lapsang-souchong',
  name = '\u7acb\u5c71\u5c0f\u79cd Lap Sang Sou Chong',
  servingGram = 454, usd = 28, # 2023-11-09
  machine = function(x) switch(x, cookie = c('Grind loose leaf tea using Niche Zero, Level 6')),
  review = 'Quite an acquired taste.')


# Twinings

Twinings_EarlGrey <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], twinings = 'earl-grey', 
  name = 'Earl Grey',
  wegmans = 24150L, usd = 12.99/100, # 100pcs 2g-bag, Oct 2024
  servingGram = 2)

Twinings_EarlGrey_loose <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], twinings = 'earl-grey-loose-tea',
  name = 'Earl Grey, Loose',
  servingGram = 200, usd = 11.99) # 2023-11-09

Twinings_strongEarlGrey <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], twinings = 'earl-grey-strong',
  name = 'Earl Grey, Extra Strong',
  wegmans = 13354L,
  webstaurant = '110TWNG13541',
  servingGram = 2, usd = 4.99/20, # 20pcs of 2g-bag, 2023-11-16
  review = 'I love!!')

Twinings_decafEarlGrey <- function() new( # no value pack, no loose leaf
  Class = 'nutrition', call = match.call()[[1L]], twinings = 'earl-grey-decaf',
  name = 'Earl Grey Decaf',
  wegmans = 47200L,
  servingGram = 35/20, usd = 4.99/20) # 20pcs of 1.75g-bag, 2023-11-09

Twinings_LadyGrey <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], twinings = 'lady-grey',
  name = 'Lady Grey',
  wegmans = 31226L,
  walmart = '15556242',
  servingGram = 2, usd = 15.99/100, # 100pcs of 2g-bag, 2023-11-09
  review = 'Great for soytea!')
  
Twinings_ultraChai <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], twinings = 'ultra-spice-chai',
  name = 'Ultra Spice Chai',
  wegmans = 49238L,
  webstaurant = '110TWNG07516',
  walmart = '29884542',
  servingGram = 2, usd = 4.99/20, # 20pcs of 2g-bag, 2023-11-13
  review = 'I love!! Great potential for many recipes!!')

Twinings_Darjeeling <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], twinings = 'darjeeling',
  name = '\u09a6\u09be\u09b0\u09cd\u099c\u09bf\u09b2\u09bf\u0982 Darjeeling',
  wegmans = 30993L,
  servingGram = 2, usd = 8.49/50, # 50pcs of 2g-bag, 2023-11-13
  review = 'lacks a signature flavor')
  
Twinings_Ceylon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], twinings = 'ceylon-pure-black',
  name = 'Ceylon Orange Pekoe',
  webstaurant = '110TWNG05324',
  servingGram = 2, usd = 4.99/20)


# Paromi

Paromi_EarlGrey <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], paromi = 'earl-grey-tea-bags', 
  name = 'Earl Grey',
  servingGram = 3, usd = 31/15, # website
  # no longer at Wegmans
  review = 'Too spicy, do not buy')

Paromi_cinnamonChai <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], paromi = 'cinnamon-chai-tea-bags', 
  name = 'Cinnamon Chai Rooibos',
  servingGram = 3, usd = 12/15) # website
  # no longer at Wegmans



Yogi_licorice <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  yogi = 'egyptian-licorice-076950415164',
  name = 'Egyptian Licorice',
  wegmans = 31614L,
  walmart = '26965528',
  servingGram = 36/16, usd = 6.99/16)



# Wegman's Just Tea

JustTea_EarlGrey <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], justtea = '229018',
  name = 'Earl Grey',
  servingGram = 2, usd = 9.49/100,
  superior = 'Twinings_EarlGrey',
  review = c(
    'Soymilk coagulates',
    'Bergamot has a different flavor from Twining\'s Earl Grey, which is okay'
  ))

