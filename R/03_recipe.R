# '\u2318' 
# c('\u058d', '\u058e')

#' @rdname raw_recipe
#' 
#' @slot alias \link[base]{character} scalar in Unicode, alias (e.g., in Chinese)
#' @slot alias_class,alias_flavor \link[base]{character} scalar in Unicode, alias (e.g., in Chinese) of class and flavor
#' @slot author \link[base]{character} scalar
# @slot key \link[base]{character} scalar, key diagnosis
#' @slot date \link[base]{Date} scalar
#' 
#' @slot url \link[base]{character} scalar or \link[base]{vector}, URL of original recipe
#' @slot acme \link[base]{integer} scalar
#' @slot allrecipes \link[base]{character} scalar
#' @slot daatgo \link[base]{character} scalar
#' @slot dad1966 \link[base]{character} scalar
#' @slot guga \link[base]{character} scalar
#' @slot happytears \link[base]{character} scalar
#' @slot ippodotea,ippodoteajpn \link[base]{character} scalar
#' @slot joshuaweissman \link[base]{character} scalar
#' @slot julieseatsandtreats \link[base]{character} scalar
#' @slot juniorscheesecakecookbook \link[base]{integer} scalar
#' @slot just1cookbook \link[base]{character} scalar
#' @slot kingarthur \link[base]{character} scalar or \link[base]{vector}, link from \url{https://www.kingarthurbaking.com} of original recipe
#' @slot laofangu \link[base]{character} scalar
#' @slot natashaskitchen \link[base]{character} scalar
#' @slot nytimes \link[base]{character} scalar
#' @slot pino \link[base]{character} scalar
#' @slot preppykitchen \link[base]{character} scalar, link from \url{preppykitchen.com} of original recipe
#' @slot quakeroats \link[base]{character} scalar
#' @slot shangshikitchen \link[base]{character} scalar
#' @slot wegmans \link[base]{character} scalar
#' @slot xiaogaojie \link[base]{character} scalar
#' @slot youtube \link[base]{character} scalar or \link[base]{vector}, YouTube ID of original recipe
# @slot doi \link[base]{character} scalar or \link[base]{vector}
#' 
#' @slot machine \link[base]{list} of \link[base]{character} scalar or \link[base]{vector}, machine(s) used
#' 
#' @slot waterBath \linkS4class{tool}
#' @slot KSM8990 \linkS4class{tool}, Kitchen Aid commercial stand mixer KSM8990, 8 quart
#' @slot KSM3316X \linkS4class{tool}, Kitchen Aid stand mixer KSM3316X, 3.5 quart
#' @slot KSMICM \linkS4class{tool}, Kitchen Aid ice cream maker KSMICM
#' @slot CuisinartICE70 \linkS4class{tool}, Cuisinart ice cream maker ICE70
#' @slot SanyoECJS35S \linkS4class{tool}, Sanyo Rice Cooker ECJ-S35S
#' @slot JoyoungDJ13U \linkS4class{tool}, Joyoung soymilk maker DJ13U-P10
#' @slot JoyoungDJ06M \linkS4class{tool}, Joyoung mini soymilk maker DJ06M
#' @slot JoyoungCJA9U \linkS4class{tool}, Joyoung stir-fry machine CJ-A9U
#' @slot nutribullet20,nutribullet24,Stanley14,Stanley20,Stanley40,StanleyJar36 \linkS4class{tool}
#' @slot PhilipsHD9867 \linkS4class{tool}
#' @slot Staub_vertRoaster \linkS4class{tool}
#' @slot RobamCT763 \linkS4class{tool}
#' @slot InstantPot \linkS4class{tool}
#' 

