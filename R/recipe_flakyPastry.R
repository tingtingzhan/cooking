
# read carefully
#https://www.sohu.com/a/147900654_177351



#' @title \linkS4class{waterDough}, \linkS4class{shortDough} and \linkS4class{largeYouSu} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' diagnose(
#'  Dad_yolkPastry_waterDough,
#'  Dad_oxTongue1_waterDough, 
#'  Dad_oxTongue2_waterDough,
#'  Dad_blackSesamePastry_waterDough, 
#'  Dad_pepperPastry_waterDough,
#'  laofangu_durianSu_waterDough,
#'  Dad_flowerPastry_waterDough, 
#'  shangshi_oxTongue_waterDough,
#'  laofangu_magnolia_waterDough,
#'  PinNuo_oxTongue_waterDough,
#'  Dad_sweetPastry_waterDough
#' )
#' 
#' diagnose(
#'  shangshi_oxTongue_shortDough,
#'  Dad_flowerPastry_shortDough,
#'  Dad_oxTongue1_shortDough,
#'  Dad_yolkPastry_shortDough,
#'  laofangu_magnolia_shortDough,
#'  Dad_sweetPastry_shortDough,
#'  Dad_pepperPastry_shortDough,
#'  laofangu_durianSu_shortDough
#' )
#' 
#' diagnose(
#'  Dad_blackSesamePastry_largeYouSu,
#'  PinNuo_largeYouSu
#' )
#' 
#' @references
#' \url{https://en.wikipedia.org/wiki/Chinese_flaky_pastry}
#' 
#' \url{https://cookclimbcode.substack.com/p/chinese-flaky-pastry}
#' 
#' 
#' 
#' 
#' @name flakyPastry
#' @aliases waterDough-class
#' @export
setClass(Class = 'waterDough', contains = 'recipe', prototype = prototype(
  alias_class = '\u6dee\u626c\u6c34\u6cb9\u9762\u76ae'
))

waterDough <- function() new(
  Class = 'waterDough',
  pastryFlour = 400, lard = 50, water = 150,
  review = 'try'
)


#' @rdname flakyPastry
#' 
#' @details
#' \linkS4class{shortDough}, or shortened dough, is solid.
#' 
#' @aliases shortDough-class
#' @export
setClass(Class = 'shortDough', contains = 'recipe', prototype = prototype(
  alias_class = '\u5c0f\u5305\u9165'
))

#' @rdname flakyPastry
#' @aliases shortDough-class
#' @export
shortDough_lard <- function() new(
  Class = 'shortDough', 
  pastryFlour = 200, lard = 80,
  review = 'try'
)



#' @rdname flakyPastry
#' 
#' @details
#' \linkS4class{largeYouSu} is a paste.
#' 
#' @aliases largeYouSu-class
#' @export
setClass(Class = 'largeYouSu', contains = 'recipe', prototype = prototype(
  alias_class = '\u5927\u5305\u9165'
))
















#' @rdname flakyPastry
#' @export
Dad_flowerPastry_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u9c9c\u82b1\u997c(\u6c34)', 
  dad1966 = 'DNnpZDUWJYk',
  flour = 150, oil = c(Wegmans_vegetable = 40), sugar = 10, water = 85,
  portion = c('4x\u9c9c\u82b1\u997c(\u5927\u5305\u9165)' = 71))


#' @rdname flakyPastry
#' @export
Dad_flowerPastry_shortDough <- function() new(
  Class = 'recipe', alias_flavor = '\u9c9c\u82b1\u997c water', 
  dad1966 = 'DNnpZDUWJYk',
  flour = 150, oil = c(Wegmans_vegetable = 75),
  portion = c('4x\u9c9c\u82b1\u997c(\u5927\u5305\u9165)' = 56))


#' @rdname flakyPastry
#' @export
Dad_oxTongue1_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u725b\u820c\u997c1(\u6c34)',
  flour = 120, oil = c(Wegmans_vegetable = 30), sugar = 10, water = 60,
  portion = c(
    '2x\u725b\u820c\u997c(\u5c0f\u5305\u9165)' = 35
  ),
  dad1966 = 'v4fPRmuu5dA')

#' @rdname flakyPastry
#' @export
Dad_oxTongue1_shortDough <- function() new(
  Class = 'recipe', alias_flavor = '\u725b\u820c\u997c1',
  flour = 120,
  oil = c(Wegmans_vegetable = 60),
  portion = c(
    '2x\u725b\u820c\u997c(\u5c0f\u5305\u9165)' = 30
  ),
  dad1966 = 'v4fPRmuu5dA') #c(
  #  'Dec 2020' = 'v4fPRmuu5dA',
  #  'Jan 2024' = 'XLj7W76UFbs'
  #)

#' @rdname flakyPastry
#' @export
shangshi_oxTongue_shortDough <- function() new(
  Class = 'recipe', alias_flavor = '\u725b\u820c\u997c', 
  shangshikitchen = '2maemGhLN8c',
  flour = 140, butter = 70,
  portion = c('\u5c0f\u5305\u9165' = 13))

