

#' @title \linkS4class{LangueDeChat} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' diagnose(
#'  subtract(Giallozafferano_LangueDeChat, sugar = 45),
#'  subtract(Ying_LangueDeChat, sugar = 7.5),
#'  subtract(Jadore_LangueDeChat, sugar = 22),
#'  subtract(cookingTree_LangueDeChat, sugar = 55),
#'  subtract(cookingTree_cocoa_LangueDeChat, sugar = 28)
#' )
#' 
#' 
#' @name LangueDeChat
#' @aliases LangueDeChat-class
#' @export
setClass(Class = 'LangueDeChat', contains = 'recipe', prototype = prototype(
  alias_class = 'Langue de Chat'
))






#' @rdname LangueDeChat
#' @export
cookingTree_LangueDeChat <- function() new(
  Class = 'recipe', author = 'CookingTree', alias_flavor = 'Langue De Chat', youtube = 'V-PasuPZFS0',
  butter = 90,
  sugar = 85,
  egg_pc = 2,
  vanilla_tsp = .5, # 2g Vanilla extract  
  flour = 110)

#' @rdname LangueDeChat
#' @export
cookingTree_cocoa_LangueDeChat <- function() new(
  Class = 'recipe', author = 'CookingTree', alias_flavor = 'Cocoa Langue De Chat', youtube = 'V-PasuPZFS0',
  butter = 45,
  sugar = 45,
  egg_pc = 1,
  vanilla_tsp = .25, #1g Vanilla extract 
  heavyCream = 20,
  flour = 50,
  cocoa = 7)


#' @rdname LangueDeChat
#' @export
Ying_LangueDeChat <- function() new(
  Class = 'recipe', author = 'Ying', alias_flavor = 'Langue De Chat', youtube = '2tlPfiBA9i0',
  butter = 25,
  sugar = 15,
  egg_pc = 15/(17.3 + 34.7),
  heavyCream = 10,
  vanilla_tsp = 1/8,
  flour = 25)



#' @rdname LangueDeChat
#' @export
Jadore_LangueDeChat <- function() new(
  Class = 'recipe', author = 'J\'adore', alias_flavor = 'Langue De Chat', youtube = 'mZYO0xVMgOQ',
  butter = 43,
  sugar = 34,
  eggWhite = 30,
  pastryFlour = 32,
  flour = c(BobsRedMill_almondFlour = 5),
  vanilla_tsp = 1/4,
  heavyCream = 13) 

#' @rdname LangueDeChat
#' @export
Giallozafferano_LangueDeChat <- function() new(
  Class = 'recipe', author = 'Giallozafferano', alias_flavor = 'Langue De Chat', youtube = 'CiVLx3zQBSw',
  butter = 50,
  sugar = 60,
  eggWhite = 50,
  flour = 50)








