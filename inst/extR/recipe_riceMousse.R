
# does not coagulate beautifully


#' @title \linkS4class{riceMousse} Recipes
#' 
#' @description 
#' Low fat, low sugar rice-based mousse.
#' 
#' @examples 
#' blackRiceMousse()
#' coffee_riceMousse()
#' 
#' @name riceMousse
#' @aliases riceMousse-class
#' @export
setClass(Class = 'riceMousse', contains = 'recipe', prototype = prototype(
  # Per 900g rice paste
  drymilk = 60, 
  heavyCream = 160, 
  # gelatin_leaf = 10, # not hard enough
  gelatin_leaf = 20, # try
  note = c(
    'Don\'t worry if dry milk or other powder do not disolve completely on Day 1.',
    'Use burr grinder for whole tea leaves',
    'One (1) recipe fits six (6) glasses'
  ),
  KSM8990 = KSM8990(
    operation = c('Whisk gelatine leaves and dry milk into freshly made hot rice paste. Rest overnight',
                  'Whisk chilled mousse base. Store in individual glasses. Chill in fridge for 4hr+ before serving'))
))


#' @name riceMousse
#' @export
blackRiceMousse <- function() new(
  Class = 'riceMousse', alias_class = '\u9ed1\u7c73mousse',
  puree = c(blackRicemilk = 900),
  review = c(
    'Retry'))



brownRiceMousse <- function() new(
  Class = 'riceMousse', alias_class = '\u7cd9\u7c73mousse',
  puree = c(brownRicemilk = 900), 
  sugar = 35, review = 'A hypothetical model for other flavor')


#' @rdname riceMousse
#' @export
coffee_riceMousse <- function() new(
  Class = 'riceMousse', 
  brownRiceMousse(), coffee = 15, 
  pros = c('Effie\'s Signature', 'Sweet enough for general public'))

#' @rdname riceMousse
#' @export
matcha_riceMousse <- function() new(
  Class = 'riceMousse',
  brownRiceMousse(), matcha = 15,
  review = 'try')



#' @rdname riceMousse
#' @export
Assam_riceMousse <- function() new(
  Class = 'riceMousse',
  brownRiceMousse(),
  flavor = c(Harney_Assam = 50), 
  sugar = 50,
  review = 're-try') 
# 2022-08-29 (before beating gelatin)
# A little too much liquid, layered



#EarlGrey_riceMousse = coffee_riceMousse
#EarlGrey_riceMousse@flavor = c(Twinings_EarlGrey_bag = 15)


if (FALSE) {
(BlackSesame_riceMousse <- function() new(Class = 'riceMousse', puree = c(brownRicemilk = 900), 
  blackSesame = 100, gelatin_leaf = 10,
  drymilk = 40, heavyCream = 100, sugar = 40))
  

# past experiments

new('recipe', matcha = 5, sugar = 10,
  creamCheese = 227,
  sourCream = c(Daisy = 20), heavyCream = 100) * 2
# a typical no-bake cheesecake.  too heavy & fat
# also, too much matcha, too little sugar


new('recipe', flavor = c(LuckyTaro_durian = 300), sugar = 20,
  sourCream = c(DaisyLight = 200), heavyCream = 400, gelatin_leaf = 5)
# Wei Han and her son love this very much! I have bad reaction to fresh durian ..
  
new('recipe', flavor = c(ThaiKitchen_coconutmilkLite = ThaiKitchen_coconutmilkLite()@servingGram), sugar = 3, 
  drymilk = 20, gelatin_leaf = 4.5) # Gelatin too hard!!!

new('recipe', flavor = c(ThaiKitchen_coconutmilkLite = ThaiKitchen_coconutmilkLite()@servingGram), sugar = 3, 
  drymilk = 20, gelatin_leaf = 2) # try, but Effie diarrhea !
  

}
