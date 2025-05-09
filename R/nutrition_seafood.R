

salmonSashimi <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  name = '\u9bad\u523a\u8eab Alpine King Salmon, Sashimi',
  wegmans = 260546L, usd = 43/454*100,
  servingGram = 113, 
  water = 113-24-1-21 - 2,
  calorie = 290, fat = 24, cholesterol = .065, sodium = .050, sugar = 1, protein = 21)


ahiTunaSashimi <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = '\u9baa\u523a\u8eab Ahi(Bigeye) Tuna, Sashimi',
  wegmans = 30372L, usd = 43/454*100,
  servingGram = 113,
  water = 113-2-27 - 2,
  calorie = 130, fat = 2, cholesterol = .045, sodium = .070, protein = 27)

yellowtailSashimi <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = '\u9c24\u523a\u8eab Yellowtail, Sashimi',
  wegmans = 260467L, usd = 43/454*100,
  servingGram = 113,
  water = 113-6-26 - 2,
  calorie = 160, fat = 6, cholesterol = .060, sodium = .045, protein = 26)



tilapia <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 175176L,
  name = '\u7f57\u975e\u9c7c Tilapia\U1f41f',
  servingGram = 100, water = 78.1, fat = 1.7, protein = 20.1, sodium = .052)

Kirkland_shrimp_31_40 <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  #fdc = 475625L,
  #fdc = 175180L, cooked
  #fdc = 972415, historical data, raw
  name = 'Shrimp\U1f990 31-40ct', alias = '\u867e',
  costcoBiz = '100385031',
  # package 2lb, 908g, fully drained 750g
  usd = 11.99/750*112, # Costco, Jan 2024
  servingGram = 112, 
  calorie = 90,
  water = 112*.743, # using `fdc = 175180L` data
  protein = 22, fat = .5, sodium = .310, cholesterol = .175,
  contain = 'salt')


# commercial shrimp used in Cantonese restaurant in Boston (Daat-Go said)
# Mermaid's Supreme Wild Caught Frozen Shrimp
# https://gollottseafood.com
# https://americanshrimp.com/suppliers/c-f-gollott-son-seafood-inc/




Kirkland_shrimpArgentine <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 2401277L,
  name = 'Argentine\U1f1e6\U1f1f7 Red Shrimp\U1f990 10-30ct', alias = '\u7ea2\u867e',
  costcoBiz = '100439398',
  # package 2lb, 908g, fully drained ???
  usd = 21.49/750*112, # Costco, Jan 2024
  servingGram = 112, 
  calorie = 80,
  water = 112*.743, # using `fdc = 175180L` data
  protein = 18, fat = .5, sodium = .2, cholesterol = .150)




cuttlefish <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 174215L,
  name = '\u58a8\u9c7c Cuttlefish\U1f991',
  servingGram = 100, 
  water = 80.6, protein = 16.2, fat = 0.7, sodium = .372, cholesterol = .112)


salmonAtlantic <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  fdc = 175167L,
  # fdc = 175138L, fdc = 1098960L, # what is this??
  name = '\u5927\u897f\u6d0b\u9c91 Atlantic Salmon',
  usd = 11.99/454*100, # Costco Feb 2024
  calorie = 208,
  servingGram = 100, water = 64.9, fat = 13.4, protein = 20.4, sodium = .059, cholesterol = .055)


Sanford_mussel <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  sanford = 'greenshell-mussel-1',
  name = '\u9752\u53e3\u8d1d Greenshell Mussels',
  # packaging
  servingGram = 85,
  calorie = 94, fat = 2.3, cholesterol = .047, sodium = .507,
  carbohydrate = 4.7, sugar = .9, protein = 13.5)

Clearwater_surfClam <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  clearwater = 'clams/arctic-surf-clams',
  name = '\u5317\u6781\u8d1d Arctic Surf Clams',
  # packaging
  servingGram = 110, 
  calorie = 100,
  fat = .5, cholesterol = .045, sodium = .35, carbohydrate = 2.2, protein = 16)

Clearwater_cockleClam <- function() new(
  Class = 'nutrition', call = match.call()[[1L]],
  clearwater = 'clams/cockle-clams',
  name = '\u5317\u6781\u767d\u7389\u8d1d Cockle Clams',
  # website
  servingGram = 100, 
  calorie = 90,
  fat = .5, cholesterol = .02, sodium = .3, carbohydrate = 4, sugar = 1, protein = 16)



crab_steamed <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fdc = 1099116L,
  name = 'Crab Meat',
  servingGram = 100, water = 79.17, fat = .74, protein = 17.76, sodium = .647)

# `octopus` from Asian supermarket
# 1.4lb (635g) contains 360g meat, 360/635 = 56.7%, cooked meat 233g
