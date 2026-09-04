

#' @title \linkS4class{meatDip} Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' diagnose(
#'  meatDip_BalsamicVinaigrette,
#'  meatDip_srirachaBBQ
#' )
#' 
#' 
#' @name meatDip-class
#' @export
setClass(Class = 'meatDip', contains = 'recipe', prototype = prototype(
  alias_class = 'Dipping Sauce for Meat'
))

#' @rdname meatDip-class
#' @export
meatDip_BalsamicVinaigrette <- \() new(
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
meatDip_srirachaBBQ <- \() new(
  Class = 'meatDip', 
  alias_flavor = 'Sriracha BBQ',
  sauce_Tbsp = c(
    TraderJoes_srirachaBBQ = .5,
    mizkan_brownRiceVinegar = 1
  ),
  sauce_tsp = c(
    Kadoya_sesameOil = 1
  ),
  review = 'a little too sour.  still trying'
)
