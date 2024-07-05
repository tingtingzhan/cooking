
# source('./inst/extRef/noodle.R')


# shanghai you-mian
# https://www.twinmarquis.com/products/thin-shanghai-style-plain-noodle/
# https://www.twinmarquis.com/zh-hant/products/plain-noodle-thin/



#' @title commercial noodle
#' 
#' @description
#' ..
#' 
#' @examples
#' diagnose_(
#'  PinNuo_noodleSliced,
#'  PinNuo_noodleShouGan1,
#'  PinNuo_noodleShouGan2,
#'  PinNuo_noodleBelt,
#'  PinNuo_noodleDrawn,
#'  laofangu_noodle2,
#'  noodlelinda,
#'  laofangu_noodle1
#' )
#' 
#' @name noodle
#' @export
PinNuo_noodleShouGan1 <- function() new(
  Class = 'pino', alias_flavor = '\u624b\u64c0\u9762',
  breadFlour = 1e3, salt = 10, Na2CO3 = 2, water = 450,
  youtube = 'K8KOlkS1t3Y')

#' @rdname noodle
#' @export
PinNuo_noodleShouGan2 <- function() new(
  Class = 'pino', alias_flavor = '\u624b\u64c0\u9762',
  flour = 1e3, salt = 6, Na2CO3 = 3, water = 460,
  youtube = 'ZniWDwJQPlE')

#' @rdname noodle
#' @export
PinNuo_noodleBelt <- function() new(
  Class = 'pino', alias_flavor = '\u88e4\u5e26\u9762',
  flour = 500, salt = 5, water = 230,
  youtube = '1IXkEyN5_Ug')

#' @rdname noodle
#' @export
PinNuo_noodleDrawn <- function() new(
  Class = 'pino', alias_flavor = '\u62c9\u6761\u5b50/BiangBiang\u9762',
  flour = 500, # all purpose or bread flour!
  salt = 3, water = 230,
  youtube = c(
    lamian1 = 'ShHcRVuutpI', 
    lamian2 = 'MkBNa4MPwFM', 
    biangbiangmian = 'Qn5C_Fm_ZQA', 
    zhajiangmian = 'qqldhABtQFA'
  ))

#' @rdname noodle
#' @export
PinNuo_noodleSliced <- function() new(
  Class = 'pino', alias_flavor = '\u5200\u524a\u9762',
  flour = 1e3, salt = 10, water = 400,
  youtube = 'GUVKci-ZIoE')



#' @rdname noodle
#' @export
laofangu_noodle1 <- function() new(
  Class = 'laofangu', alias_flavor = '\u709d\u9505\u9762',
  flour = 300, water = 150, eggWhite_pc = 1,
  youtube = '-UZI8tbAzrM')

#' @rdname noodle
#' @export
laofangu_noodle2 <- function() new(
  Class = 'laofangu', alias_flavor = '\u6c46\u9762',
  flour = 500*1.5, water = 300+100,
  youtube = 'pLwoomU2pr8')
