

# Pastéis de Nata




xiaogaojie_pasteisdenata1 <- function() new(
  Class = 'xiaogaojie', alias_flavor = 'pasteisdenata1',
  water = 185,
  sugar = 200,
  #cinnamon stick 1
  #Lemon peel 2
  pastryFlour = 25,
  starch = c(Wegmans_corn = 17),
  milk = 250,
  eggYolk_pc = 5,
  youtube = '-83188U6O8w')

xiaogaojie_pasteisdenata2 <- function() new(
  Class = 'xiaogaojie', alias_flavor = 'pasteisdenata2',
  milk = 180,
  heavyCream = 200,
  sugar = 60, 
  eggYolk_pc = 4,
  eggWhite_pc = 1,
  youtube = '-83188U6O8w')

Leites_pasteisdenata <- function() new(
  Class = 'recipe',
  alias = 'leites',
  pastryFlour = 120/16*3, # 3 tablespoons all-purpose flour
  milk = 240*1.25, # 1 1/4 cups milk, divided
  sugar = 200 * 4/3, # 1 1/3 cups granulated sugar
  # 1 cinnamon stick
  water = 236.6 * 2/3, # 2/3 cup water
  vanilla_tsp = 1/2,
  eggYolk_pc = 6,
  url = 'https://leitesculinaria.com/7759/recipes-pasteis-de-nata.html')


TastingTable_pasteisdenata <- function() new(
  Class = 'recipe',
  alias = 'TastingTable',
  sugar = 200, # 1 cup granulated sugar
  water = 236.6 * 2/3, # 2/3 cup water
  # 1 cinnamon stick
  milk = 240 * (1 + 6/16), # 1 cup, plus 6 tablespoons, whole milk, divided
  pastryFlour = 120 / 2, # 1/2 cup all-purpose flour
  eggYolk_pc = 6,
  url = 'https://www.tastingtable.com/686035/portuguese-egg-tart-recipe-pastry/'
)



if (FALSE) {

  
  
  diagnose_(
    subtract(xiaogaojie_pasteisdenata1, sugar = 130),
    xiaogaojie_pasteisdenata2,
    subtract(Leites_pasteisdenata, sugar = 200),
    subtract(TastingTable_pasteisdenata, sugar = 120)
  )
}







