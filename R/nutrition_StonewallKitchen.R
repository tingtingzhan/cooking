



Stonewall_Bourbon <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 553167L,
  name = 'Bourbon Barrel-Aged Maple\U1f341 Syrup',
  usd = 19.95/250*30, # 2023-11-11
  servingGram = 40, servingTbsp = 2, #serving_ml = 30,
  sodium = .005, addedSugar = 24)

Stonewall_maple <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 170801L,
  name = 'Maine Maple\U1f341 Syrup',
  # servingGram = 60, servingCup = 1/4, sodium = .005, addedSugar = 36) # webpage
  # empty bottle 253g
  usd = 17.95/250*30, # 2023-11-11
  servingGram = 40, servingTbsp = 2, #serving_ml = 30,
  sodium = .005, addedSugar = 24) # bottle label, I tasted it and think this is correct

Stonewall_blueberrySyrup <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 170802L,
  name = 'Wild Maine Blueberry\U1fad0 Syrup', alias = '\u84dd\u8393\u7cd6\u6d46',
  usd = 8.95/250*60, # 2023-11-11
  servingGram = 80, servingCup = 1/4, #serving_ml = 60,
  addedSugar = 34)

Stonewall_raspberrySyrup <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 170804L,
  name = 'Raspberry Syrup', alias = '\u8986\u76c6\u5b50\u7cd6\u6d46',
  # full bottle 580g
  usd = 9.95/250*60, # 2023-11-11
  servingGram = 80, servingCup = 1/4, #serving_ml = 60,
  addedSugar = 35)



Stonewall_fig <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 100825L,
  name = 'Classic Fig Jam, Organic',
  servingGram = 21, sodium = .01, sugar = 11, review = 'okay')

Stonewall_figWalnut <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 161014L,
  name = 'Fig & Walnut Butter', alias = '\u6838\u6843\u65e0\u82b1\u679c\u9171',
  servingGram = 15, servingTbsp = 1,
  usd = 9.50/361*15,
  calorie = 40,
  carbohydrate = 9, sugar = 8, addedSugar = 6)#, review = 'okay')

Stonewall_mimosa <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 101340L,
  name = 'Mimosa Jam',
  servingGram = 19, sugar = 10, review = 'super nice to eat directly!')



Stonewall_apricot <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 101328L,
  name = 'Apricot Jam',
  servingGram = 15, sugar = 7, review = 'okay')



Stonewall_wildBlueberryJam <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 101305L,
  name = 'Wild Maine Blueberry\U1fad0 Jam',
  servingGram = 15, sugar = 7, review = 'Nice!')



Stonewall_raspberryJam <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 101339L,
  servingGram = 19, sugar = 10,
  review = 'Not good for cooking, purely pectin.  Do not buy non-seedless version!')



Stonewall_blackRaspberry <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 101353L,
  servingGram = 15, sugar = 8, review = 'try.  Do not buy non-seedless version!')





Stonewall_lemonHerbAioli <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 111310L,
  servingGram = 15, fat = 10, sodium = .105, review = 'I like it.')



Stonewall_basilPestoAioli <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 111314L,
  servingGram = 13, fat = 9, sodium = .085, review = 'Not crazy about it')



Stonewall_srirachaAioli <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 111317L,
  servingGram = 14, fat = 8, sodium = .08, review = 'love it!!')



Stonewall_horseradishCreamSauce <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], stonewall = 551900L,
  servingGram = 31, fat = 4.5, sodium = .11, sugar = 2, protein = 1, review = 'love it!!')


