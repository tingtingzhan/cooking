


#' @title Meat Tenderizer
#' 
#' @description ..
#' 
#' @examples  
#' meatTenderizer()
#' 
#' @export
meatTenderizer <- function() new(
  Class = 'recipe', 
  alias = '\u5ae9\u8089/\u6d17\u8840\u6c34',
  NaHCO3_tsp = 1/4, 
  water = 300,
  note = c(
    'NaHCO3 must not exceed 3 grams per 500 grams of meat',
    'Must rinse off NaHCO3 thoroughly to avoid subsequent saponification with hot oil',
    'Many sauces contain corn starch already'
  ),
  instruction = c(
    'Disolve NaHCO3 in water',
    'Soak sliced meat for 15min',
    'Rinse thoroughly and squeeze dry',
    'Marinade with (corn starch and) favorite sauce'
  ),
  youtube = 'Etf9zxVjhKM',
  review = c('Cut against grain: lamb leg, beef chuck short ribs, beef chuck',
             'Cut along grain: beef flank',
             'Significantly improves: beef eye round',
             'Do not use: pork tenderloin (spam instead)'))

