

# superceded by `meatfill` !!



#' @title \linkS4class{spam} Recipes
#' 
#' @description ..
#' 
#' @details 
#' 
#' Replace slow and long-time manual mixing with fast blending \strong{and} long-time rest.
#' 
#' Do NOT use Low setting on food processor, severe splash!
#' 
#' Try reducing water to create Bao Zi Xian.
#' 
#' @examples 
#' tilapiaSpam()
#' porkSpam()
#' shrimpSpam()
#' shrimpLambSpam()
#' chickenBreastSpam()
#' beefSpam()
#' 
#' @name spam
#' @aliases spam-class
#' @export
setClass(Class = 'spam', contains = 'recipe', prototype = prototype(
  alias_class = '\u8089\u7cd5',
  ginger_tsp = .5,
  coriander_tsp = .25, 
  whitePepper_tsp = .5,
  starch = c(sweetPotato = 40),
  sauce_tsp = c(LeaPerrins_Worcestershire = 3),
  egg_pc = 4, 
  water = 100, 
  machine = list(
    'Nutribullet Food Processor' = c(
      'Cut meat into 1-inch cubes',
      'Add everything except for egg yolk',
      'High for 30sec. Transfer to flat container, rest in fridge 1hr+'
    ),
    'Robam CT763' = c(
      'Steam 250\u00b0F/17 min',
      'Pour and level whisked egg yolk and steam for another 3 min'
    )
  ),
  note = c('One (1) recipe fits in 7-cup food processor',
           'Do NOT reduce water! Water is expelled during steaming if batter is too dry.')
))






#' @rdname spam
#' @export
tilapiaSpam <- function() new(
  Class = 'spam', alias_flavor = '\u7f57\u975e\u9c7c',
  pork = c(fatbelly = 180), seafood = c(tilapia = 220), pros = 'Effie\'s Signature')

#' @rdname spam
#' @export
porkSpam <- function() new(
  Class = 'spam',
  pork = c(belly = 400), pros = 'Effie\'s Signature!')



#' @rdname spam
#' @export
shrimpSpam <- function() new(
  Class = 'spam', alias_flavor = '\u867e',
  pork = c(fatbelly = 180), shrimp = 220, pros = 'Effie\'s Signature')

#' @rdname spam
#' @export
shrimpLambSpam <- function() new(
  Class = 'spam', alias_flavor = '\u867e\u7f8a',
  cumin_tsp = .25,
  pork = c(fatbelly = 100), lamb = c(leg = 100), shrimp = 200,
  review = c('Taste nice! try again with regular water'))


#' @rdname spam
#' @export
chickenBreastSpam <- function() new(
  Class = 'spam', alias_flavor = '\u9e21',
  pork = c(fatbelly = 100), chicken = c(breast = 300), pros = 'Effie\'s Signature')




#' @rdname spam
#' @export
beefSpam <- function() new(
  Class = 'spam', alias_flavor = '\u725b',
  cumin_tsp = .25,
  pork = c(belly = 320), beef = c(chuck = 80), 
  review = c('Nice with beef chuck or chuck short ribs at Costco',
             'But this is expensive!!'))

#' @rdname spam
#' @export
shrimpBeefSpam <- function() new(
  Class = 'spam', alias_flavor = '\u867e\u725b',
  cumin_tsp = .25,
  # pork = c(fatbelly = 100), beef = c(leanchuck = 200), shrimp = 200, # texture not good
  pork = c(fatbelly = 100), beef = c(chuck = 100), shrimp = 200,
  review = c('retry beef_chuck at Costco',
             'Too expensive!!'))