#' @slot note \link[base]{character} scalar or \link[base]{vector}, additional note to chef
#' @slot instruction \link[base]{character} scalar or \link[base]{vector},
#' @slot review \link[base]{character} scalar or \link[base]{vector}, people's comments
#' @slot pros \link[base]{character} scalar or \link[base]{vector}, pros
#' @slot cons \link[base]{character} scalar or \link[base]{vector}, cons
#' 
#' @slot portion \link[base]{numeric} scalar or \link[base]{vector}, weight of raw portion (in grams)
#' 
#' @slot waterLost \link[base]{numeric} scalar, weight of water (in grams) lost in cooking process, **before dividing**
#' @slot fatLost \link[base]{numeric} scalar, weight of oil (in grams) drained in cooking process
#' @slot sugarLost \link[base]{numeric} scalar, weight of sugar (in grams) consumed by yeast in fermentation
#' 
#' @aliases recipe-class
#' @export
setClass(Class = 'recipe', contains = 'raw.', slots = c(
  
  alias = 'character',
  alias_class = 'character', 
  alias_flavor = 'character',
  author = 'character',
  #key = 'character',
  date = 'Date',
  
  url = 'character',
  allrecipes = 'character',
  acme = 'integer',
  daatgo = 'character',
  dad1966 = 'character',
  guga = 'character',
  happytears = 'character',
  ippodotea = 'character', ippodoteajpn = 'character',
  joshuaweissman = 'character',
  julieseatsandtreats = 'character',
  juniorscheesecakecookbook = 'integer',
  just1cookbook = 'character',
  kingarthur = 'character',
  laofangu = 'character',
  natashaskitchen = 'character',
  nytimes = 'character',
  pino = 'character',
  preppykitchen = 'character', # must len-1
  quakeroats = 'character',
  shangshikitchen = 'character',
  wegmans = 'character',
  xiaogaojie = 'character',
  youtube = 'character',
  #doi = 'character',
  
  machine = 'list',
  waterBath = 'tool',
  KSM8990 = 'tool',
  KSM3316X = 'tool',
  KSMICM = 'tool',
  CuisinartICE70 = 'tool',
  SanyoECJS35S = 'tool',
  JoyoungDJ13U = 'tool', JoyoungDJ06M = 'tool',
  JoyoungCJA9U = 'tool',
  nutribullet20 = 'tool', nutribullet24 = 'tool', Stanley14 = 'tool', Stanley20 = 'tool', Stanley40 = 'tool', StanleyJar36 = 'tool',
  PhilipsHD9867 = 'tool',
  Staub_vertRoaster = 'tool',
  RobamCT763 = 'tool',
  InstantPot = 'tool',
  
  note = 'character',
  instruction = 'character',
  review = 'character',
  pros = 'character', cons = 'character',
  portion = 'numeric',
  
  waterLost = 'numeric',
  sugarLost = 'numeric',
  fatLost = 'numeric'
  
), prototype = prototype(
  date = as.Date.numeric(numeric()) # must!!
))



setAs(from = 'recipe', to = 'raw.', def = \(from) {
  slt0 <- names(getSlots(x = 'raw.'))
  atr0 <- attributes(from)[slt0]
  atr <- atr0[lengths(atr0) > 0L]
  do.call(what = new, args = c(list(Class = 'raw.'), atr))
})












get_flavor_ <- \(x) {
  x |>
    lapply(FUN = \(i) eval(call(i))) |>
    vapply(FUN = \(i) {
      if (inherits(i, 'nutrition')) {
        i@name
      } else if (inherits(i, what = 'recipe')) {
        #i@alias_flavor
        i@alias |> gsub(pattern = 'Evaporated', replacement = '') |> trimws()
      } else stop('what happens?')
    }, FUN.VALUE = '') |>
    paste(collapse = ' + ')
}








