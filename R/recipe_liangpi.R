

setClass(Class = 'liangpi', contains = 'recipe', prototype = prototype(
  alias_class = '\u51c9\u76ae',
  pastryFlour = c(Wegmans_pastry = 350),
  starch = c(ManSang_wheat = 150),
  water = 800
))

liangpi <- function() new(
  Class = 'liangpi',
  review = 'try'
)



PinNuo_liangPi <- function() new(
  Class = 'recipe', alias_flavor = '\u51c9\u76ae', 
  pino = 'FrpmqMfZ7CM',
  flour = 350,
  starch = c(ManSang_wheat = 150),
  water = 800)

# liangpi sauce
# https://www.youtube.com/watch?v=MpJZmQ4qXkE

ricePi <- function() new(
  Class = 'recipe',
  alias_class = '\u7c73\u76ae',
  youtube = 'cditsCOMQ4I', # 1kg dry rice + 500g boiling water
  riceFlour = 454,
  water = 300, # experiment! Look at PinNuo's rice paste texture!!
  boilingWater = 454/2
)


mianjin <- function() new(
  Class = 'recipe',
  alias_class = '\u591a\u6751\u9ec4\u6559\u716e', alias_flavor = '\u9762\u7b4b', youtube = 'rgmp-ulEeMk',
  flavor = c(BobsRedMill_wheatGluten = 100),
  water = 150,
  yeast = 2
)
