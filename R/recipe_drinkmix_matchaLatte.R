
#' @title Matcha Latte
#' 
#' @description ..
#' 
#' @examples
#' matchaLatte()
#' @name matchaLatte
#' @aliases matchaLatteMix-class
#' @export
setClass(Class = 'matchaLatteMix', contains = 'drinkmix', prototype = prototype(
  alias_class = 'Latte Mix', # 'Latte\u901f\u6eb6\u7c89',
  drymilk = c(Carnation = 32, Nido_drymilk = 8),
  sugar_tsp = 1*2
))


#' @rdname matchaLatte
#' @export
matchaLatte <- function() new(
  Class = 'matchaLatteMix',
  matcha_tsp = c(Marukyu_tenju = 3*2),
  sugar_tsp = .5*2,
  # date = as.Date('2025-05-31'), # confirm in 2025 (with reduced sugar)
  pros = c(
    'must use the most expensive sado-grade matcha!',
    'tenju oxidize very slow'
  ),
  review = c('for cheaper sado-grade matcha, slightly increase sugar up to x2',
             'never use culinary-grade matcha!'))

ikuyoLatte <- function() new(
  Class = 'matchaLatteMix', 
  matcha_tsp = c(Ippodo_ikuyo = 3*2), 
  date = as.Date('2024-09-10'),
  cons = 'ikuyo oxidize quite fast')










#' @title Matcha Latte with Goat Milk
#' 
#' @description
#' 6g of sado-grade matcha.
#' 
#' @examples
#' matchaGoatLatte()
#' 
#' diagnose(
#'  matchaLatte,
#'  matchaGoatLatte
#' ) # compare dry powder
#' 
#' diagnose(
#'  hotdrink(matchaLatte),
#'  hotdrink(matchaGoatLatte)
#' ) # compare hot drink
#' @name matchaGoatLatte
#' @aliases matchaGoatLatteMix-class
#' @export
setClass(Class = 'matchaGoatLatteMix', contains = 'drinkmix', prototype = prototype(
  alias_class = '\u7f8a\u5976Latte\u901f\u6eb6\u7c89',
  drymilk = c(Meyenberg_goat_drymilk = 10*2, Meyenberg_goatWhole_drymilk = 10*2)
))

#' @rdname matchaGoatLatte
#' @export
matchaGoatLatte <- function() new(
  Class = 'matchaGoatLatteMix', 
  matcha_tsp = c(Marukyu_tenju = 3*2), 
  sugar_tsp = 1.5*2,
  review = 'to confirm in Summer 2025 with new crop of tenju!')

ikuyoGoatLatte <- function() new(Class = 'matchaGoatLatteMix', matcha_tsp = c(Ippodo_ikuyo = 2.5*2), sugar_tsp = 4*2, pros = 'okay')

sayakaGoatLatte <- function() new(Class = 'matchaGoatLatteMix', matcha_tsp = c(Ippodo_sayaka = 2.5*2), sugar_tsp = 4*2, pros = 'okay')

matchaLatte_maeda <- function() new(Class = 'matchaLatteMix', drymilk = c(Carnation = 25*2), matcha_Tbsp = c(maeda_matcha = 1*2), sugar_tsp = 1.5*2, pros = 'okay')

matchaLatte_ito <- function() new(Class = 'matchaLatteMix', drymilk = c(Carnation = 25*2), matcha_Tbsp = c(ItoEn_matcha = 1*2), sugar_tsp = 1.5*2, pros = 'okay')