setMethod(f = initialize, signature = 'recipe', definition = \(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  # is this the correct way of doing things?????
  x <- getMethod(f = 'initialize', signature = 'raw.')(x)
  
  x@machine <- x@machine[lengths(x@machine) > 0L]
  
  if (length(x@yeast) && !length(x@sugarLost)) {
    x@sugarLost <- if (inherits(x, what = 'bao')) {
      # After one hour brew time, ~0.35 grams of sugar per gram of yeast have been consumed, 
      # leaving ~0.65 grams of unfermented sugar per gram of yeast.
      # https://www.lallemand.com/BakerYeastNA/eng/PDFs/LBU%20PDF%20FILES/1_19WATR.PDF
      sum(x@yeast) * .35
    } else {
      # I ferment overnight in fridge, lost 1.15 yeast
      # then ferment in room temperature, lost .35 yeast
      sum(x@yeast) * 1.5
    }
  }
  
  # processing 'character'
  
  if (length(x@author)) {
    if (length(x@allrecipes)) {
      x@author <- style_hyperlink(url = sprintf(fmt = 'https://www.allrecipes.com/recipe/%s', x@allrecipes), text = x@author) |> c()
      x@allrecipes <- character()
    } else if (length(x@youtube)) {
      x@author <- style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', x@youtube[1L]), text = x@author) |> c()
      x@youtube <- x@youtube[-1L]
    } else if (length(x@url)) {
      x@author <- style_hyperlink(url = x@url[1L], text = x@author) |> c()
      x@url <- x@url[-1L]
    }
  } # before `if (!length(x@author))` !!!
  
  if (length(x@acme)) {
    if (length(x@acme) > 1L) stop('only allow len-1 @acme')
    x@author <- style_hyperlink(url = sprintf(fmt = 'https://www.acmemarkets.com/shop/product-details.%s.html', x@acme), text = 'Albertsons\U1f1fa\U1f1f8') |> c()
    x@acme <- integer()
  }
  
  # youtubers
  for (yt in c('daatgo', 'dad1966', 'guga', 'happytears', 'laofangu', 'pino', 'shangshikitchen', 'xiaogaojie')) {
    if (length(yt. <- slot(x, name = yt))) {
      if (length(yt.) > 1L) stop('only allow len-1 @', yt)
      x@author <- switch(
        yt, 
        daatgo = '\u8fbe\u54e5\u53a8\u623f',
        dad1966 = '\u8001\u7238\u7684\u98df\u5149',
        guga = 'Guga',
        happytears = '\u5e78\u798f\u7684\u773c\u6cea',
        laofangu = '\u8001\u996d\u9aa8',
        pino = '\u54c1\u8bfa', # http://www.pinochina.com # temporarily down
        shangshikitchen = '\u5c1a\u98df\u53a8\u623f',
        xiaogaojie = '\u5c0f\u9ad8\u59d0'
      ) |>
        style_hyperlink(
          url = sprintf(fmt = 'https://youtu.be/%s', yt.),
          text = _
        ) |> 
        c()
      slot(x, name = yt) <- character()
    }
  }
  
  if (length(x@ippodotea)) {
    if (length(x@ippodotea) > 1L) stop('only allow len-1 @ippodotea')
    x@author <- style_hyperlink(url = sprintf(fmt = 'https://ippodotea.com/products/%s', x@ippodotea), text = 'Ippodo\U1f375\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5') |> c()
    x@ippodotea <- character()
  }
  
  if (length(x@ippodoteajpn)) {
    if (length(x@ippodoteajpn) > 1L) stop('only allow len-1 @ippodoteajpn')
    x@author <- style_hyperlink(url = sprintf(fmt = 'https://www.ippodo-tea.co.jp/products/%s', x@ippodoteajpn), text = 'Ippodo\U1f375\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5') |> c()
    x@ippodoteajpn <- character()
  }
  
  if (length(x@joshuaweissman)) {
    if (length(x@author)) stop('@author will be overwritten by @joshuaweissman')
    if (length(x@joshuaweissman) > 1L) stop('only allow len-1 @joshuaweissman')
    x@author <- paste(
      style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', names(x@joshuaweissman)), text = 'Joshua') |> c(),
      style_hyperlink(url = sprintf(fmt = 'https://www.joshuaweissman.com/post/%s', x@joshuaweissman), text = 'Weissman') |> c()
    )
    x@joshuaweissman <- character()
  } 
  
  if (length(x@julieseatsandtreats)) {
    if (length(x@author)) stop('@author will be overwritten by @julieseatsandtreats')
    if (length(x@julieseatsandtreats) > 1L) stop('only allow len-1 @julieseatsandtreats')
    x@author <- paste(
      style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', names(x@julieseatsandtreats)), text = 'Julie\'s') |> c(),
      style_hyperlink(url = sprintf(fmt = 'https://www.julieseatsandtreats.com/%s', x@julieseatsandtreats), text = 'Eats & Treats') |> c()
    )
    x@julieseatsandtreats <- character()
  } 
  
  if (length(x@juniorscheesecakecookbook)) {
    if (length(x@juniorscheesecakecookbook) > 1L) stop('only allow len-1 @juniorscheesecakecookbook')
    x@author <- style_hyperlink(url = 'https://www.juniorscheesecake.com/juniors-cheesecake-cookbook', text = sprintf('Junior\'s Cheesecake Cookbook p.%d', x@juniorscheesecakecookbook)) |> c()
    x@juniorscheesecakecookbook <- integer()
  }
  
  if (length(x@just1cookbook)) {
    if (length(x@just1cookbook) > 1L) stop('only allow len-1 @just1cookbook')
    x@author <- paste(
      c(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', names(x@just1cookbook)), text = 'Just One')),
      c(style_hyperlink(url = sprintf(fmt = 'https://www.justonecookbook.com/%s', x@just1cookbook), text = 'Cookbook'))
    )
    x@just1cookbook <- character()
  }
  
  if (length(x@kingarthur)) {
    if (length(x@kingarthur) > 1L) stop('only allow len-1 @kingarthur')
    if (!length(x@author)) stop('King Arthur employee name?')
    x@author <- paste(
      c(style_hyperlink(url = sprintf(fmt = 'https://www.kingarthurbaking.com/recipes/%s', x@kingarthur), text = 'King Arthur')),
      c(style_hyperlink(url = sprintf(fmt = 'https://www.kingarthurbaking.com/author/%s', x@author), text = 'Recipe'))
    )
    x@kingarthur <- character()
  }
  
  if (length(x@natashaskitchen)) {
    if (length(x@author)) stop('@author will be overwritten by @natashaskitchen')
    if (length(x@natashaskitchen) > 1L) stop('only allow len-1 @natashaskitchen')
    x@author <- paste(
      c(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', names(x@natashaskitchen)), text = 'Natasha\'s')),
      c(style_hyperlink(url = sprintf(fmt = 'https://natashaskitchen.com/%s/', x@natashaskitchen), text = 'Kitchen'))
    )
    x@natashaskitchen <- character()
  } 
  
  if (length(x@nytimes)) {
    if (length(x@nytimes) > 1L) stop('only allow len-1 @nytimes')
    x@author <- style_hyperlink(url = sprintf(fmt = 'https://cooking.nytimes.com/recipes/%s', x@nytimes), text = 'New York Times Cooking') |> c()
    x@nytimes <- character()
  }
  
  if (length(x@preppykitchen)) {
    if (length(x@author)) stop('@author will be overwritten by @preppykitchen')
    if (length(x@preppykitchen) > 1L) stop('only allow len-1 @preppykitchen')
    x@author <- paste(
      style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', names(x@preppykitchen)), text = 'Preppy') |> c(),
      style_hyperlink(url = sprintf(fmt = 'https://preppykitchen.com/%s/', x@preppykitchen), text = 'Kitchen') |> c()
    )
    x@preppykitchen <- character()
  } 
  
  if (length(x@quakeroats)) {
    if (length(x@quakeroats) > 1L) stop('only allow len-1 @quakeroats')
    x@author <- style_hyperlink(url = sprintf(fmt = 'https://www.quakeroats.com/cooking-and-recipes/%s', x@quakeroats), text = 'Quaker\U1f1fa\U1f1f8') |> c()
    x@quakeroats <- character()
  }
  
  if (length(x@wegmans)) {
    if (length(x@wegmans) > 1L) stop('only allow len-1 @wegmans')
    x@author <- style_hyperlink(url = sprintf(fmt = 'https://shop.wegmans.com/recipes/%s', x@wegmans), text = 'Wegmans\U1f1fa\U1f1f8') |> c()
    x@wegmans <- character()
  }
  
  author <- if (length(x@author)) x@author |> col_green() |> c() # else NULL
  
  x@alias_class <- if (!length(x@alias_class)) {
    if (length(author)) author else character()
  } else {
    if (length(author)) paste(x@alias_class, author) else x@alias_class
  }
  
  if (!length(x@alias_flavor)) {
    x@alias_flavor <- if (length(x@coffee)) {
      if (length(x@liqueur)) {
        'Tiramisu\u0300'
      } else if (length(x@cocoa)) {
        if (grepl('blackcocoa', x = tolower(names(x@cocoa)))) warning('Black cocoa is overly alkalized and not a good choice for hot cocoa and mocaccino!')
        if (length(x@tea) && length(x@coconut)) {
          '\u751f\u6930\u9e33\u9e2f'
        } else if (x@cocoa / x@coffee < 1) {
          'Caff\u00e8' 
        } else 'Caff\u00e8 Mocha'
      } else if (length(x@syrup)) {
        if (names(x@syrup) |> grepl(pattern = 'ryeWhisky') |> any()) {
          'Rye Whiskey\u67ab\u7cd6 Tiramisu\u0300'
        } else stop('more syrup?')
      } else 'Caff\u00e8'
     
    } else if (length(x@acai)) {
      '\u5df4\u897f\u8393'
    } else if (length(x@adzukibean)) {
      '\u7ea2\u8c46'
    } else if (length(x@applesauce)) {
      '\u82f9\u679c\U1f34e'
    } else if (length(x@beet)) {
      '\u751c\u83dc'
    } else if (length(x@blackRice)) {
      '\u9ed1\u7c73'
    } else if (length(x@blackSesame)) {
      '\u9ed1\u829d\u9ebb'
    } else if (length(x@brownRice)) {
      '\u7cd9\u7c73'
    } else if (length(x@cashew)) {
      '\u8170\u679c'
    } else if (length(x@chickpea)) {
      '\u9e70\u5634\u8c46'
    } else if (length(x@cocoa)) { # `cocoa` has higher priority than `coffee`
      '\u5de7\u514b\u529b\U1f36b' # '\u53ef\u53ef\U1f36b'
    } else if (length(x@coconut)) {
      '\u6930\u84c9\U1f965'
    } else if (length(x@darkCherry)) {
      '\u751c\u6a31\u6843\U1f352'
    } else if (length(x@mandarine)) {
      '\u6a58\u5b50\U1f34a'
    } else if (length(x@mango)) {
      '\u8292\u679c\U1f96d'
    } else if (length(x@matcha)) {
      '\u62b9\u8336\U1f375'
    } else if (length(x@mungbean)) {
      '\u7eff\u8c46'
    } else if (length(x@pear)) {
      '\u68a8\U1f350'
    } else if (length(x@pineapple)) {
      # '\u83e0\u841d\U1f34d'
      'Pineapple\U1f34d'
    } else if (length(x@pumpkin) || length(x@pumpkinPieMix)) {
      # '\u5357\u74dc\U1f383'
      'Pumpkin\U1f383'
    } else if (length(x@redKidneyBean)) {
      '\u7ea2\u82b8\u8c46'
    } else if (length(x@strawberry)) {
      '\u8349\u8393\U1f353'
    } else if (length(x@tomato)) {
      '\u897f\u7ea2\u67ff\U1f345'
    } else if (length(x@yellowCorn)) {
      '\u7389\u7c73\U1f33d'
    } else if (length(x@shrimp)) {
      '\u867e\U1f990'
    } else if (length(x@beef)) {
      '\u725b\u8089'
    } else if (length(x@pork)) {
      '\u732a\u8089'
    } else if (length(x@ginger)) {
      '\u59dc\u9999\U1fada'
    } else if (length(x@liqueur)) {
      get_flavor_(names(x@liqueur))
    } else if (length(x@sauce)) {
      if (grepl(pattern = 'tomyum', x = names(x@sauce)) |> any()) {
        '\u51ac\u9634'
      } else character()
    } else if (length(x@syrup)) {
      x@syrup |> names() |> get_flavor_()
    } else if (length(x@curry)) {
      get_flavor_(names(x@curry))
    } else if (length(x@chiliMix)) {
      get_flavor_(names(x@chiliMix))
    } else if (length(x@tea)) {
      x@tea |> names() |> get_flavor_()
    } else if (length(x@spice)) {
      x@spice |> names() |> setdiff(y = 'Kirkland_noSaltSeasoning') |> get_flavor_()
    } else if (length(x@grain)) {
      get_flavor_(names(x@grain))
    } else if (length(x@homemade)) {
      get_flavor_(names(x@homemade))
    } else switch(
      class(x), 
      matchaLatte_ =, matchaGoatLatte_ = {
        switch(class(x), matchaLatte_ = {
          '\u62b9\u8336\U1f375Latte'
        }, matchaGoatLatte_ = {
          '\u62b9\u8336\U1f375\u7f8a\u5976Latte'
        })
      },
      shortDough =, waterDough = {
        if (length(x@lard)) {
          '\u732a\u6cb9'
        }
      }, character())
  }
  
  if (!length(x@alias)) {
    x@alias <- if (length(x@alias_class) & length(x@alias_flavor)) {
      paste(x@alias_flavor, x@alias_class) |> trimws()
    } else if (length(x@alias_class) & !length(x@alias_flavor)) {
      x@alias_class
    } else if (!length(x@alias_class) & length(x@alias_flavor)) {
      x@alias_flavor
    } else x@alias 
  } # else do nothing
  
  #if (length(x@key)) {
  #  x@alias <- paste0(x@alias, x@key |> col_br_white() |> bg_br_magenta())
  #  x@key <- character()
  #}
  
  return(x)
})







