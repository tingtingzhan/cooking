
# source('./inst/extRef/wrapper.R')


#' @title commercial wrapper
#' 
#' @description
#' ..
#' 
#' @examples
#' diagnose_(
#'  PinNuo_wonton,
#'  PinNuo_gyoza,
#'  xiaogaojie_gyoza1,
#'  xiaogaojie_gyoza2,
#'  wrapperlinda
#' )
#' 
#' 
#' 
#' @name wrapper
#' @export
PinNuo_gyoza <- function() new(
  Class = 'pino', alias_flavor = '\u997a\u5b50\u76ae',
  flour = 500,
  starch = c(BobsRedMill_potato = 20), salt = 3,
  eggWhite_pc = 1, water = 240,
  youtube = 'zh51m2CH_Ok')

#' @rdname wrapper
#' @export
xiaogaojie_gyoza1 <- function() new(
  Class = 'xiaogaojie', alias_flavor = '\u997a\u5b50\u76ae1',
  youtube = c(
    '1' = 'OBZVkExf27I', 
    '2' = '76K8D_cwcvU',
    'no acurate weight' = 'Jcn-gbF7JyU'
  ),
  flour = 400,
  salt = 1,
  water = 192
)

#' @rdname wrapper
#' @export
xiaogaojie_gyoza2 <- function() new(
  Class = 'xiaogaojie', alias_flavor = '\u997a\u5b50\u76ae2',
  youtube = 'lRhN263_W_Y',
  flour = 420,
  salt_tsp = 1/4,
  water = 190)


#laofangu_gyoza <- function() new(
#  Class = 'laofangu', alias_flavor = 'JiaoZi', youtube = 'ngBCZxri3-s',
#  # no data!!!
#)


#' @rdname wrapper
#' @export
PinNuo_wonton <- function() new(
  Class = 'pino', alias_flavor = '\u9984\u9968\u76ae',
  flour = 500, salt = 3, Na2CO3 = 1, water = 210,
  youtube = 'XzVsRPwGmuE')
