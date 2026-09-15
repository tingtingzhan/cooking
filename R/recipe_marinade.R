
#' @title \linkS4class{marinade} Recipes
#' 
#' @name marinade-class
#' @export 
setClass(Class = 'marinade', contains = 'recipe', prototype = prototype(
  class2 = '\u5364\u6c41',
  water = 1200,
  tool = list(InstantPot(
    treatment = 'Meat parboiled, 1.6kg to 1.8kg',
    program = 'Sous Vide (no bag)',
    fahrenheit = 203, 
    minute = c(
      'beef round heel muscle\U1f389' = 2*60
    ),
    cooling = 'Soak overnight'
  ))
))



#' @rdname marinade-class
#' @export 
marinade <- \() new(
  Class = 'marinade', flavor = '', # to suppress automatic `flavor`
  salt = 20,
  sauce = c(LeeKumKee_5spiceMarinade = 150),
  rattanPepperOil = 15,
  spice = c(TonHsing_marinadespice = 12.5),
  pros = 'I love!', date = as.Date('2024-06-22'))



tomyum_marinade <- \() new(
  Class = 'marinade',
  salt = 11,
  sauce = c(
    Siam_tomyum = 100,
    LeeKumKee_5spiceMarinade = 150
  ),
  review = 'to finalized what I have been doing (for pork hocks)')#, #date = as.Date('2024-06-22'))




