

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
#' @export
setClass(Class = 'beanPaste', contains = 'recipe', prototype = prototype(
  class2 = '\u8c46\u6c99(66%)',
  portion = c(
    # \linkS4class{beanPaste} is eaten hot
    # 'mochi 10g wrapper \u9ebb\u85af10g\u76ae' = 5, 
    # 'mooncake 15g wrapper in 30g mold \u6708\u997c30g\u6a21\u5177' = 15,
    '\u5305\u5b50 bao 25g wrapper' = 25, # try
    '\u5305\u5b50 bao 40g wrapper\U1f389' = 40 # dont go any bigger!!
    
  )
))


#' @rdname beanPaste-class
#' @export
adzukiBeanPaste <- \() new(
  Class = 'beanPaste',
  bean = c(HaiTai_adzukibean = 200), water = 1330 - 200, # confirmed
  dairy = c(Kerrygold_butter = 53), 
  sugar = c(Domino_darkBrown = 67),
  tool = list(
    JoyoungDJ13U_soymilk(
      treatment = 'dried bean + water, no soaking needed',
      waterLost = 40 # to confirm
    ),
    JoyoungCJA9U_filling( 
      minute = 20, # to confirm
      waterLost = 430 # to confirm
    ))
)



#' @rdname beanPaste-class
#' @export
redKidneyBeanPaste <- \() new(
  Class = 'beanPaste',
  bean = c(Iberia_redkidneybean = 200), water = 1325-200, # confirmed
  dairy = c(Kerrygold_butter = 60), 
  sugar = c(Domino_darkBrown = 85),
  tool = list(
    JoyoungDJ13U_soymilk(
      treatment = 'dried bean + water, no soaking needed',
      waterLost = 40 # 4201g - 4163g, confirmed!!
    ),
    JoyoungCJA9U_filling( 
      minute = 20, # confirmed!
      waterLost = 430 # 2342g - 1910g, confirmed!
  )),
  pros = 'works')



#setClass(Class = 'beanMud', contains = 'recipe', prototype = prototype(
#  class2 = '\u8c46\u6ce5',
#  tool = list(JoyoungDJ13U(operation = '900ml water line')
#)))

#adzukiBeanMud <- \() new(
#  Class = 'beanMud', flavor = '\u7ea2',
#  bean = c(HaiTai_adzukibean = 130), water = 815, waterLost = 65)

#adzukiBeanPaste_OLD <- \() new(
#  Class = 'beanPaste', flavor = '\u7ea2',
#  homemade = c(adzukiBeanMud = 600), waterLost = 300, # confirmed!!
#  sugar = c(Domino_darkBrown = 30),
#  dairy = c(Kerrygold_butter = 24),
#  tool = list(JoyoungCJA9U_filling(
#    minute = 15
#    )
#  ))) # I love!!!




#' @rdname beanPaste-class
#' @export
xiaogaojie_adzukiBeanPaste1 <- \() new(
  Class = 'recipe', flavor = '\u7ea2\u8c46\u6c991',
  bean = c(HaiTai_adzukibean = 500),
  water = 350, # actual water absorbed
  oil = c(Wegmans_corn_oil = 12),
  sugar = c(Domino_darkBrown = 75),
  homemade = c(invertSugar = 80),
  #糖（调整量）24克  2 大勺
  salt_tsp = 1/4,
  xiaogaojie = 'mg1XeWsfHoQ')



#' @rdname beanPaste-class
#' @export
xiaogaojie_adzukiBeanPaste2 <- \() new(
  Class = 'recipe', flavor = '\u7ea2\u8c46\u6c992',
  xiaogaojie = 'Jsqhb8i4ntU',
  bean = c(HaiTai_adzukibean = 200),
  water = 700, 
  #waterLost = 350, # this is high oil!   !!!to reach water 37.5% as xiaogaojie_adzukiBeanPaste1()
  Na2CO3_tsp = 1/8,
  oil = c(Wegmans_corn_oil = 120),
  sugar = c(Domino_darkBrown = 100))


#mungBeanPaste 
#  url = 'https://www.douguo.com/cookbook/3142617.html',
  


#chickpeaPaste 
#  url = 'https://www.xiachufang.com/recipe/100548680/')


#https://www.youtube.com/watch?v=IRZ7Hp74Yc8
# redKidneyBeanPaste 红芸豆沙 
# whiteKidneyBeanPaste 白芸豆沙

