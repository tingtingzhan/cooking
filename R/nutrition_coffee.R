
# NESCAFE TASTER'S CHOICE Decaf House Blend Instant Coffee
# https://www.nescafe.com/us/products/decaf-medium-light-roast-coffee-7-oz/
# review = 'too sour!!'






NescafeGold_intense <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafeGold = 'gold-espresso-intense-instant-coffee-35-oz-jar',
  walmart = '5066099258',
  name = 'Intense, Velvety Crema', alias = '\u901f\u6eb6\u5496\u5561',
  usd = 7.47/100*2,
  servingGram = 2, servingTsp = 2,
  superior = 'NescafeGold_blonde'
)



NescafeGold_decaf <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafeGold = 'gold-decaf-espresso-instant-coffee',
  walmart = '12273958388',
  name = 'Decaf, Velvety Crema', alias = '\u901f\u6eb6\u5496\u5561',
  usd = 7.47/100*2,
  servingGram = 2, servingTsp = 2,
  superior = 'NescafeGold_blonde'
)



NescafeGold_blonde <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  nescafeGold = 'gold-espresso-blonde-instant-coffee-35-oz-jar',
  walmart = '5066099259',
  costco = '4000376082',
  name = 'Blonde, Velvety Crema', alias = '\u901f\u6eb6\u5496\u5561',
  usd = 18.99/200*2,
  servingGram = 2, servingTsp = 2
)

