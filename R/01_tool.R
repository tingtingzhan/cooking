





#' @title Kitchen \linkS4class{tool}s
#' 
#' @description ..
#' 
#' @slot name,name2 \link[base]{character} scalars, brand and name of kitchen tool, and its auxiliary tool
#' 
#' @slot recipe_pc \link[base]{numeric} scalar, how many times of recipe
#' 
#' @slot recipe_weight \link[base]{numeric} scalar, weight of recipe (in grams)
#' 
#' @slot treatment \link[base]{character} scalar, pre-treatment
#' 
#' @slot program \link[base]{character} scalar, program
#' 
#' @slot operation \link[base]{character} scalar or \link[base]{vector}, operation(s) on multiple days
#' 
#' @slot attachment \link[base]{character} scalar
#' 
#' @slot fahrenheit \link[base]{numeric} scalar 
#' 
#' @slot minute \link[base]{numeric} scalar
#' 
#' @slot cooling \link[base]{character} scalar or \link[base]{vector}, instructions of cooling down
#' 
#' @slot note \link[base]{character} scalar or \link[base]{vector}, other notes
#' 
#' @slot waterLost \link[base]{numeric} scalar, water evaporated in cooking (in grams) 
#' 
#' @slot alias \link[base]{character} scalar
#' @slot kitchenaid \link[base]{character} scalar
#' @slot staub \link[base]{character} scalar
#' 
#' @name tool
#' @aliases tool-class
#' @export
setClass(Class = 'tool', slots = c(
  name = 'character', alias = 'character',
  name2 = 'character',
  recipe_pc = 'numeric',
  recipe_weight = 'numeric',
  treatment = 'character',
  program = 'character',
  operation = 'character',
  attachment = 'character',
  fahrenheit = 'numeric',
  minute = 'numeric',
  cooling = 'character',
  note = 'character',
  waterLost = 'numeric',
  
  kitchenaid = 'character',
  staub = 'character'
))


setMethod(f = initialize, signature = 'tool', definition = function(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  if (length(x@kitchenaid)) {
    x@name <- c(style_hyperlink(text = x@name, url = sprintf(fmt = 'https://www.kitchenaid.com/p.%s.html', x@kitchenaid)))
    x@kitchenaid <- character()
  }
  
  if (length(x@staub)) {
    x@name <- c(style_hyperlink(text = x@name, url = sprintf(fmt = 'https://www.zwilling.com/us/%s.html', x@staub)))
    x@staub <- character()
  }
  
  if (length(x@alias)) {
    x@name <- paste(x@alias, x@name)
    x@alias <- character()
  }

  return(x)
  
})



#' @rdname show_cooking
#' @aliases show,tool-method
#' @export
setMethod(f = show, signature = 'tool', definition = function(object) {
  
  if (identical(object, new(Class = 'tool'))) return(invisible())
    
  cat(make_ansi_style('royalblue')(sprintf(fmt = '\u2756 %s \u2756\n', object@name)))
  cat(make_ansi_style('royalblue')(sprintf(fmt = '\u2756 %s \u2756\n', object@name2)))
  
  if (length(object@recipe_pc)) {
    cat(sprintf(fmt = ' \u2726 Makes x%.1f recipes at a time\n', object@recipe_pc))
  }
  
  # object@recipe_weight
  # stopifnot(identical(' ', '\u0020'))
  cat(sprintf(fmt = ' \u21ac %s\n', object@treatment), sep = '')
  
  cat(sprintf(fmt = ' \u2726 %s\n', object@program))
  cat(sprintf(fmt = ' \U1f6e0 %s\n', object@attachment))
  
  txt_fahrenheit <- col_blue(sprintf(fmt = '%.0f\u00b0F', object@fahrenheit))
  txt_celsius <- col_magenta(sprintf(fmt = '%.0f\u00b0C', (object@fahrenheit - 32) * 5/9))
  
  if (length(object@minute)) {
    min_ <- object@minute
    if (is.null(names(min_))) names(min_) <- character(length = length(min_))
    #cat(paste(' \u23f0', format_minute(min_), names(min_)), sep = '\n')
    cat(sprintf(
      fmt = ' \U1f321%s \U1f321%s \u23f0%s %s', 
      txt_fahrenheit, txt_celsius, 
      style_bold(col_red(format_minute(min_))), 
      names(min_)), sep = '\n')
  } else cat(paste(sprintf(
    fmt = ' \U1f321%s \U1f321%s', 
    txt_fahrenheit, 
    txt_celsius
  ), collapse = '\n'))
  
  
  object@operation <- gsub(pattern = '\n', replacement = '', x = object@operation)
  object@operation <- gsub(pattern = '^ *|(?<= ) | *$', replacement = '', x = object@operation, perl = TRUE)
  n <- length(object@operation)
  cat(sprintf(fmt = ' \u21ac %s\n', object@operation), sep = '')
  
  cat(sprintf(fmt = ' \u21ac %s\n', object@cooling), sep = '')
  
  cat(sprintf(fmt = ' \u2756 water evaporated: %.0f grams\n', object@waterLost))
  
  cat(sprintf(fmt = ' \u2756 %s\n', object@note), sep = '')
  
  cat('\n')
  
})