#' @rdname raw_recipe
# @param object a \linkS4class{recipe} object
#' @export
setMethod(f = show, signature = 'recipe', definition = \(object) {
  
  cat('\n')
  
  if (length(object@date)) {
    object@date |> format.Date(format = '%A, %B %e, %Y') |> col_green() |> cat()
    cat('\n\n')
  }
  
  print.raw.(object)
  
  y <- object |>
    as(Class = 'nutrition')
  
  tool_slot <- names(which(getSlots('recipe') == 'tool'))
  waterLost <- sum(object@waterLost, lapply(tool_slot, FUN = \(i) slot(object, name = i)@waterLost) |> unlist(use.names = FALSE))
  if (waterLost == 0) waterLost <- numeric()

  if (length(waterLost) || length(object@fatLost) || length(object@sugarLost)) {
    waterLost |> 
      sprintf(fmt = 'Water evaporated in cooking: %.0f grams\n') |> 
      cat()
    object@fatLost |> 
      sprintf(fmt = 'Fat drained in cooking: %.0f grams\n') |> 
      cat()
    object@sugarLost |> 
      sprintf(fmt = 'Sugar consumed in fermentation: %.1f grams\n') |> 
      cat()
    cat('\n')
  }
  
  cat(
    'Total', 
    y@servingGram |> sprintf(fmt = '%.4g grams') |> make_ansi_style('purple')() |> style_bold(),
    if (inherits(object, what = c('caffeCoconut', 'yuenyeungCoconut'))) {
      (y@servingGram/29.5735) |> sprintf(fmt = '%.1f fl oz') |> make_ansi_style('seagreen')() |> style_bold() # use water density
    },
    '\n\n'
  )
  
  cat('US', y@usd |> sprintf(fmt = '\U1f4b5%.2f') |> col_green() |> style_bold(), '\n')
  if (length(y@calorie)) cat('Calories', y@calorie |> sprintf(fmt = '\U1f525%.0f') |> col_br_red() |> style_bold(), '\n')
  cat('\n')
  
  attr_dx <- attributes(y)[c(
    'perRiceFlr', 'perAllPurposeFlr', 'perPastryFlr', 'perBreadFlr', 'perMixFlr', 
    'perGlutenFreeFlr', 'perCornmeal', 
    'perCocoa', 'perTea', 'perCreamCheese',
    'perServingTexture', 'perServingFlavor'#, 'perRaw'
  )]
  has_attr_dx <- (lengths(attr_dx) > 0L)
  attr_dx[has_attr_dx] |> 
    lapply(FUN = show)
  
  if (length(object@portion)) {
    sprintf(
      fmt = '\u058d %.1f \u00d7 %.0f grams %s %s %s', # '\u058e'
      y@servingGram/object@portion, 
      object@portion, 
      (y@usd / y@servingGram * object@portion) |> sprintf(fmt = '\U1f4b5%.2f') |> col_green() |> style_bold(),
      if (length(y@calorie)) (y@calorie / y@servingGram * object@portion) |> sprintf(fmt = '\U1f525%.0f') |> col_br_red() |> style_bold() else '',
      object@portion |> names() |> col_magenta() |> style_bold()
    ) |> cat(sep = '\n')
    cat('\n')
  } # else NULL
  
  if (length(object@instruction)) {
    cat('Instructions:\n')
    object@instruction |> 
      gsub(pattern = '\n', replacement = ' ', ) |>
      gsub(pattern = '^ *|(?<= ) | *$', replacement = '', perl = TRUE) |> 
      sprintf(fmt = '\u21ac %s\n') |> 
      cat(sep = '')
    cat('\n')
  }
  
  show(object@waterBath)
  show(object@KSM8990)
  show(object@KSM3316X)
  show(object@KSMICM)
  show(object@CuisinartICE70)
  show(object@JoyoungDJ13U)
  show(object@JoyoungDJ06M)
  show(object@JoyoungCJA9U)
  show(object@nutribullet20); show(object@nutribullet24); 
  show(object@Stanley14); show(object@Stanley20); show(object@Stanley40); show(object@StanleyJar36)
  show(object@PhilipsHD9867)
  show(object@Staub_vertRoaster)
  show(object@RobamCT763)
  show(object@InstantPot)
  
  if (length(object@machine)) {
    cat('Machine:\n')
    sprintf(
      fmt = '\n\u2726%s\u2726%s\n', 
      names(object@machine), 
      object@machine |> vapply(FUN = \(i) paste0('\n   ', paste(i, collapse = '\n   ')), FUN.VALUE = '')
    ) |> cat(sep = '')
    cat('\n')
  }
  
  if (length(object@note)) {
    #cat('Note:\n')
    object@note |> sprintf(fmt = '\u2756 %s') |> cat(sep = '\n')
    cat('\n')
  }
  
  #if (length(review <- attr(y, which = 'review', exact = TRUE))) {
  #  cat('Reviews on Ingredients:\n')
  #  review |> sprintf(fmt = '\u26a0 %s') |> cat(sep = '\n')
  #  cat('\n')
  #}
  
  #if (length(machine <- attr(y, which = 'machine', exact = TRUE))) {
  #  cat('Machine on Ingredients:\n')
  #  machine |> sprintf(fmt = '\u2726 %s') |> cat(sep = '\n')
  #  cat('\n')
  #}
  
  if (length(object@review)) {
    object@review |> sprintf(fmt = '\U1f4dd %s') |> lapply(FUN = cli_text)
    cat('\n')
  }
  
  if (length(object@pros)) {
    object@pros |> sprintf(fmt = '\U1f389 %s') |> cat(sep = '\n')
    cat('\n')
  }
  
  if (length(object@cons)) {
    object@cons |> sprintf(fmt = '\U1f940 %s') |> cat(sep = '\n')
    cat('\n')
  }
  
  #if (length(object@url) || length(object@youtube) || length(object@doi)) {
  if (length(object@url) || length(object@youtube)) {
    
    cat('\U1f4d6 Reference:\n')
    if (length(object@url)) cat('', object@url, sep = '\n') # len0 compatible
    if (n_ytb <- length(object@youtube)) {
      if (n_ytb != 1L) stop('only allow scalar @youtube')
      cat(' \U1f4f9', style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', object@youtube), text = object@youtube), '\n')
    }
    #if (length(object@doi)) cat(styleURL(url_ = sprintf(fmt = 'https://doi.org/%s', object@doi), text_ = names(object@doi)), sep = '\n')
    cat('\n')
    
  }

})







