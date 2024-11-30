

# Pastéis de Nata

# the custard


xiaogaojie_pasteisdenata1 <- function() new(
  Class = 'recipe', alias_flavor = 'pasteisdenata1',
  water = 185,
  sugar = 200,
  #cinnamon stick 1
  #Lemon peel 2
  pastryFlour = 25,
  starch = c(Wegmans_corn = 17),
  milk = 250,
  eggYolk_pc = 5,
  xiaogaojie = '-83188U6O8w')

xiaogaojie_pasteisdenata2 <- function() new(
  Class = 'recipe', alias_flavor = 'pasteisdenata2',
  milk = 180,
  heavyCream = 200,
  sugar = 60, 
  eggYolk_pc = 4,
  eggWhite_pc = 1,
  xiaogaojie = '-83188U6O8w')

Leites_pasteisdenata <- function() new(
  Class = 'recipe',
  alias = 'leites',
  flour_Tbsp = 3,
  milk_cup = 1.25,
  sugar_cup = c(Domino_granulated = 4/3),
  # 1 cinnamon stick
  water_cup = 2/3,
  vanilla_tsp = 1/2,
  eggYolk_pc = 6,
  url = 'https://leitesculinaria.com/7759/recipes-pasteis-de-nata.html')


TastingTable_pasteisdenata <- function() new(
  Class = 'recipe',
  alias = 'TastingTable',
  sugar_cup = c(Domino_granulated = 1),
  water_cup = 2/3,
  # 1 cinnamon stick
  milk_cup = (1 + 6/16),
  flour_cup = 1/2,
  eggYolk_pc = 6,
  url = 'https://www.tastingtable.com/686035/portuguese-egg-tart-recipe-pastry/'
)



if (FALSE) {

  
  
  diagnose(
    subtract(xiaogaojie_pasteisdenata1, sugar = 130),
    xiaogaojie_pasteisdenata2,
    subtract(Leites_pasteisdenata, sugar = 200),
    subtract(TastingTable_pasteisdenata, sugar = 120)
  )
}







