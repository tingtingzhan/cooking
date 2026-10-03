

#' @title \linkS4class{LangueDeChat} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' nutritionlist(
#'  subtract(Giallozafferano_LangueDeChat, sugar = 45),
#'  subtract(Ying_LangueDeChat, sugar = 7.5),
#'  subtract(Jadore_LangueDeChat, sugar = 22),
#'  subtract(cookingTree_LangueDeChat, sugar = 55),
#'  subtract(cookingTree_cocoa_LangueDeChat, sugar = 28)
#' )
#' 
#' 
#' @name LangueDeChat-class
#' @export
setClass(Class = 'LangueDeChat', contains = 'recipe', prototype = prototype(
  class2 = 'Langue de Chat'
))






#' @rdname LangueDeChat-class
#' @export
cookingTree_LangueDeChat <- \() new(
  Class = 'recipe', author = 'CookingTree', flavor = 'Langue De Chat', youtube = 'V-PasuPZFS0',
  dairy = c(Kerrygold_butter = 90),
  sugar = 85,
  egg_pc = c(eggYolk = 2),
  vanilla = c(NielsenMassey_Madagascar = 2),
  flour = c(KingArthur_allPurposeFlr = 110))

#' @rdname LangueDeChat-class
#' @export
cookingTree_cocoa_LangueDeChat <- \() new(
  Class = 'recipe', author = 'CookingTree', flavor = 'Cocoa Langue De Chat', youtube = 'V-PasuPZFS0',
  sugar = 45,
  egg_pc = c(eggYolk = 1),
  vanilla = c(NielsenMassey_Madagascar = 1),
  dairy = c(
    Kerrygold_butter = 45,
    Wegmans_heavyCream = 20),
  flour = c(KingArthur_allPurposeFlr = 50),
  cocoa = c(KingArthur_Bensdorp = 7))


#' @rdname LangueDeChat-class
#' @export
Ying_LangueDeChat <- \() new(
  Class = 'recipe', author = 'Ying', flavor = 'Langue De Chat', youtube = '2tlPfiBA9i0',
  sugar = 15,
  egg_pc = c(eggYolk = 15/(17.3 + 34.7), eggWhite = 15/(17.3 + 34.7)),
  dairy = c(Kerrygold_butter = 25,
            Wegmans_heavyCream = 10),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1/8),
  flour = c(KingArthur_allPurposeFlr = 25))



#' @rdname LangueDeChat-class
#' @export
Jadore_LangueDeChat <- \() new(
  Class = 'recipe', author = 'J\'adore', flavor = 'Langue De Chat', youtube = 'mZYO0xVMgOQ',
  sugar = 34,
  egg = c(eggWhite = 30),
  flour = c(Wegmans_pastryFlr = 32,
            BobsRedMill_almondFlour = 5),
  vanilla_tsp = c(NielsenMassey_Madagascar = 1/4),
  dairy = c(Kerrygold_butter = 43,
            Wegmans_heavyCream = 13))

#' @rdname LangueDeChat-class
#' @export
Giallozafferano_LangueDeChat <- \() new(
  Class = 'recipe', author = 'Giallozafferano', flavor = 'Langue De Chat', youtube = 'CiVLx3zQBSw',
  dairy = c(Kerrygold_butter = 50),
  sugar = 60,
  egg = c(eggWhite = 50),
  flour = c(KingArthur_allPurposeFlr = 50))