#' @rdname flakyPastry
#' @export
shangshi_oxTongue_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u725b\u820c\u997c(\u6c34)',
  flour = 200,
  portion = c('\u5c0f\u5305\u9165' = 24),
  butter = 43, sugar = 35, water = 110,
  shangshikitchen = '2maemGhLN8c')



#' @rdname flakyPastry
#' @export
Dad_blackSesamePastry_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u9ed1\u829d\u9ebb\u9165\u997c(\u6c34)', 
  dad1966 = 'n_J9ly98Tvw',
  flour = 300, sugar = 30, water = 160, lard = 50,
  portion = c('\u5927\u5305\u9165' = 36))


#' @rdname flakyPastry
#' @export
Dad_blackSesamePastry_largeYouSu <- function() new(
  Class = 'recipe', alias_flavor = '\u9ed1\u829d\u9ebb\u9165\u997c', 
  dad1966 = 'n_J9ly98Tvw',
  flour = 100, oil = c(Mazola_corn = 100),
  portion = c('\u5927\u5305\u9165' = 12.5))



#' @rdname flakyPastry
#' @export
Dad_yolkPastry_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u54b8\u86cb\u9ec4\u9165(\u6c34)',
  flour = 240,
  ghee = 80, sugar = 10, water = 120,
  dad1966 = 'j-Y4KeE69DY')

#' @rdname flakyPastry
#' @export
Dad_yolkPastry_shortDough <- function() new(
  Class = 'recipe', alias_flavor = '\u54b8\u86cb\u9ec4\u9165',
  flour = 240,
  ghee = 120,
  dad1966 = 'j-Y4KeE69DY')

# @rdname flakyPastry
# @export
cocoa_Dad_yolkPastry_largeYouSu <- function() new(
  Class = 'recipe', Dad_yolkPastry_shortDough(), cocoa = 12)

# @rdname flakyPastry
# @export
matcha_Dad_yolkPastry_largeYouSu <- function() new(
  Class = 'recipe', Dad_yolkPastry_shortDough(), matcha = 12)


#' @rdname flakyPastry
#' @export
PinNuo_oxTongue_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u725b\u820c\u997c(\u6c34)',
  flour = 500,
  yeast = 4, Na2CO3 = 1, water = 320, 
  pino = 'fC2zXSK9PxM') # this video has no largeYouSu recipe!

#' @rdname flakyPastry
#' @export
PinNuo_largeYouSu <- function() new(
  Class = 'recipe', alias_flavor = 'large you-su',
  flour = 100,
  spice5 = 3,
  salt = 10, oil = c(Wegmans_vegetable = 120),
  pino = 'SbeWX67yd14')


#' @rdname flakyPastry
#' @export
laofangu_magnolia_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u7389\u5170\u82b1(\u6c34)', 
  laofangu = 'h39opPVlGKo',
  flour = 125, lard = 30, water = 80)

#' @rdname flakyPastry
#' @export
laofangu_magnolia_shortDough <- function() new(
  Class = 'recipe', alias_flavor = '\u7389\u5170\u82b1', 
  laofangu = 'h39opPVlGKo',
  pastryFlour = 125, lard = 65) # pastryFlour confirmed!!

#' @rdname flakyPastry
#' @export
Dad_pepperPastry_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u6912\u76d0\u9165(\u6c34)', 
  dad1966 = 'D5bRV_pcywY',
  flour = 400, water = 210, butter = 60)

#' @rdname flakyPastry
#' @export
Dad_pepperPastry_shortDough <- function() new(
  Class = 'recipe', alias_flavor = '\u6912\u76d0\u9165', 
  dad1966 = 'D5bRV_pcywY',
  starch = c(Wegmans_corn = 150), # will be more flaky!
  butter = 150)



#' @rdname flakyPastry
#' @export
laofangu_durianSu_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u69b4\u83b2\u9165(\u6c34)', 
  laofangu = 'p7CExuQQWiA',
  pastryFlour = 250, sugar = 25, lard = 25, # pastryFlour!!
  egg_pc = 1, water = 100)


#' @rdname flakyPastry
#' @export
laofangu_durianSu_shortDough <- function() new(
  Class = 'recipe', alias_flavor = '\u69b4\u83b2\u9165', 
  laofangu = 'p7CExuQQWiA',
  pastryFlour = 250, butter = 450) # pastryFlour!!

#' @rdname flakyPastry
#' @export
Dad_sweetPastry_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u7cd6\u9165\u997c(\u6c34)', 
  dad1966 = 'CEHbZrNHNG4',
  flour = 500, yeast = 4, water = 320)

#' @rdname flakyPastry
#' @export
Dad_sweetPastry_shortDough <- function() new(
  Class = 'recipe', alias_flavor = '\u7cd6\u9165\u997c', 
  dad1966 = 'CEHbZrNHNG4',
  flour = 300, oil = c(Wegmans_vegetable = 160))

#' @rdname flakyPastry
#' @export
Dad_oxTongue2_waterDough <- function() new(
  Class = 'recipe', alias_flavor = '\u725b\u820c\u997c2(\u6c34)',
  flour = 200, water = 100, lard = 60,
  dad1966 = 'XLj7W76UFbs')

