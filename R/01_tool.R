





#' @title Kitchen \linkS4class{tool}s
#' 
#' @description ..
#' 
#' @slot name \link[base]{character} scalar, brand and name of kitchen tool
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
#' @param object \linkS4class{tool} object
#' 
#' @name tool
#' @aliases tool-class
#' @export
setClass(Class = 'tool', slots = c(
  name = 'character',
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
  waterLost = 'numeric'
))


#' @rdname tool
#' @export
setMethod(f = show, signature = 'tool', definition = function(object) {
  
  if (identical(object, new(Class = 'tool'))) return(invisible())
    
  cat(sprintf(fmt = '\u2756 %s \u2756\n', object@name))
  
  if (length(object@recipe_pc)) {
    cat(sprintf(fmt = ' \u2726 Makes x%.1f recipes at a time\n', object@recipe_pc))
  }
  
  # object@recipe_weight
  # stopifnot(identical(' ', '\u0020'))
  cat(sprintf(fmt = ' \u21ac %s\n', object@treatment), sep = '')
  
  cat(sprintf(fmt = ' \u2726 %s\n', object@program))
  cat(sprintf(fmt = '  \U1f6e0 %s\n', object@attachment))
  cat(sprintf(fmt = '  \U1f321 %d\u00b0F; %d\u00b0C\n', object@fahrenheit, round((object@fahrenheit - 32) * 5/9)))
  
  if (length(object@minute)) {
    min_ <- object@minute
    if (is.null(names(min_))) names(min_) <- character(length = length(min_))
    cat(paste0('  \u23f0 ', ifelse(
      test = min_ > 60, 
      yes = sprintf(fmt = '%.2g hours', min_ / 60),
      no = sprintf(fmt = '%d minutes', min_)
    ), ifelse(
      test = nchar(names(min_)) > 0L,
      yes = sprintf(fmt = ', %s', names(min_)),
      no = ''
    )), sep = '\n')
  }
  
  object@operation <- gsub(pattern = '\n', replacement = '', x = object@operation)
  object@operation <- gsub(pattern = '^ *|(?<= ) | *$', replacement = '', x = object@operation, perl = TRUE)
  n <- length(object@operation)
  cat(sprintf(fmt = ' \u21ac %s\n', object@operation), sep = '')
  
  cat(sprintf(fmt = ' \u21ac %s\n', object@cooling), sep = '')
  
  cat(sprintf(fmt = ' \u2756 water evaporated: %.0f grams\n', object@waterLost))
  
  cat(sprintf(fmt = ' \u2756 %s\n', object@note), sep = '')
  
  cat('\n')
  
})

thermometer <- function(...) new(Class = 'tool', name = 'Etekcity Lasergrip 1260', ...)

CuisinartICE70 <- function(...) new(Class = 'tool', name = 'Cuisinart Ice Cream Maker ICE-70', ...)

InstantPot <- function(...) new(Class = 'tool', name = 'Instant Pot Pro, 8 Quart', ...)

KSMICM <- function(...) new(Class = 'tool', name = 'Kitchen Aid Ice Cream Maker KSMICM', ...)

KSM8990 <- function(...) new(Class = 'tool', name = 'Kitchen Aid Stand Mixer KSM8990, 8 Quart', ...)

KSM3316X <- function(...) new(Class = 'tool', name = 'Kitchen Aid Stand Mixer KSM3316X, 3.5 Quart', ...)

RobamCT763 <- function(...) new(Class = 'tool', name = 'Robam R-Box CT763 Combi Steam Oven', ...)

JoyoungDJ13U <- function(...) new(Class = 'tool', name = '\u4e5d\u9633\u8c46\u6d46\u673a Joyoung Soymilk Maker DJ13U-P10', ...)
JoyoungDJ06M <- function(...) new(Class = 'tool', name = '\u4e5d\u9633\u8ff7\u4f60\u8c46\u6d46\u673a Joyoung Mini Soymilk Maker DJ06M', ...)


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
  name = '\u4e5d\u9633\u7092\u83dc\u673a Joyoung Stir-Frying Machine CJ-A9U',
  program = program,
  ...)
