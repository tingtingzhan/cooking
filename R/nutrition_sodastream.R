

SodaStream_dietRootBeer <- function() new(
  Class = 'nutrition', url = 'https://sodastream.com/products/diet-root-beer',
  brand = 'SodaStream', name = 'Diet Root Beer',
  servingGram = 440, servingCup = 1.86, # 440ml
  # I really need to find the water content!!
  usd = 5.99)

SodaStream_rootBeer <- function() new(
  Class = 'nutrition', url = 'https://sodastream.com/products/root-beer',
  brand = 'SodaStream', name = 'Diet Root Beer',
  servingGram = 19, servingTsp = 3.8548, # 19ml
  # I really need to find the water content!!
  sugar = 16,
  usd = 5.99/440*19)
