



#' @title \linkS4class{lava} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' sesame_lava()
#' coconut_lava()
#' 
#' diagnose_(
#'   sesame_lava,
#'   Daat_sesamelava,
#'   xiaogaojie_sesamelava,
#'   FancyNotes_sesamelava,
#'   xiaomin_sesamelava
#' )
#' 
#' diagnose_(
#'   sesame_lava,
#'   subtract(Daat_sesamelava, sugar = 107),
#'   subtract(xiaogaojie_sesamelava, sugar = 60),
#'   subtract(FancyNotes_sesamelava, sugar = 40, invertSugar = 7),
#'   subtract(xiaomin_sesamelava, sugar = 20)
#' )
#' 
#' @name lava
#' @aliases lava-class
#' @export
setClass(Class = 'lava', contains = 'recipe', prototype = prototype(
  alias_class = '\u6d41\u5fc3\u9985',
  water = 80,
  water80 = 640,
  glutinousRiceFlour = 32,
  gelatin_leaf = 12,
  instruction = c(
    'Make a slurry of glutinous rice flour and room-temperature water',
    'Add hot water, gelatin leaves, sugar',
    'Cook to 80\u00b0C/180\u00b0F. Stir gently to dissolve gelatin leaves',
    'Remove from heat. Whisk in dry flavor',
    'Chill overnight'
  )
))

#' @rdname lava
#' @export
sesame_lava <- function() new(
  Class = 'lava',
  blackSesame = 400,
  flavor = c('subtract(Kirkland_mixedNutButter, fat = 32/5)' = 100), # nice!
  #sugar = 140, # sugar 9.8%
  sugar = 130, # sugar 9.2
  note = c(
    'A full jar of black sesame powder',
    'Use 3qt sauce pan'
  ),
  pros = c(
    'bao filling',
    'eat directly, hot or chilled'
  )
)

#' @rdname lava
#' @export
coconut_lava <- function() new(
  Class = 'lava',
  coconut = c(WegmansOrganic_coconutFlour = 150),
  sugar = 70,
  review = c(
    'retry',
    'Coconut has tremendous water obsorbancy'
  ))


coconut_lava_OLD <- function() new(
  Class = 'lava',
  coconut = c(Edward_shreddedCoconutLite = 200),
  sugar = 100,
  cons = c(
    'shredded coconut too coarse'
  ))



#' @rdname lava
#' @export
Daat_sesamelava <- function() new(
  Class = 'recipe', alias_flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  daatgo = 'FvS_W_qnlxc',
  blackSesame = 160+20,
  # 黑芝麻酱  Black sesame paste 20g ???
  water = 450,
  sugar = 180,
  nut = c(peanut = 20), #花生酱  Peanut Butter               20g
  lard = 20,
  glutinousRiceFlour = 20,
  evaporatedMilk = 50,
  gelatin = 15,
  portion = c(bao = 28))

#' @rdname lava
#' @export
xiaomin_sesamelava <- function() new(
  Class = 'recipe', author = '\u5c0f\u654f', alias_flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  youtube = 'uCbXXVp4h40',
  blackSesame = 120,
  sugar = 40,
  nut = c(peanut = 30),
  lard = 40,
  water = 20)

#' @rdname lava
#' @export
FancyNotes_sesamelava <- function() new(
  Class = 'recipe', author = '\u4e54\u4e54\u5988', alias_flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  blackSesame = 150,
  sugar = 40, 
  invertSugar = 50, butter = 80,
  youtube = 'PC3YOs77lgE') 

#' @rdname lava
#' @export
xiaogaojie_sesamelava <- function() new(
  Class = 'recipe', alias_flavor = '\u9ed1\u829d\u9ebb\u6d41\u5fc3\u9985',
  xiaogaojie = 't-pop_dGsgc',
  blackSesame = 80,
  nut = c(pecan = 30),
  sugar = 80,
  butter = 60,
  water = 30)



daat_yolklava <- function() new(
  Class = 'recipe', alias_flavor = '\u54b8\u86cb\u9ec4\u6d41\u5fc3\u9985',
  eggYolk_pc = 12, # salted duck egg yolk 12pc, 144g
  butter = 180,
  sugar = 220,
  # custardPowder = 35, # https://www.birdscustard.co.uk
  starch = c(Wegmans_corn = 35),
  gelatin = 12,
  water = 90,
  daatgo = '1h6YFS2KGA0')


# not a good idea
pineapple_lava <- function() new(
  Class = 'recipe', 
  pineapple = 585, 
  gelatin_leaf = 4,
  waterLost = 135,
  note = 'Chill before wrapping.',
  machine = list(Nutribullet = 'One (1) recipe calls for a full can', 
                 'Joyoung CJ-A9U' = 'Stir Fry, 8min'),
  review = c('Need to use gelatin=6', 'Too sour when hot, don\'t make in future.'))


#date_lava <- function() new(
#  Class = 'lava', alias_flavor = '\u7ea2\u67a3',
#  flavor = c(SunnyFruit_date = 80), )

