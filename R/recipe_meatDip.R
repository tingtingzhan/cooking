

#' @title \linkS4class{meatDip} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' diagnose(
#'  BalsamicVinaigrette_meatDip,
#'  srirachaBBQ_meatDip,
#'  sweetGinger_meatDip,
#'  jalapeno_meatDip
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
    TraderJoes_BalsamicVinaigrette = 2,
    Kikkoman_soyLite = 1
  ),
  sauce_tsp = c(
    Kadoya_sesameOil = 1,
    YaoMaZi_rattanPepperOil = 1/2
  ),
  review = '2026 Summer love.  need to confirm next time'
)

#' @rdname meatDip-class
#' @export
srirachaBBQ_meatDip <- \() new(
  Class = 'meatDip', 
  alias_flavor = 'Sriracha BBQ',
  sauce_Tbsp = c(
    TraderJoes_srirachaBBQ = .5,
    mizkan_brownRiceVinegar = .5
  ),
  sauce_tsp = c(
    Kadoya_sesameOil = .5,
    YaoMaZi_rattanPepperOil = .25
  ),
  date = as.Date('2026-09-05'),
  review = 'perfect!!'
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
  sauce_Tbsp = c(
    TraderJoes_jalapenoSauce = .5,
    mizkan_brownRiceVinegar = .5,
    Kikkoman_soyLite = .5 # 1Tbsp too salty! try .5 next time
  ),
  sauce_tsp = c(
    Kadoya_sesameOil = .5,
    YaoMaZi_rattanPepperOil = .25
  ),
  date = as.Date('2026-09-07'),
  review = 'very good!'
)

