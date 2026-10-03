
if (FALSE) {
  nutritionlist(
    youtiao(),
    mathstar_youtiao(),
    xiaogaojie_youtiao(),
    PinNuo_youtiao1(),
    PinNuo_youtiao2(),
    PinNuo_youtiao3(),
    PinNuo_youtiao4(),
    PinNuo_youtiao5(),
    PinNuo_youtiao6(),
    PinNuo_youtiao7()
  )
  
}

# https://www.youtube.com/watch?v=YoEO04dWiz0
# Chef Wang said: 
# this is a soft dough!!
# kneader machine: dont run continuously, dough overheat. Pause and restart.



youtiao <- \() new(
  Class = 'recipe',
  class2 = '\u6cb9\u6761',
  flour = c(Wegmans_pastryFlr = 250, KingArthur_breadFlr = 250),
  egg_pc = c(eggYolk = 1, eggWhite = 1),
  oil = c(Wegmans_corn_oil = 20),
  sugar = 10,
  NaHCO3 = 3,
  bakingPowder = 8,
  water = 250,
  review = 'try'
)

xiaogaojie_youtiao <- \() new(
  Class = 'recipe', flavor = '\u6cb9\u6761', 
  xiaogaojie = 'uRc3F6uwR3E',
  flour = c(KingArthur_allPurposeFlr = 350),
  dairy = c(WegmansOrganic_whole_milk = 250),
  bakingPowder = 10,
  NaHCO3_tsp = 1/2,
  salt_tsp = 1,
  oil_Tbsp = c(Wegmans_corn_starch = 1)
)

mathstar_youtiao <- \() new(
  Class = 'recipe',
  author = 'MathStar', flavor = '\u6cb9\u6761',
  url = 'https://huaren.us/showtopic.html?topicid=3003916&fid=398',
  flour = c(KingArthur_allPurposeFlr = 500),
  bakingPowder = 12, 
  yeast = c(Fleischmanns_instant = 6),
  NaHCO3 = 3,
  salt = 6,
  oil = c(Wegmans_corn_oil = 30), 
  egg_pc = c(eggYolk = 1, eggWhite = 1),
  water = 280)



PinNuo_youtiao1 <- \() new(
  Class = 'recipe', flavor = '\u6cb9\u67611', 
  pino = 'xoFcbox1VDE',
  flour = c(KingArthur_allPurposeFlr = 500),
  bakingPowder = 6, NaHCO3 = 3, salt = 5, sugar = 5,
  egg_pc = c(eggYolk = 1, eggWhite = 1), 
  dairy = c(Kerrygold_butter = 30), water = 250)


PinNuo_youtiao2 <- \() new(
  Class = 'recipe', flavor = '\u6cb9\u67612', 
  pino = 'cD2mJYDaXU0',
  flour = c(KingArthur_allPurposeFlr = 500),
  # NaHCO3 = 3, #su-cui-ji = 6, # primary component NaHCO3
  NaHCO3 = (3+6),
  salt = 5,
  sugar = 5,
  oil = c(Wegmans_corn_oil = 40), 
  water = 250)


PinNuo_youtiao3 <- \() new(
  Class = 'recipe', flavor = '\u6cb9\u67613', 
  pino = '8Af9_PiZx2Q',
  flour = c(KingArthur_allPurposeFlr = 1000),
  bakingPowder = 10, 
  # youtiao puffing mix = 10
  salt = 8, 
  sugar = 8,
  egg_pc = c(eggYolk = 2, eggWhite = 2), 
  oil = c(Wegmans_corn_oil = 60), 
  water = 480)

PinNuo_youtiao4 <- \() new(
  Class = 'recipe', flavor = '\u6cb9\u67614', 
  pino = 'KAUdFDRD8l0',
  flour = c(KingArthur_allPurposeFlr = 1000),
  yeast = c(Fleischmanns_instant = 10), NaHCO3 = 5, salt = 10, sugar = 8,
  egg_pc = c(eggYolk = 2, eggWhite = 2), 
  oil = c(Wegmans_corn_oil = 30), water = 500)


PinNuo_youtiao5 <- \() new(
  Class = 'recipe', flavor = '\u6cb9\u67615', 
  pino = 'bKZy7TGnMbE',
  flour = c(KingArthur_allPurposeFlr = 500),
  bakingPowder = 3, salt = 3, sugar = 3,
  # youtiao puffing mix = 5
  egg_pc = c(eggYolk = 1, eggWhite = 1), 
  oil = c(Wegmans_corn_oil = 20), 
  water = 260)

PinNuo_youtiao6 <- \() new(
  Class = 'recipe', flavor = '\u6cb9\u67616', 
  pino = 'YoEO04dWiz0',
  flour = c(KingArthur_allPurposeFlr = 500),
  bakingPowder = 8, 
  # youtiao su-cui mix = 5
  salt = 5, sugar = 5,
  egg_pc = c(eggYolk = 1, eggWhite = 1), 
  oil = c(Wegmans_corn_oil = 30), 
  water = 250)

PinNuo_youtiao7 <- \() new(
  Class = 'recipe', flavor = '\u6cb9\u67617', 
  pino = 'cv3JhX8NbNs',
  flour = c(KingArthur_allPurposeFlr = 1000), # white sesame 60g
  bakingPowder = 15, 
  sugar = 10, salt = 10, 
  # youtiao su-cui mix = 8
  egg_pc = c(eggYolk = 2, eggWhite = 2), 
  oil = c(Wegmans_corn_oil = 60), 
  water = 500)
