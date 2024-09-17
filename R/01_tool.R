





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
setMethod(f = show, signature = signature(object = 'tool'), definition = function(object) {
  
  if (identical(object, new(Class = 'tool'))) return(invisible())
    
  cat(sprintf(fmt = '\u2756 %s \u2756\n', object@name))
  
  if (length(object@recipe_pc)) {
    cat(sprintf(fmt = '\u0020\u2726 Makes x%.1f recipes at a time\n', object@recipe_pc))
  }
  
  # object@recipe_weight
  
  cat(sprintf(fmt = '\u0020\u21ac %s\n', object@treatment), sep = '')
  
  cat(sprintf(fmt = '\u0020\u2726 %s\n', object@program))
  
  cat(sprintf(fmt = '\u0020\u0020\U1f6e0 %s\n', object@attachment))
  
  cat(sprintf(fmt = '\u0020\u0020\U1f321 %d\u00b0F or %d\u00b0C\n', object@fahrenheit, round((object@fahrenheit - 32) * 5/9)))
  
  if (length(object@minute)) {
    if (is.null(names(object@minute))) {
      names(object@minute) <- character(length = length(object@minute))
    }
    cat(paste0('\u0020\u0020\u23f0 ', ifelse(
      test = object@minute > 60, 
      yes = sprintf(fmt = '%.2g hours', object@minute / 60),
      no = sprintf(fmt = '%d minutes', object@minute)
    ), ifelse(
      test = nchar(names(object@minute)) > 0L,
      yes = sprintf(fmt = ', %s', names(object@minute)),
      no = ''
    )), sep = '\n')
  }
  
  object@operation <- gsub(pattern = '\n', replacement = '', x = object@operation)
  object@operation <- gsub(pattern = '^ *|(?<= ) | *$', replacement = '', x = object@operation, perl = TRUE)
  n <- length(object@operation)
  cat(sprintf(fmt = '\u0020\u21ac %s\n', object@operation), sep = '')
  
  cat(sprintf(fmt = '\u0020\u21ac %s\n', object@cooling), sep = '')
  
  cat(sprintf(fmt = '\u0020\u2756 water evaporated: %.0f grams\n', object@waterLost))
  
  cat(sprintf(fmt = '\u0020\u2756 %s\n', object@note), sep = '')
  
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


JoyoungDJ13U_soymilk <- function(
    treatment = c(
      'Soak dry beans \033[94me.g., soybean, chickpea, mung bean, etc.\033[0m overnight in fridge',
      '1300ml water line'
    ),
    program = '\u8001\u8c46\u6d46\u7a0b\u5e8f Classic Soymilk program',
    ...
) JoyoungDJ13U(treatment = treatment, program = program, ...)


JoyoungDJ13U_cornjuice <- function(
  program = '\u7389\u7c73\u6c41\u7a0b\u5e8f Corn\U1f33d Juice program',
  operation = c(
    '900ml water line',
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
