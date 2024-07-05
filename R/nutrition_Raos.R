
Raos_marinara <- function() new(
  Class = 'nutrition', raos = 'marinara-sauce',
  name = 'Marinara Sauce',
  servingGram = 125, servingCup = 1/2, fat = 7, sodium = .42, sugar = 4, protein = 2)

Raos_tomatoBasil <- function() new(
  Class = 'nutrition', raos = 'tomato-basil-sauce',
  name = 'Tomato Basil Sauce',
  servingGram = 125, servingCup = 1/2, fat = 5, sodium = .42, sugar = 4, protein = 2)


Raos_arrabbiata <- function() new(
  Class = 'nutrition', raos = 'arrabbiata-sauce',
  name = 'Arrabbiata Sauce',
  servingGram = 125, servingCup = 1/2, fat = 7, sodium = .42, sugar = 4, protein = 2)

Raos_sensitiveMarinara <- function() new(
  Class = 'nutrition', raos = 'sensitive-marinara-sauce',
  name = 'Sensitive Marinara Sauce',
  # No onions or garlic
  servingGram = 125, servingCup = 1/2, fat = 11, sodium = .33, sugar = 4, protein = 2)


Raos_pizza <- function() new(
  Class = 'nutrition', raos = 'pizza-sauce',
  name = 'Pizza Sauce',
  servingGram = 60, servingCup = 1/4, fat = 3, sodium = .18, sugar = 2, protein = 1)


Raos_margheritaPizza <- function() new(
  Class = 'nutrition', raos = 'margherita-pizza-sauce',
  name = 'Margherita Pizza Sauce',
  servingGram = 60, servingCup = 1/4, fat = 3, sodium = .18, sugar = 2, protein = 1)
