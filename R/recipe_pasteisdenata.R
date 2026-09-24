

# Pastéis de Nata

# the custard


xiaogaojie_pasteisdenata1 <- \() new(
  Class = 'recipe', flavor = 'pasteisdenata1',
  water = 185,
  sugar = 200,
  #cinnamon stick 1
  #Lemon zest 2
  flour = c(Wegmans_pastryFlr = 25),
  starch = c(Wegmans_corn_starch = 17),
  dairy = c(WegmansOrganic_whole_milk = 250),
  eggYolk_pc = 5,
  xiaogaojie = '-83188U6O8w')

xiaogaojie_pasteisdenata2 <- \() new(
  Class = 'recipe', flavor = 'pasteisdenata2',
  dairy = c(
    Wegmans_heavyCream = 200,
    WegmansOrganic_whole_milk = 180
  ),
  sugar = 60, 
  eggYolk_pc = 4,
  eggWhite_pc = 1,
  xiaogaojie = '-83188U6O8w')

Leites_pasteisdenata <- \() new(
  Class = 'recipe',
  alias = 'leites',
  flour_Tbsp = c(KingArthur_allPurposeFlr = 3),
  dairy_cup = c(Wegmans_whole_milk = 1.25),
  sugar_cup = c(Domino_granulated = 4/3),
  # 1 cinnamon stick
  water_cup = 2/3,
  vanilla_tsp = 1/2,
  eggYolk_pc = 6,
  url = 'https://leitesculinaria.com/7759/recipes-pasteis-de-nata.html')


TastingTable_pasteisdenata <- \() new(
  Class = 'recipe',
  alias = 'TastingTable',
  sugar_cup = c(Domino_granulated = 1),
  water_cup = 2/3,
  # 1 cinnamon stick
  dairy_cup = c(Wegmans_whole_milk = (1 + 6/16)),
  flour_cup = c(KingArthur_allPurposeFlr = 1/2),
  eggYolk_pc = 6,
  url = 'https://www.tastingtable.com/686035/portuguese-egg-tart-recipe-pastry/'
)



if (FALSE) {

  
  
  nutritionlist(
    subtract(xiaogaojie_pasteisdenata1, sugar = 130),
    xiaogaojie_pasteisdenata2(),
    subtract(Leites_pasteisdenata, sugar = 200),
    subtract(TastingTable_pasteisdenata, sugar = 120)
  )
}







