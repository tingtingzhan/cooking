
Raos_marinara <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], raos = 'marinara-sauce',
  name = 'Marinara Sauce\U1f96b',
  servingGram = 125, servingCup = 1/2, 
  calorie = 100,
  fat = 7, sodium = .42, sugar = 4, protein = 2)

Raos_tomatoBasil <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], raos = 'tomato-basil-sauce',
  name = 'Tomato Basil Sauce\U1f96b',
  servingGram = 125, servingCup = 1/2, 
  calorie = 80,
  fat = 5, sodium = .42, sugar = 4, protein = 2)


Raos_arrabbiata <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], raos = 'arrabbiata-sauce',
  name = 'Spicy Arrabbiata Sauce\U1f96b',
  servingGram = 125, servingCup = 1/2, 
  calorie = 100,
  fat = 7, sodium = .42, sugar = 4, protein = 2)

Raos_sensitive <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], raos = 'sensitive-marinara-sauce',
  name = 'Sensitive Marinara Sauce\U1f96b',
  # No onions or garlic
  servingGram = 125, servingCup = 1/2, 
  calorie = 130,
  fat = 11, sodium = .33, sugar = 4, protein = 2)


Raos_pizza <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], raos = 'pizza-sauce',
  name = 'Pizza Sauce\U1f96b',
  servingGram = 60, servingCup = 1/4, 
  calorie = 40,
  fat = 3, sodium = .18, sugar = 2, protein = 1)


Raos_margherita <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], raos = 'margherita-pizza-sauce',
  name = 'Margherita Pizza Sauce\U1f96b',
  servingGram = 60, servingCup = 1/4, 
  calorie = 40,
  fat = 3, sodium = .18, sugar = 2, protein = 1)
