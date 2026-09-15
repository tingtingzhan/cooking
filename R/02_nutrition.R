

#setOldClass('cli_ansi_string')

#' @title \linkS4class{nutrition} Information
#' 
#' @description 
#' Nutrition information.
#' 
#' @slot brand \link[base]{character} scalar, manufacture brand
#' 
#' @slot name \link[base]{character} scalar, product name
#' @slot alias \link[base]{character} scalar, product alias
#' @slot call \link[base]{language}, the function name to create this \linkS4class{nutrition}
#' 
#' @slot suggestion \link[base]{list}
#' 
#' @slot url \link[base]{character} scalar, link to manufacturer webpage
#' @slot fdc \link[base]{integer} scalar, USDA FoodData Central (FDC) ID
#' @slot pubchem \link[base]{character} scalar
#' 
#' @slot acme \link[base]{integer} scalar, Acme ID (also all Albertsons supermarkets, e.g., Safeway, etc.)
#' @slot amazon \link[base]{character} scalar, amazon ID
#' @slot bjs \link[base]{character} scalar, BJ's ID
#' @slot costco,costcoBiz \link[base]{character} scalar. Costco product ID may be too long for \link[base]{integer}
#' @slot giantfood \link[base]{integer} scalar
#' @slot lucerne \link[base]{integer} scalar
#' @slot sams \link[base]{character} scalar, Sam's Club ID
#' @slot target \link[base]{character} scalar, Target ID
#' @slot totalwine \link[base]{character} scalar
#' @slot traderjoes \link[base]{character} scalar, Trader Joe's ID
#' @slot walmart \link[base]{character} scalar, Walmart ID
#' @slot wawa \link[base]{character} scalar
#' @slot webstaurant \link[base]{character} scalar
#' @slot weee \link[base]{character} scalar
#' @slot wegmans,wegmansorganic \link[base]{integer} scalar, Wegmans Food Markets ID
#' @slot wholefoods \link[base]{character} scalar, Wholel Foods ID
#' @slot yamibuy \link[base]{character} scalar
#' 
#' @slot bachans \link[base]{character} scalar
#' @slot baileys \link[base]{character} scalar
#' @slot bassetts \link[base]{character} scalar
#' @slot belgioioso \link[base]{character} scalar
#' @slot bobsredmill \link[base]{character} scalar
#' @slot bouchard \link[base]{character} scalar
#' @slot cheesecakefactorybakery,cheesecakefactoryfreezer \link[base]{character} scalars
#' @slot clearwater \link[base]{character} scalar
#' @slot countrytime \link[base]{character} scalar
#' @slot daisybrand \link[base]{character} scalar
#' @slot delmonte \link[base]{character} scalar
#' @slot dolesunshine \link[base]{character} scalar
#' @slot domino \link[base]{character} scalar
#' @slot epicprovisions \link[base]{character} scalar
#' @slot fleischmannsyeast \link[base]{integer} scalar
#' @slot fourC \link[base]{character} scalar
#' @slot frontiercoop \link[base]{character} scalar
#' @slot ghirardelli \link[base]{character} scalar
#' @slot greypoupon \link[base]{character} scalar
#' @slot godiva \link[base]{character} scalar
#' @slot haagendazs \link[base]{character} scalar
#' @slot haitaiusa \link[base]{character} scalar
#' @slot harney \link[base]{character} scalar
#' @slot heinz \link[base]{character} scalar
#' @slot hellmanns \link[base]{character} scalar
#' @slot horizon \link[base]{character} scalar
#' @slot ippodoglobal,ippodojpn,ippodousa \link[base]{character} scalars
#' @slot itoen \link[base]{character} scalar
#' @slot jayone \link[base]{character} scalar
#' @slot jfc \link[base]{character} scalar
#' @slot juniorscheesecake \link[base]{character} scalar
#' @slot justtea \link[base]{character} scalar
#' @slot kahlua \link[base]{character} scalar
#' @slot kerrygold,kerrygoldusa \link[base]{character} scalar
#' @slot kikkomanusa \link[base]{character} scalar
#' @slot kingarthur,kingarthurpro \link[base]{integer} scalars
#' @slot kraftheinzawayfromhome,philadelphia \link[base]{character} scalars
#' @slot krusteaz \link[base]{character} scalar
#' @slot landolakes \link[base]{character} scalar
#' @slot leaperrins \link[base]{character} scalar
#' @slot lkkhk,lkkusa \link[base]{character} scalars
#' @slot maeda \link[base]{character} scalar
#' @slot marukyu \link[base]{character} scalar
#' @slot mccormick,mccormickculinary,oldbay,grillmates \link[base]{character} scalars
#' @slot meyenberg \link[base]{character} scalar
#' @slot mizkanjpn,mizkanusa \link[base]{character} scalars
#' @slot nancysyogurt \link[base]{character} scalar
#' @slot navitas \link[base]{character} scalar
#' @slot nescafeGold,nestle,nido \link[base]{character} scalars
#' @slot nielsenmassey \link[base]{character} scalar
#' @slot nishiki \link[base]{character} scalar
#' @slot oreo \link[base]{character} scalar
#' @slot organicvalley \link[base]{character} scalar
#' @slot paromi \link[base]{character} scalar
#' @slot quakeroats \link[base]{character} scalar
#' @slot raos \link[base]{character} scalar
#' @slot runamok \link[base]{character} scalar
#' @slot sanford \link[base]{character} scalar
#' @slot siggis \link[base]{character} scalar
#' @slot simplyorganic \link[base]{character} scalar
#' @slot sodastream \link[base]{character} scalar
#' @slot starbucks \link[base]{character} scalar
#' @slot starbucks_hot,starbucks_iced \link[base]{integer} scalars
#' @slot stassentea \link[base]{character} scalar
#' @slot stonewall \link[base]{integer} scalar
#' @slot stonyfield \link[base]{character} scalar
#' @slot swiftmeats \link[base]{character} scalar
#' @slot swissmiss \link[base]{character} scalar
#' @slot tsemporium \link[base]{character} scalar
#' @slot thaikitchen \link[base]{character} scalar
#' @slot twinings \link[base]{character} scalar
#' @slot wesson \link[base]{character} scalar
#' @slot whistlepigwhiskey \link[base]{character} scalar
#' @slot yaomazi \link[base]{character} scalar
#' @slot yogi \link[base]{character} scalar
#' @slot youjia \link[base]{character} scalar
#' 
#' 
#' @slot machine \link[base]{function}
#' 
#' @slot review \link[base]{character} scalar or \link[base]{vector}, additional note to chef
#' @slot superior \link[base]{character} scalar
#' @slot contain \link[base]{character} scalar or vector, names of additives
#' 
#' @slot servingGram \link[base]{numeric} scalar, serving size in grams
#' @slot serving_oz \link[base]{numeric} scalar, serving size in ounces
#' @slot serving_lb \link[base]{numeric} scalar, serving size in pounds
#' @slot servingCup,servingTbsp,servingTsp \link[base]{numeric} scalar, serving size in cups, tablespoons, teaspoons
# @slot servingBag \link[base]{numeric} scalar, serving size in (tea) bags
#' @slot serving_floz \link[base]{numeric} scalar, serving size in fluid ounce
#' @slot serving_ml \link[base]{numeric} scalar, serving size in milli litre
#' 
#' @slot pieceWeight \link[base]{numeric} scalar, weight in grams per piece
#' 
#' @slot usd \link[base]{numeric} scalar, price (in USD) \strong{per serving}
#' @slot jpy \link[base]{numeric} scalar, price (in Japanese Yen) \strong{per serving}
#' @slot date `'Date'`
#' @slot cost_ \link[base]{character} scalar, price (in USD) \strong{per serving}, converted from all currencies
#' @slot calorie \link[base]{numeric} scalar, calories per serving
#' @slot water \link[base]{numeric} scalar, water (in grams) per serving
#' @slot carbohydrate \link[base]{numeric} scalar, total carbohydrate (in grams) per serving
#' @slot fiber \link[base]{numeric} scalar, dietary fiber (in grams) per serving
#' @slot sugar \link[base]{numeric} scalar, sugar (in grams) per serving
#' @slot addedSugar \link[base]{numeric} scalar, added sugar (in grams) per serving
#' @slot fat \link[base]{numeric} scalar, fat (in grams) per serving
#' @slot cholesterol \link[base]{numeric} scalar, cholesterol (in grams) per serving
#' @slot sodium \link[base]{numeric} scalar, sodium (in grams) per serving
#' @slot salt \link[base]{numeric} scalar, salt (in grams) per serving
#' @slot protein \link[base]{numeric} scalar, protein (in grams) per serving
#' @slot AbV \link[base]{numeric} scalar between 0 and 1, alcohol by volume
#' @slot alcohol \link[base]{numeric} scalar, alcohol (in grams) per serving
#' 
#' @slot tool \link[base]{list} of \linkS4class{tool}s
#' 
#' @name nutrition-class  
#' @export
setClass(Class = 'nutrition', slots = c(
  
  brand = 'character',
  #brand = 'cli_ansi_string',
  
  alias = 'character',
  call = 'language',
  name = 'character',
  
  suggestion = 'list',
  
  url = 'character',
  fdc = 'integer',
  pubchem = 'character',
  
  acme = 'integer',
  amazon = 'character',
  bjs = 'character',
  costco = 'character', costcoBiz = 'character',
  giantfood = 'integer',
  kraftheinzawayfromhome = 'character', 
  lucerne = 'integer',
  sams = 'character',
  target = 'character',
  totalwine = 'character',
  traderjoes = 'character',
  walmart = 'character',
  wawa = 'character',
  webstaurant = 'character',
  weee = 'character',
  wegmans = 'integer', wegmansorganic = 'integer',
  wholefoods = 'character',
  yamibuy = 'character',
  
  bachans = 'character',
  baileys = 'character',
  bassetts = 'character',
  belgioioso = 'character',
  bobsredmill = 'character',
  bouchard = 'character',
  cheesecakefactorybakery = 'character', cheesecakefactoryfreezer = 'character', 
  clearwater = 'character',
  countrytime = 'character',
  daisybrand = 'character',
  delmonte = 'character',
  dolesunshine = 'character',
  domino = 'character',
  epicprovisions = 'character',
  fleischmannsyeast = 'integer',
  fourC = 'character',
  frontiercoop = 'character',
  ghirardelli = 'character',
  greypoupon = 'character',
  godiva = 'character',
  haagendazs = 'character',
  haitaiusa = 'character',
  harney = 'character',
  heinz = 'character',
  hellmanns = 'character',
  horizon = 'character',
  ippodoglobal = 'character', ippodojpn = 'character', ippodousa = 'character',
  itoen = 'character',
  jayone = 'character',
  jfc = 'character',
  juniorscheesecake = 'character',
  justtea = 'character',
  kahlua = 'character',
  kerrygold = 'character', kerrygoldusa = 'character',
  kikkomanusa = 'character',
  kingarthur = 'integer', kingarthurpro = 'integer',
  krusteaz = 'character',
  landolakes = 'character',
  leaperrins = 'character',
  lkkhk = 'character',
  lkkusa = 'character',
  maeda = 'character',
  marukyu = 'character',
  mccormick = 'character', mccormickculinary = 'character', oldbay = 'character', grillmates = 'character',
  meyenberg = 'character',
  mizkanjpn = 'character', mizkanusa = 'character',
  nancysyogurt = 'character',
  navitas = 'character',
  nescafeGold = 'character', nestle = 'character', nido = 'character',
  nielsenmassey = 'character',
  nishiki = 'character',
  oreo = 'character',
  organicvalley = 'character',
  paromi = 'character',
  philadelphia = 'character',
  quakeroats = 'character',
  raos = 'character',
  runamok = 'character',
  sanford = 'character',
  siggis = 'character',
  simplyorganic = 'character', # has SKU number, do not know how to use
  sodastream = 'character',
  starbucks = 'character',
  starbucks_hot = 'integer',
  starbucks_iced = 'integer',
  stassentea = 'character',
  stonewall = 'integer',
  stonyfield = 'character',
  swiftmeats = 'character',
  swissmiss = 'character',
  tsemporium = 'character',
  thaikitchen = 'character',
  twinings = 'character',
  wesson = 'character',
  whistlepigwhiskey = 'character',
  yaomazi = 'character',
  yogi = 'character',
  youjia = 'character',
  
  machine = 'function', # should be deprecated
  
  tool = 'list',
  
  review = 'character',
  superior = 'character',
  contain = 'character',
  
  servingGram = 'numeric', serving_oz = 'numeric', serving_lb = 'numeric',
  servingCup = 'numeric', servingTbsp = 'numeric', servingTsp = 'numeric',
  #servingBag = 'numeric',
  serving_floz = 'numeric',
  serving_ml = 'numeric',
  pieceWeight = 'numeric',
  
  usd = 'numeric',
  jpy = 'numeric',
  date = 'Date',
  cost_ = 'character',
  calorie = 'numeric',
  water = 'numeric',
  carbohydrate = 'numeric',
  fiber = 'numeric', sugar = 'numeric', addedSugar = 'numeric',
  fat = 'numeric',
  cholesterol = 'numeric',
  sodium = 'numeric', salt = 'numeric',
  protein = 'numeric',
  alcohol = 'numeric', AbV = 'numeric'
), prototype = prototype(
  machine = \(x) NULL,
  calorie = 0,
  date = as.Date(NA_character_)
))





