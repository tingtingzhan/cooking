

#' @title \linkS4class{beanPaste} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' adzukiBeanPaste()
#' redKidneyBeanPaste()
#' 
#' xiaogaojie_adzukiBeanPaste1()
#' xiaogaojie_adzukiBeanPaste2()
#' 
#' @name beanPaste
#' @aliases beanPaste-class
#' @export
setClass(Class = 'beanPaste', contains = 'recipe', prototype = prototype(
  alias_class = '\u8c46\u6c99(66%)',
  portion = c(
    # \linkS4class{beanPaste} is eaten hot
    # 'mochi 10g wrapper \u9ebb\u85af10g\u76ae' = 5, 
    # 'mooncake 15g wrapper in 30g mold \u6708\u997c30g\u6a21\u5177' = 15,
    '\u5305\u5b50 bao 25g wrapper' = 25, # try
    '\u5305\u5b50 bao 40g wrapper\U1f389' = 40 # dont go any bigger!!
    
  )
))


#' @rdname beanPaste
#' @export
adzukiBeanPaste <- function() new(
  Class = 'beanPaste',
  adzukibean = 200, water = 1330 - 200, # confirmed
  butter = 53, brownSugar = 67,
  JoyoungDJ13U = JoyoungDJ13U_soymilk(
    treatment = 'dried bean + water, no soaking needed',
    waterLost = 40 # to confirm
  ),
  JoyoungCJA9U = JoyoungCJA9U( 
    treatment = 'hot, fresh bean mud + butter',
    operation = c(
      '15min+5min, stir occasionally', # to confirm
      'fold brown sugar into hot, cooked paste'
    ),
    waterLost = 430 # to confirm
  )
)



#' @rdname beanPaste
#' @export
redKidneyBeanPaste <- function() new(
  Class = 'beanPaste',
  redKidneyBean = 200, water = 1325-200, # confirmed
  butter = 60, brownSugar = 85,
  JoyoungDJ13U = JoyoungDJ13U_soymilk(
    treatment = 'dried bean + water, no soaking needed',
    waterLost = 40 # 4201g - 4163g, confirmed!!
  ),
  JoyoungCJA9U = JoyoungCJA9U( 
    treatment = c('hot, fresh bean mud + butter'),
    operation = c(
      '15min+5min, stir occasionally', # confirmed!
      'fold brown sugar into hot, cooked paste'
    ),
    waterLost = 430 # 2342g - 1910g, confirmed!
  ),
  pros = 'works')



#setClass(Class = 'beanMud', contains = 'recipe', prototype = prototype(
#  alias_class = '\u8c46\u6ce5',
#  JoyoungDJ13U = JoyoungDJ13U(operation = '900ml water line')
#))

#adzukiBeanMud <- function() new(
#  Class = 'beanMud', alias_flavor = '\u7ea2',
#  adzukibean = 130, water = 815, waterLost = 65)

#adzukiBeanPaste_OLD <- function() new(
#  Class = 'beanPaste', alias_flavor = '\u7ea2',
#  homemade = c(adzukiBeanMud = 600), waterLost = 300, # confirmed!!
#  brownSugar = 30,
#  butter = 24,
#  JoyoungCJA9U = JoyoungCJA9U(
#    treatment = 'bean mud + oil',
#    program = 'Stir Fry \u7206\u7092',
#    operation = c(
#      '15min, stir every 1-2min',
#      'Fold brown sugar into hot, cooked paste'
#    )
#  )) # I love!!!




#' @rdname beanPaste
#' @export
xiaogaojie_adzukiBeanPaste1 <- function() new(
  Class = 'recipe', alias_flavor = '\u7ea2\u8c46\u6c991',
  adzukibean = 500,
  water = 350, # actual water absorbed
  oil = c(Wegmans_corn = 12),
  brownSugar = 75,
  homemade = c(invertSugar = 80),
  #糖（调整量）24克  2 大勺
  salt_tsp = 1/4,
  xiaogaojie = 'mg1XeWsfHoQ')



#' @rdname beanPaste
#' @export
xiaogaojie_adzukiBeanPaste2 <- function() new(
  Class = 'recipe', alias_flavor = '\u7ea2\u8c46\u6c992',
  xiaogaojie = 'Jsqhb8i4ntU',
  adzukibean = 200,
  water = 700, 
  waterLost = 350, # this is high oil!   !!!to reach water 37.5% as xiaogaojie_adzukiBeanPaste1()
  Na2CO3_tsp = 1/8,
  oil = c(Wegmans_corn = 120),
  brownSugar = 100)


#mungBeanPaste 
#  url = 'https://www.douguo.com/cookbook/3142617.html',
  


#chickpeaPaste 
#  url = 'https://www.xiachufang.com/recipe/100548680/')


#https://www.youtube.com/watch?v=IRZ7Hp74Yc8
# redKidneyBeanPaste 红芸豆沙 
# whiteKidneyBeanPaste 白芸豆沙

