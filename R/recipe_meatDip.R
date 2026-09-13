

#' @title \linkS4class{meatDip} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' diagnose(
#'  BalsamicVinaigrette_meatDip(),
#'  srirachaBBQ_meatDip(),
#'  sweetGinger_meatDip(),
#'  jalapeno_meatDip()
#' )
#' 
#' 
#' @name meatDip-class
#' @export
setClass(Class = 'meatDip', contains = 'recipe', prototype = prototype(
  alias_class = '\U0001f356 Dipping Sauce'
))

#' @rdname meatDip-class
#' @export
BalsamicVinaigrette_meatDip <- \() new(
  Class = 'meatDip',
  alias_flavor = 'Balsamic Vinaigrette',
  sauce_Tbsp = c(
    TraderJoes_BalsamicVinaigrette = 1,
    Kikkoman_soyLite = 1/2
  ),
  sauce_tsp = c(
    Kadoya_sesameOil = 1/2,
    YaoMaZi_rattanPepperOil = 1/4
  ),
  review = '2026 Summer love. try next time and confirm!!'
)

#' @rdname meatDip-class
#' @export
srirachaBBQ_meatDip <- \() new(
  Class = 'meatDip', 
  alias_flavor = 'Sriracha BBQ',
  sauce_Tbsp = c(
    TraderJoes_srirachaBBQ = 1,
    Kikkoman_soyLite = 1/2,
    mizkan_brownRiceVinegar = 1/2 # a little too thick; add rice vinegar next time
  ),
  sauce_tsp = c(
    Kadoya_sesameOil = 1/2,
    YaoMaZi_rattanPepperOil = 1/4
  ),
  date = as.Date('2026-09-12'),
  
  review = 'a little too thick; add rice vinegar next time'
)



#' @rdname meatDip-class
#' @export
sweetGinger_meatDip <- \() new(
  Class = 'meatDip', 
  alias_flavor = 'Thai Sweet Ginger',
  sauce_Tbsp = c(
    TraderJoes_ThaiGinger = 1
  ),
  sauce_tsp = c(
    Kadoya_sesameOil = .5
  ),
  water_tsp = 1,
  date = as.Date('2026-09-07'),
  review = 'very good!'
)

#' @rdname meatDip-class
#' @export
jalapeno_meatDip <- \() new(
  Class = 'meatDip', 
  alias_flavor = 'Jalapeno',
  sauce_tsp = c(
    TraderJoes_jalapenoSauce = 1.5,
    mizkan_brownRiceVinegar = 1.5,
    Kikkoman_soyLite = 1.5,
    Kadoya_sesameOil = .5,
    YaoMaZi_rattanPepperOil = .25
  ),
  sugar_tsp = 1.5,
  date = as.Date('2026-09-07'),
  review = 'okay, not great. Add sugar and try again'
)