#' @importFrom cli ansi_string
# @importFrom quantmod getQuote
setMethod(f = initialize, signature = 'nutrition', definition = \(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  if (identical(x@call, quote(`<UNDEFINED>`))) {
    # `-3` frame is determined by ?methods::new and ?methods::initialize (dont ask me why..)
    x@call <- match.call(
      definition = sys.function(-3), 
      call = sys.call(-3)
    )[[1L]]
  }
  
  if (is.symbol(x@call)) {
    # do nothing
  } else if (as.character(x@call[[1L]]) %in% c('::', ':::')) {
    x@call <- x@call[[3L]]
  } else stop(x@call)
  
  if (length(x@AbV)) {
    if (!length(x@alcohol)) x@alcohol <- x@servingGram * x@AbV * .78927 # google abv to alcohol by weight
    x@name <- sprintf(fmt = '%s %.3g%%\U1f943', x@name, 1e2*x@AbV)
    x@AbV <- numeric()
  }
  
  # salt
  if (length(x@salt)) {
    if (length(x@sodium)) stop('should not have both @salt and @sodium')
    x@sodium <- x@salt / (35.453+22.990)*22.990
    x@salt <- numeric()
  }
  
  # name
  if (length(x@name)) {
    
    if (!length(x@alias)) {
      x@alias <- switch(tolower(x@name), 'cream cheese' = {
        '\u5976\u6cb9\u5976\u916a'
      }, 'ghee' = {
        '\u5370\u5ea6\u9165\u6cb9\u0918\u0943\u0924'
      }, 'heavy cream' = {
        '\u91cd\u5976\u6cb9'
      }, character())
    }
    
    if (length(x@alias)) {
      x@name <- paste(
        sprintf(fmt = '{.run [%s](cooking::%s())}', x@alias, as.character(x@call)) |> 
          col_orchid4(), 
        x@name)
      x@alias <- character()
    }
    
  }
  
  # serving weight
  if (length(x@serving_oz)) {
    if (length(x@servingGram)) warning('@servingGram over written by @serving_oz')
    x@servingGram <- x@serving_oz * 28.3495
  } else if (length(x@serving_lb)) {
    if (length(x@servingGram)) warning('@servingGram over written by @serving_lb')
    x@servingGram <- x@serving_lb * 453.6
  }
  if (!length(x@servingGram)) stop('must have `servingGram` for nutrition object')
  
  # process user-input `@url` first
  if (length(x@url)) {
    x@url <- style_hyperlink(
      url = x@url, 
      text = gsub('^https://|^http://', replacement = '', x = x@url)
    ) |> c()
  }
  
  if (length(x@brand)) {
    #x@brand <- x@brand |>
    #  ansi_string()
  } else { # manufacturer, when !length(x@brand)
    x@brand <- if (length(x@bachans)) {
      x@bachans |> 
        sprintf(fmt = 'https://bachans.com/products/%s') |>
        style_hyperlink(text = 'Bachan\'s\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@baileys)) {
      x@baileys |> 
        sprintf(fmt = 'https://www.baileys.com/en/products/baileys-%s') |>
        style_hyperlink(text = 'Baileys\U1f1ee\U1f1ea') |> 
        c()
    } else if (length(x@bassetts)) {
      x@bassetts |> 
        sprintf(fmt = 'https://www.bassettsicecream.com/_files/ugd/%s.pdf') |>
        style_hyperlink(text = 'Bassetts\U1f368\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@belgioioso)) {
      x@belgioioso |> 
        sprintf(fmt = 'https://www.belgioioso.com/products/%s') |>
        style_hyperlink(text = 'BelGioioso\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@bobsredmill)) {
      x@bobsredmill |> 
        sprintf(fmt = 'https://www.bobsredmill.com/%s.html') |>
        style_hyperlink(text = 'Bob\'s Red Mill\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@bouchard)) {
      x@bouchard |> 
        sprintf(fmt = 'https://bouchardchocolate.com/products/%s') |>
        style_hyperlink(text = 'Bouchard\U1f1e7\U1f1ea') |> 
        c()
    } else if (length(x@cheesecakefactoryfreezer)) {
      if (!length(x@cheesecakefactorybakery)) x@cheesecakefactorybakery <- x@cheesecakefactoryfreezer
      paste(
        style_hyperlink(url = x@cheesecakefactoryfreezer |> sprintf(fmt = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-freezer/%s'), text = 'Cheesecake') |> c(),
        style_hyperlink(url = x@cheesecakefactorybakery |> sprintf(fmt = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-bakery/%s'), text = 'Factory\U1f1fa\U1f1f8') |> c()
      )
    } else if (length(x@clearwater)) {
      x@clearwater |> 
        sprintf(fmt = 'https://www.clearwater.ca/en/seafood-industry/%s') |>
        style_hyperlink(text = 'Clearwater\U1f1e8\U1f1e6') |> 
        c()
    } else if (length(x@countrytime)) {
      x@countrytime |> 
        sprintf(fmt = 'https://www.kraftheinz.com/country-time/products/%s') |>
        style_hyperlink(text = 'Country Time\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@daisybrand)) {
      x@daisybrand |> 
        sprintf(fmt = 'https://www.daisybrand.com/%s') |>
        style_hyperlink(text = 'Daisy\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@delmonte)) {
      x@delmonte |> 
        sprintf(fmt = 'https://www.delmonte.com/products/%s') |>
        style_hyperlink(text = 'Del Monte\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@dolesunshine)) {
      x@dolesunshine |> 
        sprintf(fmt = 'https://www.dolesunshine.com/us/en/products/%s') |>
        style_hyperlink(text = 'Dole\U1f33a') |> 
        c()
    } else if (length(x@domino)) {
      x@domino |> 
        sprintf(fmt = 'https://www.dominosugar.com/products/%s') |>
        style_hyperlink(text = 'Domino\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@epicprovisions)) {
      x@epicprovisions |> 
        sprintf(fmt = 'https://epicprovisions.com/products/%s') |>
        style_hyperlink(text = 'Epic\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@fleischmannsyeast)) {
      style_hyperlink(url = x@fleischmannsyeast |> sprintf(fmt = 'https://www.fleischmannsyeast.com/product-page/#%d'), text = 'Fleischmann\'s\U1f1fa\U1f1f8') |> c()
    } else if (length(x@fourC)) {
      style_hyperlink(url = x@fourC |> sprintf(fmt = 'https://www.4c.com/4c-product/%s'), text = '4C\U1f1fa\U1f1f8') |> c()
    } else if (length(x@frontiercoop)) {
      style_hyperlink(url = x@frontiercoop |> sprintf(fmt = 'https://www.frontiercoop.com/products/frontier-co-op-%s'), text = 'Frontier Co-op\U1f1fa\U1f1f8') |> c()
    } else if (length(x@ghirardelli)) {
      style_hyperlink(url = x@ghirardelli |> sprintf(fmt = 'https://www.ghirardelli.com/%s'), text = 'Ghirardelli\U1f1fa\U1f1f8') |> c()
    } else if (length(x@greypoupon)) {
      x@greypoupon |> 
        sprintf(fmt = 'https://www.kraftheinz.com/grey-poupon/products/%s') |>
        style_hyperlink(text = 'Grey Poupon\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@godiva)) {
      style_hyperlink(url = x@godiva |> sprintf(fmt = 'https://www.godiva.com/%s.html'), text = 'Godiva\U1f1e7\U1f1ea') |> c()
    } else if (length(x@haagendazs)) {
      style_hyperlink(url = x@haagendazs |> sprintf(fmt = 'https://www.icecream.com/us/en/brands/haagen-dazs/products/%s-ice-cream'), text = 'Ha\u0308agen-Dazs\U1f1fa\U1f1f8') |> c()
    } else if (length(x@haitaiusa)) {
      # not sure if same company
      # https://en.wikipedia.org/wiki/Haitai
      style_hyperlink(url = x@haitaiusa |> sprintf(fmt = 'https://www.haitaiusa.com/product-page/%s'), text = 'HaiTai\U1f1fa\U1f1f8') |> c()
    } else if (length(x@harney)) {
      style_hyperlink(url = x@harney |> sprintf(fmt = 'https://www.harney.com/products/%s'), text = 'Harney & Sons\U1f1fa\U1f1f8') |> c()
    } else if (length(x@heinz)) {
      x@heinz |> 
        sprintf(fmt = 'https://www.heinz.com/products/%s') |>
        style_hyperlink(text = 'Heinz\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@hellmanns)) {
      x@hellmanns |> 
        sprintf(fmt = 'https://www.hellmanns.com/us/en/p/%s') |>
        style_hyperlink(text = 'Hellmann\'s\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@horizon)) {
      x@horizon |> 
        sprintf(fmt = 'https://horizon.com/organic-dairy-products/%s') |>
        style_hyperlink(text = 'Horizon\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@ippodoglobal) & length(x@ippodousa)) {
      x@url <- c(x@url, style_hyperlink(url = x@ippodousa |> sprintf(fmt = 'https://ippodotea.com/products/%s'), text = '\U1f6d2 US Shop'))
      jpn_ <- style_hyperlink(url = x@ippodojpn |> sprintf(fmt = 'https://www.ippodo-tea.co.jp/products/%s'), text = '\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5') |> c()
      global_ <- style_hyperlink(url = x@ippodoglobal |> sprintf(fmt = 'https://global.ippodo-tea.co.jp/products/%s'), text = 'Ippodo\U1f375') |> c()
      paste(global_, jpn_)
    } else if (length(x@itoen)) {
      x@itoen |> 
        sprintf(fmt = 'https://itoen.com/products/%s') |>
        style_hyperlink(text = 'Ito-En\u4f0a\u85e4\u5712\U1f1ef\U1f1f5') |> 
        c()
    } else if (length(x@jayone)) {
      style_hyperlink(url = x@jayone |> sprintf(fmt = 'https://www.jayonefoods.com/product/%s'), text = 'JayOne\U1f1f0\U1f1f7') |> c()
    } else if (length(x@juniorscheesecake)) {
      x@juniorscheesecake |> 
        sprintf(fmt = 'https://www.juniorscheesecake.com/all-items/%s') |>
        style_hyperlink(text = 'Junior\'s\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@justtea)) {
      style_hyperlink(url = x@justtea |> sprintf(fmt = 'https://shop.wegmans.com/product/%s'), text = 'Just Tea\U1f1fa\U1f1f8') |> c()
    } else if (length(x@kahlua)) {
      style_hyperlink(url = x@kahlua |> sprintf(fmt = 'https://www.kahlua.com/en-us/products/%s'), text = 'Kahlu\u0301a\U1f1f2\U1f1fd') |> c()
    } else if (length(x@kerrygold)) {
      kg_ <- style_hyperlink(url = x@kerrygold |> sprintf(fmt = 'https://kerrygold.com/products/%s'), text = 'Kerrygold\U1f1ee\U1f1ea') |> c()
      if (length(x@kerrygoldusa)) {
        paste0(kg_, style_hyperlink(url = x@kerrygoldusa |> sprintf(fmt = 'https://www.kerrygoldusa.com/products/%s'), text = '\U1f1fa\U1f1f8'))
      } else kg_
    } else if (length(x@kikkomanusa)) {
      x@kikkomanusa |> 
        sprintf(fmt = 'https://kikkomanusa.com/foodservice/products/%s') |>
        style_hyperlink(text = 'Kikkoman\u4e80\u7532\u842c\U1f1ef\U1f1f5') |> 
        c()
    } else if (length(x@kingarthur)) {
      x@kingarthur |> 
        sprintf(
          #fmt = 'https://shop.kingarthurbaking.com/items/%d'
          fmt = 'https://www.kingarthurbaking.com/search?query=%d'
        ) |>
        style_hyperlink(text = 'King Arthur\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@kingarthurpro)) {
      'https://www.kingarthurbaking.com/pro/products' |>
        style_hyperlink(text = 'King Arthur\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@philadelphia)) {
      x@philadelphia |> 
        sprintf(fmt = 'https://www.kraftheinz.com/philadelphia/products/%s') |>
        style_hyperlink(text = 'Philadelphia\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@krusteaz)) {
      x@krusteaz |> 
        sprintf(fmt = 'https://www.krusteaz.com/products/%s') |>
        style_hyperlink(text = 'Krusteaz\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@landolakes)) {
      x@landolakes |> 
        sprintf(fmt = 'https://www.landolakes.com/products/%s') |>
        style_hyperlink(text = 'Land O Lakes\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@leaperrins)) {
      x@leaperrins |> 
        sprintf(fmt = 'https://www.kraftheinz.com/lea-perrins/products/%s') |>
        style_hyperlink(text = 'Lea & Perrins\U1f1ec\U1f1e7') |> 
        c()
    } else if (length(x@lkkhk)) {
      x@lkkhk |> 
        sprintf(fmt = 'https://hk.lkk.com/zh-hk/foodservices/products/%s') |>
        style_hyperlink(text = 'LeeKumKee\u674e\u9326\u8a18\U1f1ed\U1f1f0') |> 
        c()
    } else if (length(x@lkkusa)) {
      x@lkkusa |> 
        sprintf(fmt = 'https://usa.lkk.com/zh-hk/products/%s') |>
        style_hyperlink(text = 'LeeKumKee\u674e\u9326\u8a18\U1f1ed\U1f1f0') |> 
        c()
    } else if (length(x@maeda)) {
      x@maeda |> 
        sprintf(fmt = 'https://maeda-en.com/products/%s') |>
        style_hyperlink(text = 'maeda-en\u524d\u7530\u5712\U1f1ef\U1f1f5') |>
        c()
    } else if (length(x@marukyu)) {
      x@url <- c(x@url, style_hyperlink(url = 'https://www.marukyu-koyamaen.co.jp/english/catalog/Temporary_Simple_English_Catalog_for_Eng_HP_20240304.pdf', text = '2024 Catalog'))
      paste(
        style_hyperlink(url = x@marukyu |> sprintf(fmt = 'https://www.marukyu-koyamaen.co.jp/english/shop/products/%s'), text = 'Marukyu Koyamaen\U1f375') |> c(),
        style_hyperlink(url = x@marukyu |> sprintf(fmt = 'https://www.marukyu-koyamaen.co.jp/motoan-shop/products/%s'), text = '\u4e38\u4e45\u5c0f\u5c71\u5712\U1f1ef\U1f1f5') |> c()
      )
    } else if (length(x@mccormick)) {
      x@mccormick |> 
        sprintf(fmt = 'https://www.mccormick.com/%s') |>
        style_hyperlink(text = 'McCormick\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@mccormickculinary)) {
      x@mccormickculinary |>
        sprintf(fmt = 'https://www.mccormickforchefs.com/en-us/products/mccormick-culinary/%s') |>
        style_hyperlink(text = 'McCormick\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@oldbay)) {
      x@oldbay |>
        sprintf(fmt = 'https://www.mccormickforchefs.com/en-us/products/old-bay/%s') |>
        style_hyperlink(text = 'McCormick\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@grillmates)) {
      x@grillmates |>
        sprintf(fmt = 'https://www.mccormickforchefs.com/en-us/products/grill-mates/%s') |>
        style_hyperlink(text = 'McCormick\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@meyenberg)) {
      x@meyenberg |>
        sprintf(fmt = 'https://www.meyenberg.com/products/%s') |>
        style_hyperlink(text = 'Meyenberg\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@mizkanjpn)) {
      x@mizkanjpn |>
        sprintf(fmt = 'https://www.mizkan.co.jp/product/group/?gid=%s') |>
        style_hyperlink(text = 'mizkan\u30df\u30c4\u30ab\u30f3\U1f1ef\U1f1f5') |>
        c()
    } else if (length(x@nancysyogurt)) {
      x@nancysyogurt |>
        sprintf(fmt = 'https://nancysyogurt.com/products/%s') |>
        style_hyperlink(text = 'Nancy\'s\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@navitas)) {
      x@navitas |>
        sprintf(fmt = 'https://navitasorganics.com/products/%s') |>
        style_hyperlink(text = 'Navitas\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@nescafeGold)) {
      x@nescafeGold |>
        sprintf(fmt = 'https://www.nescafe.com/us/products/%s') |>
        style_hyperlink(text = 'Nescaf\u00e9 Gold Espresso\U1f1e8\U1f1ed') |>
        c()
    } else if (length(x@nestle)) {
      x@nestle |>
        sprintf(fmt = 'https://www.nestleprofessional.us/search?search=%s') |>
        style_hyperlink(text = 'Nestl\u00e9\U1f1e8\U1f1ed') |>
        c()
    } else if (length(x@nido)) {
      x@nido |>
        sprintf(fmt = 'https://www.goodnes.com/nido/products/nido-%s') |>
        style_hyperlink(text = 'Nestl\u00e9 Nido\U1f1e8\U1f1ed') |>
        c()
    } else if (length(x@nielsenmassey)) {
      x@nielsenmassey |>
        sprintf(fmt = 'https://nielsenmassey.com/products/%s') |>
        style_hyperlink(text = 'Nielsen-Massey\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@nishiki)) {
      x@nishiki |>
        sprintf(fmt = 'https://www.jfc.com/product/item/%s') |>
        style_hyperlink(text = 'Nishiki\u9326\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@oreo)) {
      x@oreo |> 
        sprintf(fmt = 'https://www.oreo.com/products/%s') |>
        style_hyperlink(text = 'Nabisco\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@organicvalley)) {
      x@organicvalley |>
        sprintf(fmt = 'https://www.organicvalley.coop/products/%s') |>
        style_hyperlink(text = 'Organic Valley\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@paromi)) {
      x@paromi |>
        sprintf(fmt = 'https://paromi.com/products/%s') |>
        style_hyperlink(text = 'Paromi\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@quakeroats)) {
      x@quakeroats |>
        sprintf(fmt = 'https://www.quakeroats.com/products/%s') |>
        style_hyperlink(text = 'Quaker\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@raos)) {
      x@raos |>
        sprintf(fmt = 'https://www.raos.com/products/%s') |>
        style_hyperlink(text = 'Rao\'s\U1f1fa\U1f1f8') |>
        c()
    } else if (length(x@runamok)) {
      runamok_ <- x@runamok |> 
        sprintf(fmt = 'https://runamokmaple.com/shop/product/%s') |>
        style_hyperlink(text = 'Runamok\U1f1fa\U1f1f8') |> 
        c()
      if (length(x@whistlepigwhiskey)) {
        x@whistlepigwhiskey |> 
          sprintf(fmt = 'https://shop.whistlepigwhiskey.com/products/%s') |>
          style_hyperlink(text = 'Whistlepig\U1f1fa\U1f1f8') |>
          paste(runamok_, . = _, sep = '-')
      } else runamok_
    } else if (length(x@sanford)) {
      x@sanford |> 
        sprintf(fmt = 'https://www.sanford.co.nz/our-seafood/our-products/%s') |>
        style_hyperlink(text = 'Sanford\U1f1f3\U1f1ff') |> 
        c()
    } else if (length(x@siggis)) {
      x@siggis |> 
        sprintf(fmt = 'https://siggis.com/product/%s') |>
        style_hyperlink(text = 'Siggi\'s\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@simplyorganic)) {
      x@simplyorganic |>
        sprintf(fmt = 'https://www.simplyorganic.com/products/simply-organic-%s') |>
        style_hyperlink(text = 'Simply Organic\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@sodastream)) {
      x@sodastream |>
        sprintf(fmt = 'https://sodastream.com/products/%s') |>
        style_hyperlink(text = 'SodaStream\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@starbucks)) {
      x@starbucks |> 
        sprintf(fmt = 'https://athome.starbucks.com/products/%s') |>
        style_hyperlink(text = 'Starbucks\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@starbucks_hot)) {
      x@starbucks_hot |> 
        sprintf(fmt = 'https://www.starbucks.com/menu/product/%s/hot/nutrition') |>
        style_hyperlink(text = 'Starbucks\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@starbucks_iced)) {
      x@starbucks_iced |> 
        sprintf(fmt = 'https://www.starbucks.com/menu/product/%s/iced/nutrition') |>
        style_hyperlink(text = 'Starbucks\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@stassentea)) {
      x@stassentea |> 
        sprintf(fmt = 'https://www.stassentea.com/shop-now/%s') |>
        style_hyperlink(text = 'Stassen\U1f1f1\U1f1f0') |> 
        c()
    } else if (length(x@stonewall)) {
      x@stonewall |> 
        sprintf(fmt = 'https://www.stonewallkitchen.com/%d.html') |>
        style_hyperlink(text = 'Stonewall Kitchen\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@stonyfield)) {
      x@stonyfield |> 
        sprintf(fmt = 'https://www.stonyfield.com/products/%s') |>
        style_hyperlink(text = 'Stonyfield\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@swiftmeats)) {
      x@swiftmeats |> 
        sprintf(fmt = 'https://swiftmeats.com/products/%s') |>
        style_hyperlink(text = 'Swift\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@swissmiss)) {
      x@swissmiss |> 
        sprintf(fmt = 'https://www.swissmiss.com/%s') |>
        style_hyperlink(text = 'Swiss Miss\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@thaikitchen)) {
      x@thaikitchen |> 
        sprintf(fmt = 'https://www.mccormick.com/thai-kitchen/products/%s') |> 
        style_hyperlink(text = 'Thai Kitchen\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@traderjoes)) {
      x@traderjoes |> 
        sprintf(fmt = 'https://www.traderjoes.com/home/products/pdp/%s') |>
        style_hyperlink(text = 'Trader Joe\'s\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@tsemporium)) {
      x@tsemporium |> 
        sprintf(fmt = 'https://www.tsemporium.com/en_us/xproduct/index/index/s/%s') |>
        style_hyperlink(text = 'Tak Shing Hong\u5fb7\u6210\u884c\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@twinings)) {
      x@twinings |> 
        sprintf(fmt = 'https://twiningsusa.com/products/%s') |>
        style_hyperlink(text = 'Twinings\U1f1ec\U1f1e7') |> 
        c()
    } else if (length(x@wesson)) {
      x@wesson |> 
        sprintf(fmt = 'https://www.purewesson.com/products/%s') |> 
        style_hyperlink(text = 'Wesson\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@yaomazi)) {
      x@yaomazi |> 
        sprintf(fmt = 'https://www.yaomazi.com/%s') |>
        style_hyperlink(text = '\u5e7a\u9ebb\u5b50\U1f1e8\U1f1f3') |> 
        c()
    } else if (length(x@yogi)) {
      x@yogi |> 
        sprintf(fmt = 'https://www.yogi-life.com/en-US/product/%s') |>
        style_hyperlink(text = 'Yogi\U1f1fa\U1f1f8') |> 
        c()
    } else if (length(x@youjia)) {
      x@youjia |> 
        sprintf(fmt = 'https://youjiaflavors.com/products/%s') |>
        style_hyperlink(text = '\u53cb\u52a0\U1f1e8\U1f1f3') |> 
        c()
    } else character()
  } # manufacturer
  
  x <- x |>
    add_store_url_(store = 'acme', fmt = 'https://www.acmemarkets.com/shop/product-details.%s.html', store_brand = 'Albertsons\U1f1fa\U1f1f8', store_name = 'Acme Market') |>
    add_store_url_(store = 'amazon', fmt = 'https://www.amazon.com/gp/product/%s', store_brand = 'Amazon Basic', store_name = 'Amazon') |>
    add_store_url_(store = 'bjs', fmt = 'https://www.bjs.com/product/%s', store_brand = 'BJ\'s', store_name = 'BJ\'s') |> # Wellsley Farms and Berkley Jensen
    add_store_url_(store = 'costco', fmt = 'https://www.costco.com/.product.%s.html', store_brand = 'Kirkland\U1f1fa\U1f1f8', store_name = 'Costco') |>
    add_store_url_(store = 'costcoBiz', fmt = 'https://www.costcobusinessdelivery.com/.product.%s.html', store_brand = 'Kirkland\U1f1fa\U1f1f8', store_name = 'Costco Business Delivery') |>
    #if (length(x@giantfood)) x@brand <- 'Giant Food\U1f1fa\U1f1f8'
    add_store_url_(store = 'jfc', fmt = 'https://www.jfc.com/product/item/%s', store_brand = NA_character_, store_name = 'JFC International Inc.') |>
    add_store_url_(store = 'kraftheinzawayfromhome', fmt = 'https://www.kraftheinzawayfromhome.com/products/%s', store_brand = NA_character_, store_name = 'Kraft Heinz Away From Home\U1f1fa\U1f1f8') |>
    add_store_url_(store = 'lucerne', fmt = 'https://www.acmemarkets.com/shop/product-details.%s.html', store_brand = 'Lucerne\U1f1fa\U1f1f8') |>
    add_store_url_(store = 'sams', fmt = 'https://www.samsclub.com/p/%s', store_brand = 'Member\'s Mark\U1f1fa\U1f1f8', store_name = 'Sam\'s Club') |>
    add_store_url_(store = 'target', fmt = 'https://www.target.com/p/-/%s', store_brand = NA_character_, store_name = 'Target') |>
    add_store_url_(store = 'totalwine', fmt = 'https://www.totalwine.com/p/%s', store_brand = NA_character_, store_name = 'Total Wine') |>
    add_store_url_(store = 'walmart', fmt = 'https://www.walmart.com/ip/%s', store_brand = 'Great Value\U1f1fa\U1f1f8', store_name = 'Walmart') |>
    add_store_url_(store = 'wawa', fmt = 'https://order.wawa.com/web/product/%s', store_brand = 'Wawa\U1f1fa\U1f1f8') |>
    add_store_url_(store = 'webstaurant', fmt = 'https://www.webstaurantstore.com/product/%s.html', store_brand = NA_character_, store_name = 'Webstaurant') |>
    add_store_url_(store = 'weee', fmt = 'https://www.sayweee.com/zh/product/weee/%s', store_brand = NA_character_, store_name = 'Weee!') |>
    add_store_url_(store = 'wegmans', fmt = 'https://www.wegmans.com/shop/product/%s/', store_brand = 'Wegmans\U1f1fa\U1f1f8', store_name = 'Wegmans') |>
    add_store_url_(store = 'wegmansorganic', fmt = 'https://www.wegmans.com/shop/product/%s/', store_brand = 'Wegmans Organic\U1f1fa\U1f1f8') |>
    add_store_url_(store = 'wholefoods', fmt = 'https://www.wholefoodsmarket.com/product/%s', store_brand = '365 by Whole Foods\U1f1fa\U1f1f8', store_name = 'Whole Foods\U1f1fa\U1f1f8') |>
    add_store_url_(store = 'yamibuy', fmt = 'https://u.yamibuy.com/%s', store_brand = 'Yami\u4e9a\u7c73\U1f1fa\U1f1f8')
  
  if (length(x@brand)) {
    x@brand <- x@brand |> make_ansi_style('sienna')() |> style_bold() |> c()
  }
  
  vol <- c(length(x@servingCup), length(x@servingTbsp), length(x@servingTsp), length(x@serving_floz), length(x@serving_ml))
  if (sum(vol) > 1L) stop('cannot have more than one of `@servingCup`, `@servingTbsp` and `@servingTsp`')
  if (vol[1L]) {
    x@servingTsp <- 48 * x@servingCup
    x@servingCup <- numeric()
  } else if (vol[2L]) {
    x@servingTsp <- 3 * x@servingTbsp
    x@servingTbsp <- numeric()
  } else if (vol[4L]) {
    x@servingTsp <- 6 * x@serving_floz
    x@serving_floz <- numeric()
  } else if (vol[5L]) {
    x@servingTsp <- x@serving_ml / 4.929
    x@serving_ml <- numeric()
  }
  
  for (i in names(which(getSlots('nutrition') == 'numeric'))) {
    iv <- slot(x, name = i)
    if (length(iv) && all(iv == 0)) slot(x, name = i) <- numeric() # else do nothing
  }
  
  if (!length(x@sugar) && length(x@addedSugar)) {
    x@sugar <- x@addedSugar
  }
  
  cost_ <- c(
    'usd' = if (length(x@usd)) x@usd else NA_real_,
    'JP\U1f4b4' = if (length(x@jpy)) {
      #x@jpy / quantmod::getQuote('USDJPY=X')$Last # may cause devtools::check() error
      x@jpy / 153.507
    } else NA_real_
  )
  cost_ <- cost_[!is.na(cost_)]
  if (length(setdiff(names(cost_), 'usd'))) {
    cost_source <- cost_ |> names() |> sprintf(fmt = '\u21a4%s') 
    cost_source[names(cost_) == 'usd'] <- ''
  } else cost_source <- ''
  cost_txt0 <- sprintf(
    fmt = 'US %s %s',
    cost_ |> sprintf(fmt = '\U1f4b5%.2f') |> col_green() |> style_bold(), 
    cost_source |> col_cyan() |> style_bold()
  )
  n_cost_ <- length(cost_)
  if (!n_cost_) {
    x@cost_ <- character()
  } else if (n_cost_ == 1L) {
    x@cost_ <- cost_txt0
    x@usd <- unname(cost_)
  } else {
    cost_min <- which.min(cost_)
    cost_txt0[cost_min] <- (cost_txt0[cost_min]) |> bg_br_yellow()
    x@cost_ <- cost_txt0
    x@usd <- unname(cost_[cost_min]) # to calculate price in 'recipe'
  }
  
  return(x)
  
})










#' @rdname nutrition-class
#' @param object see **Usage**
#' @export
setMethod(f = show, signature = 'nutrition', definition = \(object) {
  
  obj <- object
  
  cat('\n')
  paste(c(obj@name, obj@brand), collapse = ' ') |> 
    cli_text()
  cat('\n')
  
  #cat('Nutrition Facts\n\n')

  sprintf(
    fmt = 'Serving Size %s %s %s\n\n', 
    obj@servingGram |> sprintf(fmt = '%.4g grams') |> make_ansi_style('purple')() |> style_bold(), 
    (obj@servingGram/28.3495) |> sprintf(fmt = '%.1f oz') |> make_ansi_style('seagreen')() |> style_bold(),
    fmt_vol(x = obj@servingGram, nm = list(obj))
  ) |> cat()
    
  if (length(obj@cost_)) {
    if (is.na(obj@date)) {
      obj@cost_ |>
        cat(sep = '\n')
    } else {
      obj@date |>
        #as.character() |> # no need
        make_ansi_style('grey70')() |>
        sprintf(fmt = '%s  \U0001f5d3\ufe0f%s', obj@cost_, . = _) |> 
        cat(sep = '\n')
    }
  }         
  
  if (length(obj@calorie)) {
    cat('Calories', obj@calorie |> sprintf(fmt = '\U1f525%.0f') |> col_br_red() |> style_bold(), '\n')
  }
  
  cat('\n')
  
  sprintf(fmt = 'Water: %.4g grams %s\n', obj@water, fmt_perc(obj, 'water')) |> cat()
  sprintf(fmt = 'Fat: %.4g grams %s\n', obj@fat, fmt_perc(obj, 'fat')) |> cat()
  
  if (length(obj@cholesterol)) {
    if (obj@cholesterol > 1) {
      sprintf(fmt = 'Cholesterol: %.3g grams %s\n', obj@cholesterol, fmt_perc(obj, 'cholesterol')) |> cat()
    } else sprintf(fmt = 'Cholesterol: %.3g milligrams %s\n', 1e3 * obj@cholesterol, fmt_perc(obj, 'cholesterol')) |> cat()
  }
  
  if (length(obj@sodium)) {
    if (obj@sodium > 1) {
      sprintf(fmt = 'Sodium: %.3g grams %s\n', obj@sodium, fmt_perc(obj, 'sodium')) |> cat()
    } else sprintf(fmt = 'Sodium: %.3g milligrams %s\n', 1e3 * obj@sodium, fmt_perc(obj, 'sodium')) |> cat()
  }
  sprintf(fmt = 'Total Carbohydrate: %.4g grams %s\n', obj@carbohydrate, fmt_perc(obj, 'carbohydrate')) |> cat()
  sprintf(fmt = ' \u21ac Dietary Fiber: %.4g grams %s\n', obj@fiber, fmt_perc(obj, 'fiber')) |> cat()
  sprintf(fmt = ' \u21ac Sugar: %.4g grams %s\n', obj@sugar, fmt_perc(obj, 'sugar')) |> cat()
  sprintf(fmt = ' \u21ac Added Sugar: %.4g grams %s\n', obj@addedSugar, fmt_perc(obj, 'addedSugar')) |> cat()
  sprintf(fmt = 'Alcohol: %.4g grams %s\n', obj@alcohol, fmt_perc(obj, 'alcohol')) |> cat()
  sprintf(fmt = 'Protein: %.3g grams %s\n', obj@protein, fmt_perc(obj, 'protein')) |> cat()
  
  # cat(c(rep('\u058e', times = 25), '\n\n'), sep = '')
  cat('\n')
  
  #if (length(obj@machine)) {
  #  cat('\nMachine:\n')
  #  sprintf(fmt = '%s: %s\n', names(obj@machine), obj@machine) |> cat(sep = '')
  #}
  
  if (length(obj@superior)) {
    cli_text('\u274c I prefer ', sprintf(
      fmt = '{.run [%s](cooking::%s())}', 
      obj@superior |> make_ansi_style('sienna')() |> style_bold(),
      obj@superior
    ) |> paste(collapse = ', '))
    cat('\n')
  } 
  
  if (nrv <- length(obj@review)) {
    obj@review |> sprintf(fmt = '\U1f4dd %s\n') |> cat(sep = '')
    cat('\n')
  }
  
  if (length(obj@contain)) {
    obj@contain |>
      tolower() |>
      vapply(FUN = \(i) {
        call(name = i) |>
          eval() |>
          format() # [format.spice], etc.
      }, FUN.VALUE = '') |>
      paste(collapse = ' ') |> 
      sprintf(fmt = 'Contains %s\n\n') |> 
      cat()
  }

  if (length(obj@fdc)) {
    paste('\U1f4dd', style_hyperlink(url = sprintf(fmt = 'https://fdc.nal.usda.gov/fdc-app.html#/food-details/%s/nutrients', obj@fdc), text = 'FoodData Central')) |> 
    cat(sep = '\n')
  }
  
  if (length(obj@pubchem)) {
    paste('\U1f4dd', style_hyperlink(url = sprintf(fmt = 'https://pubchem.ncbi.nlm.nih.gov/compound/%s', obj@pubchem), text = 'PubChem')) |> 
    cat(sep = '\n')
  }
  
  if (length(obj@url)) cat(obj@url, sep = '\n')
  
  suggested_ <- object |> 
    as(Class = 'recipe')
  if (length(suggested_)) show(suggested_) # I have not defined a NULL \linkS4class{recipe}
  
  cat('\n')
  
  object@tool |>
    print.toollist()

})