format_minute <- function(x) {
  # `x` is \link[base]{numeric} \link[base]{vector}
  if (anyNA(x)) stop('do not allow missingness in [format_minute]')
  day <- x %/% (60*24)
  x_day <- x %% (60*24)
  hour <- x_day %/% 60
  min_ <- x %% 60
  unlist(.mapply(FUN = function(...) {
    z0 <- c(...)
    z <- z0[!is.na(z0)]
    if (!length(z)) return('')
    paste(z, collapse = ' ')
  }, dots = list(
    ifelse(day > 0, yes = sprintf(fmt = '%dd', day), no = NA_character_), 
    ifelse(hour > 0, yes = sprintf(fmt = '%dhr', hour), no = NA_character_), 
    ifelse(min_ > 0, yes = sprintf(fmt = '%dmin', min_), no = NA_character_)
  ), MoreArgs = NULL))
}


thermometer <- function(...) new(
  Class = 'tool', 
  name = c(style_hyperlink(text = 'Etekcity Lasergrip 1260', url = 'https://etekcity.com/products/lasergrip-1260-infrared-thermometer')), 
  ...)

CuisinartICE70 <- function(...) new(
  Class = 'tool', 
  name = c(style_hyperlink(text = 'Cuisinart Ice Cream Maker ICE-70', url = 'https://www.cuisinart.com/ICE-70P1.html')),
  ...)

InstantPot <- function(...) new(
  Class = 'tool', 
  name = c(style_hyperlink(text = 'Instant Pot Pro, 8 Quart', url = 'https://instantpot.com/products/instant-pot-pro-8-quart-multi-use-pressure-cooker')), alias = '\u7535\u9ad8\u538b\u9505',
  ...)

KSMICM <- function(...) new(
  Class = 'tool', 
  name = 'Kitchen Aid Ice Cream Attachment KSMICM', kitchenaid = 'ksmicm',
  ...)

KSM8990 <- function(...) new(
  Class = 'tool', 
  name = 'Kitchen Aid Stand Mixer KSM8990, 8 Quart', kitchenaid = 'ksmc895ob',
  ...)

KSM3316X <- function(...) new(
  Class = 'tool', 
  name = 'Kitchen Aid Stand Mixer KSM3316X, 3.5 Quart', kitchenaid = 'ksm3316xer',
  ...)

KSEG950ESS <- function(...) new(
  Class = 'tool',
  name = 'Kitchen Aid Downdraft Range KSEG950ESS', kitchenaid = 'kseg950ess', alias = '\u70e4\u7bb1',
  ...)

RobamCT763 <- function(...) new(
  Class = 'tool', 
  name = c(style_hyperlink(text = 'Robam R-Box CT763 Combi Steam Oven', url = 'https://robamliving.com/products/robam-ct763')),
  ...)




PhilipsHD9867 <- function(...) new(
  Class = 'tool', 
  name = c(style_hyperlink(text = 'Philips Airfryer XXL HD9867', url = 'https://www.usa.philips.com/c-p/HD9867_16')), alias = '\u7a7a\u6c14\u70b8\u9505',
  ...)


