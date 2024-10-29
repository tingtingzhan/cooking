
# watch this carefully
# https://youtu.be/FXX0vkbDon4


fauxReo <- function() new(
  Class = 'recipe', alias = '\u5c71\u5be8\u5965\u5229\u5965 Faux-Reos',
  portion = c(cookie = 26),
  sugar = 50,
  oil = c(Wegmans_corn = 50),
  coffee_tsp = c(NescafeGold_espresso_blonde = 1),
  iceWater = 25, # add gradually!!
  breadFlour = 180,
  cocoa = c(KingArthur_blackCocoa = 64))


KingArthur_fauxReo <- function() new(
  Class = 'recipe', alias_flavor = 'Faux-Reos',
  portion = c(cookie = 26),
  sugar = 223,
  butter = 170,
  salt_tsp = 1/2,
  coffee_tsp = c(NescafeGold_espresso_blonde = 1),
  egg_pc = 1, 
  iceWater = 14,
  vanilla_tsp = 1,
  flour_cup = 1.5,
  cocoa = c(KingArthur_blackCocoa = 64),
  author = 'pj-hamel', kingarthur = 'faux-reos-recipe')


if (FALSE) {
  nutrition_(
    fauxReo,
    KingArthur_fauxReo,
    Nabisco_waferOreo
  )
}