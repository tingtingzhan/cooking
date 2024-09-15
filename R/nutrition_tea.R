



# Stassen; headquarter in Sri Lanka.

Stassen_Ceylon <- function() new(
  Class = 'nutrition', 
  brand = styleURL(text_ = 'Stassen\U1f1f1\U1f1f0', url_ = 'www.stassentea.com/product/4'),
  name = 'Ceylon Black Tea',
  servingGram = 2, # **must** be per-bag!  # servingBag = 1, 
  usd = 12/100, # 2023-11-09
  review = 'I love')

Stassen_Ceylon_loose <- function() new(
  Class = 'nutrition',
  brand = styleURL(text_ = 'Stassen\U1f1f1\U1f1f0', url_ = 'www.stassentea.com/product/6'), 
  name = 'Ceylon Black Tea, Loose',
  servingGram = 250, usd = 6.42, # 2023-11-09
  review = 'where to buy?')


# Harney & Sons, headquarter in New York

Harney_UvaHighlands <- function() new(
  Class = 'nutrition', harney = 'uva-highlands', 
  name = 'Uva Highlands',
  servingGram = 454, usd = 20, # 2023-11-09
  review = 'Prefer Organic Assam. Do not buy.')

Harney_Assam <- function() new(
  Class = 'nutrition', harney = 'organic-assam',
  name = 'Organic Assam',
  servingGram = 454, usd = 27, # 2023-11-09
  machine = function(x) switch(x, cookie = c('Grind loose leaf tea using Niche Zero, Level 6')),
  review = 'Good base black tea.')

Harney_PuErh <- function() new(
  Class = 'nutrition', harney = 'pu-erh',
  name = 'Pu-Erh',
  servingGram = 454, usd = 26, # 2023-11-09
  machine = function(x) switch(x, cookie = c('Grind loose leaf tea using Niche Zero, Level 6')),
  review = 'Very distinct and delightful aroma when raw.')

Harney_decafCeylon <- function() new(
  Class = 'nutrition', harney = 'decaf-ceylon',
  name = 'Decaf Ceylon',
  servingGram = 454, usd = 32) # 2023-11-09

Harney_decafEarlGrey <- function() new(
  Class = 'nutrition', harney = 'decaf-earl-grey',
  name = 'Decaf Earl Grey',
  servingGram = 454, usd = 29) # 2023-11-09

Harney_EarlGreySupreme <- function() new(
  Class = 'nutrition', harney = 'earl-grey-supreme', 
  name = 'Earl Grey Supreme',
  servingGram = 454, usd = 31, # 2023-11-09
  review = 'Harney&Sons Earl Grey Supreme, bergamont too weak, tea too strong')

Harney_LapSangSouChong <- function() new(
  Class = 'nutrition', harney = 'lapsang-souchong',
  name = '\u7acb\u5c71\u5c0f\u79cd Lap Sang Sou Chong',
  servingGram = 454, usd = 28, # 2023-11-09
  machine = function(x) switch(x, cookie = c('Grind loose leaf tea using Niche Zero, Level 6')),
  review = 'Quite an acquired taste.')


# Twinings; headquarter in London

Twinings_EarlGrey <- function() new( # I love!
  Class = 'nutrition', twinings = 'earl-grey', 
  name = 'Earl Gray',
  servingGram = 2, usd = 15.99/100) # 100pcs 2g-bag, 2023-11-09

Twinings_EarlGrey_loose <- function() new(
  Class = 'nutrition', twinings = 'earl-grey-loose-tea',
  name = 'Earl Grey, Loose',
  servingGram = 200, usd = 11.99) # 2023-11-09

Twinings_strongEarlGrey <- function() new(
  Class = 'nutrition', twinings = 'earl-grey-strong',
  name = 'Earl Grey, Extra Strong',
  servingGram = 2, usd = 4.99/20) # # 20pcs of 2g-bag, 2023-11-16

Twinings_decafEarlGrey <- function() new( # no value pack, no loose leaf
  Class = 'nutrition', twinings = 'earl-grey-decaf',
  name = 'Earl Grey Decaf',
  servingGram = 35/20, usd = 4.99/20) # 20pcs of 1.75g-bag, 2023-11-09

Twinings_LadyGrey <- function() new( # Do not like the lemon-mandarin flavor!!
  Class = 'nutrition', twinings = 'lady-grey',
  name = 'Lady Grey',
  servingGram = 2, usd = 15.99/100) # 100pcs of 2g-bag, 2023-11-09
  
Twinings_ultraChai <- function() new(
  Class = 'nutrition', twinings = 'ultra-spice-chai',
  name = 'Ultra Spice Chai',
  servingGram = 2, usd = 4.99/20) # 20pcs of 2g-bag, 2023-11-13


Twinings_Darjeeling <- function() new( # lacks a signature flavor
  Class = 'nutrition', twinings = 'darjeeling',
  name = 'Darjeeling',
  servingGram = 2, usd = 8.49/50) # 50pcs of 2g-bag, 2023-11-13
  

# Paromi

#Paromi_EarlGrey <- function() new(
#  Class = 'nutrition', url = 'paromi.com/products/earl-grey-tea-bags', 
#  review = 'Too spicy, do not buy')