JoyoungDJ13U <- function(...) new(
  Class = 'tool', 
  name = c(style_hyperlink(text = 'Joyoung Soymilk Maker DJ13U-P10', url = 'https://en.huarenstore.com/joyoung-soy-milk-maker-dj13u-p10.html')), alias = '\u8c46\u6d46\u673a', 
  ...)


JoyoungDJ06M <- function(...) new(
  Class = 'tool', 
  name = c(style_hyperlink(text = 'Joyoung Mini Soymilk Maker DJ06M', url = 'https://en.huarenstore.com/joyoung-soymilk-maker-dj06m.html')), alias = '\u8ff7\u4f60\u8c46\u6d46\u673a', 
  ...)


JoyoungDJ13U_soymilk <- function(
    treatment = c(
      paste('Soak dry beans', col_br_blue('e.g., soybean, chickpea, mung bean, etc.'), 'overnight in fridge')
    ),
    program = '\u8001\u8c46\u6d46\u7a0b\u5e8f Classic Soymilk program, 1300ml water line',
    waterLost = 45, # whole machine, 4175 - 4131, 2024-09-15
    ...
) JoyoungDJ13U(treatment = treatment, program = program, waterLost = waterLost, ...)


JoyoungDJ06M_soymilk <- function(
    treatment = c(
      paste0('Soak dry beans ', col_br_blue('e.g., soybean, chickpea, mung bean, etc.'), ' overnight in fridge')
    ),
    program = '\u8c46\u6d46\u7a0b\u5e8f Soymilk program, 600ml water line',
    waterLost = 5, # soymilk 2130 - 2126, confirmed 2024-10-08
    ...
) JoyoungDJ06M(treatment = treatment, program = program, waterLost = waterLost, ...)


JoyoungDJ13U_cornjuice <- function(
  program = '\u7389\u7c73\u6c41\u7a0b\u5e8f Corn\U1f33d Juice program, 900ml water line',
  operation = c(
    'Do not use 1300ml water line, cannot push down blades',
    'Machine gives error if pre-blended'
  ), 
  ...
) JoyoungDJ13U(program = program, operation = operation, ...)


JoyoungCJA9U <- function(
    program = '\u7206\u7092\u7a0b\u5e8f Stir Fry program',
    ...
) new(
  Class = 'tool',
  name = c(unclass(style_hyperlink(text = 'Joyoung Stir-Frying Machine CJ-A9U', url = 'https://en.huarenstore.com/joyoung-cooking-machine-cj-a9u.html'))), alias = '\u7092\u83dc\u673a',
  program = program,
  ...)

nutribullet20 <- function(...) new(
  Class = 'tool',
  name = c(style_hyperlink(text = 'Nutribullet Ultra 20 fl. oz. Blending Cup', url = 'https://www.nutribullet.com/shop/accessories/nutribullet-tritan-renew-20oz-cup/')),
  ...) 

nutribullet24 <- function(...) new(
  Class = 'tool',
  name = c(style_hyperlink(text = 'Nutribullet Ultra 24 fl. oz. Blending Cup', url = 'https://www.nutribullet.com/shop/accessories/nutribullet-tritan-renew-24-oz-cup-with-to-go-lid/')),
  ...) 

Stanley20 <- function(...) new(
  Class = 'tool',
  name = c(style_hyperlink(text = 'Stanley 20oz Quencher', url = 'https://www.stanley1913.com/products/adventure-quencher-travel-tumbler-20-oz')),
  ...)

Stanley14 <- function(...) new(
  Class = 'tool',
  name = c(style_hyperlink(text = 'Stanley 14oz Quencher', url = 'https://www.stanley1913.com/products/adventure-quencher-travel-tumbler-14-oz')),
  ...)

Staub_vertRoaster <- function(...) new(
  Class = 'tool',
  name = 'Staub Vertical Chicken Roaster', staub = '1200023', alias = '\u94f8\u94c1\u70e4\u9e21\u67b6',
  name2 = KSEG950ESS()@name,
  ...)

Staub_deepSkillet <- function(...) new(
  Class = 'tool',
  name = 'Staub Deep Skillet, 8.5 inch', staub = '1029479', alias = '\u94f8\u94c1\u5e73\u5e95\u9505',
  ...
)


