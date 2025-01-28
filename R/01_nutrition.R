

#' @title \linkS4class{extra}
#' 
#' @description
#' Extra water, etc. required to hydrate flavoring powder in a dough
#' 
#' @slot water \link[base]{numeric} scalar
#' 
#' @name extra
#' @aliases extra-class
#' @export
setClass(Class = 'extra', slots = c(
  water = 'numeric'
), prototype = prototype(
  water = 0
))



#' @title \linkS4class{nutrition} Information
#' 
#' @description 
#' Nutrition information.
#' 
#' @slot brand \link[base]{character} scalar, manufacture brand
#' 
#' @slot name \link[base]{character} scalar, product name
#' @slot alias \link[base]{character} scalar, product alias
#' @slot call \link[base]{language}, function name to create this nutrition
#' @slot name_glue \link[base]{character} scalar, to be passed to function \link[cli]{cli_text} (workhorse `cli:::glue_cmd`)
#' 
#' @slot suggestion \link[base]{list}
#' 
#' @slot extra \linkS4class{extra} object
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
#' @slot lkkhk \link[base]{character} scalar
#' @slot lkkusa \link[base]{character} scalar
#' @slot maeda \link[base]{character} scalar
#' @slot marukyu \link[base]{character} scalar
#' @slot mccormick,mccormickculinary,oldbay,grillmates \link[base]{character} scalar
#' @slot meyenberg \link[base]{character} scalar
#' @slot mizkanjpn,mizkanusa \link[base]{character} scalars
#' @slot nancysyogurt \link[base]{character} scalar
#' @slot navitas \link[base]{character} scalar
#' @slot nescafe,nescafeGoldEspressoCA,nescafeGoldEspressoUS,nescafeUS,nestle,nido \link[base]{character} scalars
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
#' @slot yogi \link[base]{character} scalar
#' 
#' 
# @slot machine \link[base]{character} scalar or \link[base]{vector}, machine(s) used
#' @slot machine \link[base]{function}
#' 
#' @slot review \link[base]{character} scalar or \link[base]{vector}, additional note to chef
#' @slot superior \link[base]{character} scalar
#' @slot contain \link[base]{character} scalar or vector, names of additives
#' 
#' @slot servingGram \link[base]{numeric} scalar, serving size in grams
#' @slot serving_oz \link[base]{numeric} scalar, serving size in ounces
#' @slot servingCup,servingTbsp,servingTsp \link[base]{numeric} scalar, serving size in cups, tablespoons, teaspoons
# @slot servingBag \link[base]{numeric} scalar, serving size in (tea) bags
#' @slot serving_floz \link[base]{numeric} scalar, serving size in fluid ounce
#' @slot serving_ml \link[base]{numeric} scalar, serving size in milli litre
#' 
#' @slot pieceWeight \link[base]{numeric} scalar, weight in grams per piece
#' 
#' @slot usd \link[base]{numeric} scalar, price (in USD) \strong{per serving}
#' @slot jpy \link[base]{numeric} scalar, price (in Japanese Yen) \strong{per serving}
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
#' @aliases nutrition-class  
#' @export
setClass(Class = 'nutrition', slots = c(
  
  brand = 'character',
  
  alias = 'character',
  call = 'language',
  name = 'character',
  name_glue = 'character',
  
  suggestion = 'list',
  
  extra = 'extra',
  
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
  nescafe = 'character', nescafeGoldEspressoCA = 'character', nescafeGoldEspressoUS = 'character', nescafeUS = 'character', nestle = 'character', nido = 'character',
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
  yogi = 'character',
  
  machine = 'function',
  review = 'character',
  superior = 'character',
  contain = 'character',
  
  servingGram = 'numeric', serving_oz = 'numeric',
  servingCup = 'numeric', servingTbsp = 'numeric', servingTsp = 'numeric',
  #servingBag = 'numeric',
  serving_floz = 'numeric',
  serving_ml = 'numeric',
  pieceWeight = 'numeric',
  
  usd = 'numeric',
  jpy = 'numeric',
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
  machine = function(x) NULL,
  calorie = 0
))






setMethod(f = initialize, signature = 'nutrition', definition = function(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
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
      if (is.symbol(x@call)) {
        # do nothing
      } else if (as.character(x@call[[1L]]) %in% c('::', ':::')) {
        x@call <- x@call[[3L]]
      } else stop('then?')
      #x@call <- quote(`<UNDEFINED>`) # no need
      x@name_glue <- paste(make_ansi_style('orchid4')(sprintf(fmt = '{.run [%s](cooking::%s())}', x@alias, as.character(x@call))), x@name)
      x@name <- paste(make_ansi_style('orchid4')(x@alias), x@name) # after `@name_glue <-` :)
      x@alias <- character()
    } else x@name_glue <- x@name
    
  }
  
  # serving weight
  if (length(x@serving_oz)) {
    if (length(x@servingGram)) warning('@servingGram over written by @serving_oz')
    x@servingGram <- x@serving_oz * 28.3495
  }
  if (!length(x@servingGram)) stop('must have `servingGram` for nutrition object')
  
  # process user-input `@url` first
  if (length(x@url)) {
    x@url <- c(style_hyperlink(
      url = x@url, 
      text = gsub('^https://|^http://', replacement = '', x = x@url)
    ))
  }
  
  if (!length(x@brand)) { # manufacturer
    x@brand <- if (length(x@bachans)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://bachans.com/products/%s', x@bachans), text = 'Bachan\'s\U1f1fa\U1f1f8'))
    } else if (length(x@baileys)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.baileys.com/en/products/baileys-%s', x@baileys), text = 'Baileys\U1f1ee\U1f1ea'))
    } else if (length(x@bassetts)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.bassettsicecream.com/_files/ugd/%s.pdf', x@bassetts), text = 'Bassetts\U1f368\U1f1fa\U1f1f8'))
    } else if (length(x@belgioioso)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.belgioioso.com/products/%s', x@belgioioso), text = 'BelGioioso\U1f1fa\U1f1f8'))
    } else if (length(x@bobsredmill)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.bobsredmill.com/%s.html', x@bobsredmill), text = 'Bob\'s Red Mill\U1f1fa\U1f1f8'))
    } else if (length(x@bouchard)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://bouchardchocolate.com/products/%s', x@bouchard), text = 'Bouchard\U1f1e7\U1f1ea'))
    } else if (length(x@cheesecakefactoryfreezer)) {
      if (!length(x@cheesecakefactorybakery)) x@cheesecakefactorybakery <- x@cheesecakefactoryfreezer
      paste(
        c(style_hyperlink(url = sprintf(fmt = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-freezer/%s', x@cheesecakefactoryfreezer), text = 'Cheesecake')),
        c(style_hyperlink(url = sprintf(fmt = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-bakery/%s', x@cheesecakefactorybakery), text = 'Factory\U1f1fa\U1f1f8'))
      )
    } else if (length(x@clearwater)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.clearwater.ca/en/seafood-industry/%s', x@clearwater), text = 'Clearwater\U1f1e8\U1f1e6'))
    } else if (length(x@countrytime)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.kraftheinz.com/country-time/products/%s', x@countrytime), text = 'Country Time\U1f1fa\U1f1f8'))
    } else if (length(x@daisybrand)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.daisybrand.com/%s', x@daisybrand), text = 'Daisy\U1f1fa\U1f1f8'))
    } else if (length(x@delmonte)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.delmonte.com/products/%s', x@delmonte), text = 'Del Monte\U1f1fa\U1f1f8'))
    } else if (length(x@dolesunshine)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.dolesunshine.com/us/en/products/%s', x@dolesunshine), text = 'Dole\U1f33a'))
    } else if (length(x@domino)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.dominosugar.com/products/%s', x@domino), text = 'Domino\U1f1fa\U1f1f8'))
    } else if (length(x@epicprovisions)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://epicprovisions.com/products/%s', x@epicprovisions), text = 'Epic\U1f1fa\U1f1f8'))
    } else if (length(x@fleischmannsyeast)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.fleischmannsyeast.com/product-page/#%d', x@fleischmannsyeast), text = 'Fleischmann\'s\U1f1fa\U1f1f8'))
    } else if (length(x@fourC)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.4c.com/4c-product/%s', x@fourC), text = '4C\U1f1fa\U1f1f8'))
    } else if (length(x@frontiercoop)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.frontiercoop.com/products/frontier-co-op-%s', x@frontiercoop), text = 'Frontier Co-op\U1f1fa\U1f1f8'))
    } else if (length(x@ghirardelli)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.ghirardelli.com/%s', x@ghirardelli), text = 'Ghirardelli\U1f1fa\U1f1f8'))
    } else if (length(x@godiva)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.godiva.com/%s.html', x@godiva), text = 'Godiva\U1f1e7\U1f1ea'))
    } else if (length(x@haagendazs)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.icecream.com/us/en/brands/haagen-dazs/products/%s-ice-cream', x@haagendazs), text = 'Ha\u0308agen-Dazs\U1f1fa\U1f1f8'))
    } else if (length(x@haitaiusa)) {
      # not sure if same company
      # https://en.wikipedia.org/wiki/Haitai
      c(style_hyperlink(url = sprintf(fmt = 'https://www.haitaiusa.com/product-page/%s', x@haitaiusa), text = 'HaiTai\U1f1fa\U1f1f8'))
    } else if (length(x@harney)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.harney.com/products/%s', x@harney), text = 'Harney & Sons\U1f1fa\U1f1f8'))
    } else if (length(x@heinz)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.heinz.com/products/%s', x@heinz), text = 'Heinz\U1f1fa\U1f1f8'))
    } else if (length(x@hellmanns)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.hellmanns.com/us/en/p/%s', x@hellmanns), text = 'Hellmann\'s\U1f1fa\U1f1f8'))
    } else if (length(x@horizon)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://horizon.com/organic-dairy-products/%s', x@horizon), text = 'Horizon\U1f1fa\U1f1f8'))
    } else if (length(x@ippodoglobal) & length(x@ippodousa)) {
      x@url <- c(x@url, style_hyperlink(url = sprintf(fmt = 'https://ippodotea.com/products/%s', x@ippodousa), text = '\U1f6d2 US Shop'))
      jpn_ <- c(style_hyperlink(url = sprintf(fmt = 'https://www.ippodo-tea.co.jp/products/%s', x@ippodojpn), text = '\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5'))
      global_ <- c(style_hyperlink(url = sprintf(fmt = 'https://global.ippodo-tea.co.jp/products/%s', x@ippodoglobal), text = 'Ippodo\U1f375'))
      paste(global_, jpn_)
    } else if (length(x@itoen)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://itoen.com/products/%s', x@itoen), text = 'Ito-En\u4f0a\u85e4\u5712\U1f1ef\U1f1f5'))
    } else if (length(x@jayone)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.jayonefoods.com/product/%s', x@jayone), text = 'JayOne\U1f1f0\U1f1f7'))
    } else if (length(x@juniorscheesecake)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.juniorscheesecake.com/all-items/%s', x@juniorscheesecake), text = 'Junior\'s\U1f1fa\U1f1f8'))
    } else if (length(x@justtea)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://shop.wegmans.com/product/%s', x@justtea), text = 'Just Tea\U1f1fa\U1f1f8'))
    } else if (length(x@kahlua)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.kahlua.com/en-us/products/%s', x@kahlua), text = 'Kahlu\u0301a\U1f1f2\U1f1fd'))
    } else if (length(x@kerrygold)) {
      kg_ <- c(style_hyperlink(url = sprintf(fmt = 'https://kerrygold.com/products/%s', x@kerrygold), text = 'Kerrygold\U1f1ee\U1f1ea'))
      if (length(x@kerrygoldusa)) {
        paste0(kg_, c(style_hyperlink(url = sprintf(fmt = 'https://www.kerrygoldusa.com/products/%s', x@kerrygoldusa), text = '\U1f1fa\U1f1f8')))
      } else kg_
    } else if (length(x@kikkomanusa)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://kikkomanusa.com/foodservice/products/%s', x@kikkomanusa), text = 'Kikkoman\u4e80\u7532\u842c\U1f1ef\U1f1f5'))
    } else if (length(x@kingarthur)) {
      c(style_hyperlink(url = sprintf(
        #fmt = 'https://shop.kingarthurbaking.com/items/%d',
        fmt = 'https://www.kingarthurbaking.com/search?query=%d', 
        x@kingarthur), text = 'King Arthur\U1f1fa\U1f1f8'))
    } else if (length(x@kingarthurpro)) {
      c(style_hyperlink(url = 'https://www.kingarthurbaking.com/pro/products', text = 'King Arthur\U1f1fa\U1f1f8'))
    } else if (length(x@philadelphia)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.kraftheinz.com/philadelphia/products/%s', x@philadelphia), text = 'Philadelphia\U1f1fa\U1f1f8'))
    } else if (length(x@krusteaz)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.krusteaz.com/products/%s', x@krusteaz), text = 'Krusteaz\U1f1fa\U1f1f8'))
    } else if (length(x@landolakes)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.landolakes.com/products/%s', x@landolakes), text = 'Land O Lakes\U1f1fa\U1f1f8'))
    } else if (length(x@leaperrins)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.kraftheinz.com/lea-perrins/products/%s', x@leaperrins), text = 'Lea & Perrins\U1f1ec\U1f1e7'))
    } else if (length(x@lkkhk)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://hk.lkk.com/zh-hk/foodservices/products/%s', x@lkkhk), text = 'LeeKumKee\u674e\u9326\u8a18\U1f1ed\U1f1f0'))
    } else if (length(x@lkkusa)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://usa.lkk.com/zh-hk/products/%s', x@lkkusa), text = 'LeeKumKee\u674e\u9326\u8a18\U1f1ed\U1f1f0'))
    } else if (length(x@maeda)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://maeda-en.com/collections/matcha-powder/products/%s', x@maeda), text = 'maeda-en\u524d\u7530\u5712\U1f1ef\U1f1f5'))
    } else if (length(x@marukyu)) {
      x@url <- c(x@url, style_hyperlink(url = 'https://www.marukyu-koyamaen.co.jp/english/catalog/Temporary_Simple_English_Catalog_for_Eng_HP_20240304.pdf', text = '2024 Catalog'))
      paste(
        c(style_hyperlink(url = sprintf(fmt = 'https://www.marukyu-koyamaen.co.jp/english/shop/products/%s', x@marukyu), text = 'Marukyu Koyamaen\U1f375')),
        c(style_hyperlink(url = sprintf(fmt = 'https://www.marukyu-koyamaen.co.jp/motoan-shop/products/%s', x@marukyu), text = '\u4e38\u4e45\u5c0f\u5c71\u5712\U1f1ef\U1f1f5'))
      )
    } else if (length(x@mccormick)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.mccormick.com/%s', x@mccormick), text = 'McCormick\U1f1fa\U1f1f8'))
    } else if (length(x@mccormickculinary)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.mccormickforchefs.com/en-us/products/mccormick-culinary/%s', x@mccormickculinary), text = 'McCormick\U1f1fa\U1f1f8'))
    } else if (length(x@oldbay)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.mccormickforchefs.com/en-us/products/old-bay/%s', x@oldbay), text = 'McCormick\U1f1fa\U1f1f8'))
    } else if (length(x@grillmates)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.mccormickforchefs.com/en-us/products/grill-mates/%s', x@grillmates), text = 'McCormick\U1f1fa\U1f1f8'))
    } else if (length(x@meyenberg)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.meyenberg.com/products/%s', x@meyenberg), text = 'Meyenberg\U1f1fa\U1f1f8'))
    } else if (length(x@mizkanjpn)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.mizkan.co.jp/product/group/?gid=%s', x@mizkanjpn), text = 'mizkan\u30df\u30c4\u30ab\u30f3\U1f1ef\U1f1f5'))
    } else if (length(x@nancysyogurt)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://nancysyogurt.com/products/%s', x@nancysyogurt), text = 'Nancy\'s\U1f1fa\U1f1f8'))
    } else if (length(x@navitas)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://navitasorganics.com/products/%s', x@navitas), text = 'Navitas\U1f1fa\U1f1f8'))
    } else if (length(x@nescafe)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.nescafe.com/our-coffees/%s', x@nescafe), text = 'Nescaf\u00e9\U1f1e8\U1f1ed'))
    } else if (length(x@nescafeGoldEspressoCA)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.madewithnestle.ca/nescafe/nescafe-%s', x@nescafeGoldEspressoCA), text = 'Nescaf\u00e9 Gold Espresso\U1f1e8\U1f1ed'))
    } else if (length(x@nescafeGoldEspressoUS)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.nescafe.com/us/products/gold-espresso-%s', x@nescafeGoldEspressoUS), text = 'Nescaf\u00e9 Gold Espresso\U1f1e8\U1f1ed'))
    } else if (length(x@nescafeUS)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.nescafe.com/us/products/%s', x@nescafeUS), text = 'Nescaf\u00e9\U1f1e8\U1f1ed'))
    } else if (length(x@nestle)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.nestleprofessional.us/search?search=%s', x@nestle), text = 'Nestl\u00e9\U1f1e8\U1f1ed'))
    } else if (length(x@nido)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.goodnes.com/nido/products/nido-%s', x@nido), text = 'Nestl\u00e9 Nido\U1f1e8\U1f1ed'))
    } else if (length(x@nielsenmassey)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://nielsenmassey.com/products/%s', x@nielsenmassey), text = 'Nielsen-Massey\U1f1fa\U1f1f8'))
    } else if (length(x@nishiki)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.jfc.com/product/item/%s', x@nishiki), text = 'Nishiki\u9326\U1f1fa\U1f1f8'))
    } else if (length(x@oreo)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.oreo.com/products/%s', x@oreo), text = 'Nabisco\U1f1fa\U1f1f8'))
    } else if (length(x@organicvalley)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.organicvalley.coop/products/%s', x@organicvalley), text = 'Organic Valley\U1f1fa\U1f1f8'))
    } else if (length(x@paromi)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://paromi.com/products/%s', x@paromi), text = 'Paromi\U1f1fa\U1f1f8'))
    } else if (length(x@quakeroats)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.quakeroats.com/products/%s', x@quakeroats), text = 'Quaker\U1f1fa\U1f1f8'))
    } else if (length(x@raos)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.raos.com/products/%s', x@raos), text = 'Rao\'s\U1f1fa\U1f1f8'))
    } else if (length(x@runamok)) {
      runamok_ <- c(style_hyperlink(url = sprintf(fmt = 'https://runamokmaple.com/shop/product/%s', x@runamok), text = 'Runamok\U1f1fa\U1f1f8'))
      if (length(x@whistlepigwhiskey)) {
        paste(runamok_, c(style_hyperlink(url = sprintf(fmt = 'https://shop.whistlepigwhiskey.com/products/%s', x@whistlepigwhiskey), text = 'Whistlepig\U1f1fa\U1f1f8')), sep = '-')
      } else runamok_
    } else if (length(x@sanford)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.sanford.co.nz/our-seafood/our-products/%s', x@sanford), text = 'Sanford\U1f1f3\U1f1ff'))
    } else if (length(x@siggis)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://siggis.com/product/%s', x@siggis), text = 'Siggi\'s\U1f1fa\U1f1f8'))
    } else if (length(x@simplyorganic)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.simplyorganic.com/products/simply-organic-%s', x@simplyorganic), text = 'Simply Organic\U1f1fa\U1f1f8'))
    } else if (length(x@sodastream)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://sodastream.com/products/%s', x@sodastream), text = 'SodaStream\U1f1fa\U1f1f8'))
    } else if (length(x@starbucks)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://athome.starbucks.com/products/%s', x@starbucks), text = 'Starbucks\U1f1fa\U1f1f8'))
    } else if (length(x@starbucks_hot)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.starbucks.com/menu/product/%s/hot/nutrition', x@starbucks_hot), text = 'Starbucks\U1f1fa\U1f1f8'))
    } else if (length(x@starbucks_iced)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.starbucks.com/menu/product/%s/iced/nutrition', x@starbucks_iced), text = 'Starbucks\U1f1fa\U1f1f8'))
    } else if (length(x@stassentea)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.stassentea.com/shop-now/%s', x@stassentea), text = 'Stassen\U1f1f1\U1f1f0'))
    } else if (length(x@stonewall)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.stonewallkitchen.com/%d.html', x@stonewall), text = 'Stonewall Kitchen\U1f1fa\U1f1f8'))
    } else if (length(x@stonyfield)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.stonyfield.com/products/%s', x@stonyfield), text = 'Stonyfield\U1f1fa\U1f1f8'))
    } else if (length(x@swiftmeats)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://swiftmeats.com/products/%s', x@swiftmeats), text = 'Swift\U1f1fa\U1f1f8'))
    } else if (length(x@swissmiss)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.swissmiss.com/%s', x@swissmiss), text = 'Swiss Miss\U1f1fa\U1f1f8'))
    } else if (length(x@tsemporium)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.tsemporium.com/en_us/xproduct/index/index/s/%s', x@tsemporium), text = 'Tak Shing Hong\u5fb7\u6210\u884c\U1f1fa\U1f1f8'))
    } else if (length(x@thaikitchen)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.mccormick.com/thai-kitchen/products/%s', x@thaikitchen), text = 'Thai Kitchen\U1f1fa\U1f1f8'))
    } else if (length(x@twinings)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://twiningsusa.com/products/%s', x@twinings), text = 'Twinings\U1f1ec\U1f1e7'))
    } else if (length(x@wesson)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.purewesson.com/products/%s', x@wesson), text = 'Wesson\U1f1fa\U1f1f8'))
    } else if (length(x@yogi)) {
      c(style_hyperlink(url = sprintf(fmt = 'https://www.yogi-life.com/en-US/product/%s', x@yogi), text = 'Yogi\U1f1fa\U1f1f8'))
    } else character()
  } # manufacturer
  
  add_store_url_ <- function(x, store, fmt, store_brand, store_name = store_brand) {
    x_store <- slot(x, name = store)
    if (!length(x_store)) return(x)
    store_url <- sprintf(fmt = fmt, x_store)
    if (!length(x@brand)) {
      if (is.na(store_brand)) stop('must have `store_brand`')
      x@brand <- c(style_hyperlink(url = store_url, text = store_brand))
    } else x@url <- c(x@url, style_hyperlink(url = store_url, text = paste('\U1f6d2', store_name)))
    slot(x, name = store) <- vector(mode = typeof(x_store), length = 0L)
    return(x)
  }
  x <- add_store_url_(x, store = 'acme', fmt = 'https://www.acmemarkets.com/shop/product-details.%s.html', store_brand = 'Albertsons\U1f1fa\U1f1f8', store_name = 'Acme Market')
  x <- add_store_url_(x, store = 'amazon', fmt = 'https://www.amazon.com/gp/product/%s', store_brand = 'Amazon Basic', store_name = 'Amazon')
  x <- add_store_url_(x, store = 'bjs', fmt = 'https://www.bjs.com/product/%s', store_brand = 'BJ\'s', store_name = 'BJ\'s') # Wellsley Farms and Berkley Jensen
  x <- add_store_url_(x, store = 'costco', fmt = 'https://www.costco.com/.product.%s.html', store_brand = 'Kirkland\U1f1fa\U1f1f8', store_name = 'Costco')
  x <- add_store_url_(x, store = 'costcoBiz', fmt = 'https://www.costcobusinessdelivery.com/.product.%s.html', store_brand = 'Kirkland\U1f1fa\U1f1f8', store_name = 'Costco Business Delivery')
  #if (length(x@giantfood)) x@brand <- 'Giant Food\U1f1fa\U1f1f8'
  x <- add_store_url_(x, store = 'jfc', fmt = 'https://www.jfc.com/product/item/%s', store_brand = NA_character_, store_name = 'JFC International Inc.')
  x <- add_store_url_(x, store = 'kraftheinzawayfromhome', fmt = 'https://www.kraftheinzawayfromhome.com/products/%s', store_brand = NA_character_, store_name = 'Kraft Heinz\U1f1fa\U1f1f8')
  x <- add_store_url_(x, store = 'lucerne', fmt = 'https://www.acmemarkets.com/shop/product-details.%s.html', store_brand = 'Lucerne\U1f1fa\U1f1f8')
  x <- add_store_url_(x, store = 'sams', fmt = 'https://www.samsclub.com/p/%s', store_brand = 'Member\'s Mark\U1f1fa\U1f1f8', store_name = 'Sam\'s Club')
  x <- add_store_url_(x, store = 'target', fmt = 'https://www.target.com/p/-/%s', store_brand = NA_character_, store_name = 'Target')
  x <- add_store_url_(x, store = 'totalwine', fmt = 'https://www.totalwine.com/p/%s', store_brand = NA_character_, store_name = 'Total Wine')
  x <- add_store_url_(x, store = 'traderjoes', fmt = 'https://www.traderjoes.com/home/products/pdp/%s', store_brand = 'Trader Joe\'s\U1f1fa\U1f1f8')
  x <- add_store_url_(x, store = 'walmart', fmt = 'https://www.walmart.com/ip/%s', store_brand = 'Great Value\U1f1fa\U1f1f8', store_name = 'Walmart')
  x <- add_store_url_(x, store = 'wawa', fmt = 'https://order.wawa.com/web/product/%s', store_brand = 'Wawa\U1f1fa\U1f1f8')
  x <- add_store_url_(x, store = 'webstaurant', fmt = 'https://www.webstaurantstore.com/product/%s.html', store_brand = NA_character_, store_name = 'Webstaurant')
  x <- add_store_url_(x, store = 'weee', fmt = 'https://www.sayweee.com/zh/product/weee/%s', store_brand = NA_character_, store_name = 'Weee!')
  x <- add_store_url_(x, store = 'wegmans', fmt = 'https://shop.wegmans.com/product/%s/', store_brand = 'Wegmans\U1f1fa\U1f1f8', store_name = 'Wegmans')
  x <- add_store_url_(x, store = 'wegmansorganic', fmt = 'https://shop.wegmans.com/product/%s/', store_brand = 'Wegmans Organic\U1f1fa\U1f1f8')
  x <- add_store_url_(x, store = 'wholefoods', fmt = 'https://www.wholefoodsmarket.com/product/%s', store_brand = '365 by Whole Foods\U1f1fa\U1f1f8', store_name = 'Whole Foods\U1f1fa\U1f1f8')
  x <- add_store_url_(x, store = 'yamibuy', fmt = 'https://u.yamibuy.com/%s', store_brand = 'Yami\u4e9a\u7c73\U1f1fa\U1f1f8')
  
  if (length(x@brand)) {
    x@brand <- c(style_bold(make_ansi_style('sienna')(x@brand)))
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
    'US$' = if (length(x@usd)) x@usd else NA_real_,
    'JP\U1f4b4' = if (length(x@jpy)) x@jpy / 150.48 else NA_real_ # quantmod::getQuote('USDJPY=X')
  )
  cost_ <- cost_[!is.na(cost_)]
  n_cost_ <- length(cost_)
  if (!n_cost_) {
    x@cost_ <- character()
  } else if (n_cost_ == 1L) {
    if (names(cost_) == 'US$') {
      x@cost_ <- paste('US', style_bold(col_green(sprintf(fmt = '\U1f4b5%.2f', cost_))))
    } else {
      x@cost_ <- paste('US', style_bold(col_green(sprintf(fmt = '\U1f4b5%.2f', cost_))), sprintf(fmt = '(%s)', names(cost_)))
      x@usd <- unname(cost_)
    }
  } else {
    #cost_source <- sprintf(fmt = '(%s)', names(cost_))
    #cost_source[cost_source == '(US$)'] <- ''
    cost_source <- names(cost_)
    cost_source[cost_source == 'US$'] <- ''
    cost_min <- which.min(cost_)
    cost_txt0 <- paste('US', style_bold(col_green(sprintf(fmt = '\U1f4b5%.2f', cost_))), style_bold(col_br_red(cost_source)))
    cost_txt0[cost_min] <- bg_br_yellow(cost_txt0[cost_min])
    x@cost_ <- paste(cost_txt0, collapse = '\n')
    x@usd <- unname(cost_[cost_min]) # to calculate price in 'recipe'
    #x@jpy <- numeric() # other currency no use
  }
  
  return(x)
  
})





#' @export
nutrition.default <- function(x) stop('exception handling')

#' @export
nutrition.nutrition <- identity


gram_per_tsp <- function(x) {
  if (!length(x)) return(double())
  
  x1 <- if (is.character(x)) {
    if (anyNA(x) || !all(nzchar(x))) stop('input degenerated')
    names(x) <- x
    lapply(x, FUN = function(i) nutrition(eval(call(i))))
  } else x
  
  if (!is.recursive(x1) || !all(vapply(x1, FUN = inherits, what = 'nutrition', FUN.VALUE = NA))) 
    stop('input cannot be converted to `nutrition`')
  
  vapply(x1, FUN = function(i) {
    if (!length(i@servingTsp)) return(NA_real_) #stop(ix@name, ' does not have volume info')
    i@servingGram / i@servingTsp
  }, FUN.VALUE = NA_real_, USE.NAMES = TRUE)
}


format_pc <- function(object, name) {
  ret <- slot(object, name = name) / eval(call(name))@servingGram
  style_bold(col_br_magenta(sprintf(fmt = '%.3gpcs', ret)))
}

getTealoose <- function(x) {
  # `x` is recipe@teabag, number of tea bags
  if (!length(x)) return(numeric())
  info_ <- lapply(names(x), FUN = function(i) eval(call(i)))
  mapply(FUN = function(info, pc) {
    info@servingGram * pc
  }, pc = x, info = info_)
}

getTeabag <- function(x) {
  # `x` is recipe@tea, weight of loose tea
  if (!length(x)) return(numeric())
  info_ <- lapply(names(x), FUN = function(i) eval(call(i)))
  mapply(FUN = function(info, wt) {
    wt / info@servingGram
  }, wt = x, info = info_)
}



getGelatinLeaf <- function(x) {
  col_br_blue(sprintf(fmt = '%.1f leaves', x/2))
}


format_vol <- function(x, nm = names(x)) {
  
  if (!length(x)) return(character())
  
  y <- x / gram_per_tsp(nm)

  id <- (ceiling(y) - y < 1e-6)
  if (any(id, na.rm = TRUE)) y[which(id)] <- ceiling(y[which(id)])

  cup <- y %/% 48 # 1cup is 48tsp
  y <- y %% 48
  
  cup1 <- y %/% (48*2/3) # 2/3 cup
  y <- y %% (48*2/3)
  
  cup2 <- y %/% (48/2) # 0 or 1; number of half-cup
  y <- y %% (48/2)
  
  cup3 <- y %/% (48/3) # 0 or 1; number of 1/3 cup (at most one 1/3 cup in less than one 1/2 cup)
  y <- y %% (48/3)
  
  cup4 <- y %/% (48/4) # 0 or 1; number of quarter-cup (at most one quarter cup in less than one 1/3 cup)
  y <- y %% (48/4)
  
  Tbsp <- y %/% 3 
  y <- y %% 3
  
  tsp1a <- y %/% 2 # 0 or 1, number of 2tsp
  y <- y %% 2
  
  tsp1 <- y %/% 1.5 # 0 or 1, number of 1.5 tsp
  y <- y %% 1.5
  
  tsp2 <- y %/% 1 # 0 or 1, number of 1tsp
  y <- y %% 1
  
  tsp3 <- y %/% .5 # 0 or 1, number of half-tsp
  y <- y %% .5
  
  tsp4 <- y %/% .25 # 0 or 1, number of quarter-tsp
  y <- y %% .25
  
  tsp5 <- y %/% .125 # 0 or 1, number of one-eighth tsp
  # y <- y %% .125 # no longer care
  
  unlist(.mapply(FUN = function(...) {
    z0 <- c(...)
    z1 <- z0[!is.na(z0)]
    if (!length(z1)) return('') # `z1` either all-NA, or none-NA
    z <- z1[seq_len(min(3L, length(z1)))]
    style_bold(col_br_blue(paste(z, collapse = ' ')))
  }, dots = list(
    ifelse(cup > 0, yes = sprintf(fmt = '%dCup', cup), no = NA_character_), 
    ifelse(cup1, yes = '\u2154Cup', no = NA_character_), 
    ifelse(cup2, yes = '\u00bdCup', no = NA_character_), 
    ifelse(cup3, yes = '\u2153Cup', no = NA_character_), 
    ifelse(cup4, yes = '\u00bcCup', no = NA_character_), 
    ifelse(Tbsp > 0, yes = sprintf(fmt = '%dTbsp', Tbsp), no = NA_character_),
    ifelse(tsp1a, yes = '2tsp', no = NA_character_),
    ifelse(tsp1, yes = '1\u00bdtsp', no = NA_character_),
    ifelse(tsp2, yes = '1tsp', no = NA_character_),
    ifelse(tsp3, yes = '\u00bdtsp', no = NA_character_),
    ifelse(tsp4, yes = '\u00bctsp', no = NA_character_),
    ifelse(tsp5, yes = '\u215btsp', no = NA_character_)
  ), MoreArgs = NULL))
  
}






#' @rdname show_cooking
#' @aliases show,nutrition-method
#' @export
setMethod(f = show, signature = 'nutrition', definition = function(object) {
  
  obj <- object
  
  cat('\n')
  cli_text(paste(c(obj@name_glue, obj@brand), collapse = ' '))
  cat('\n')
  
  #cat('Nutrition Facts\n\n')

  cat(sprintf(fmt = 'Serving Size: %.4g grams %s\n\n', obj@servingGram, format_vol(x = obj@servingGram, nm = list(obj))))
  cat(sprintf(fmt = '%s\n', obj@cost_))
  if (length(obj@calorie)) cat('Calories', style_bold(col_br_red(sprintf(fmt = '\U1f525%.0f', obj@calorie))), '\n')
  cat('\n')
  
  cat(sprintf(fmt = 'Water: %.4g grams %s\n', obj@water, format_ingredient_perc(obj, 'water')))
  cat(sprintf(fmt = 'Fat: %.4g grams %s\n', obj@fat, format_ingredient_perc(obj, 'fat')))
  
  if (length(obj@cholesterol)) {
    if (obj@cholesterol > 1) {
      cat(sprintf(fmt = 'Cholesterol: %.3g grams %s\n', obj@cholesterol, format_ingredient_perc(obj, 'cholesterol')))
    } else cat(sprintf(fmt = 'Cholesterol: %.3g milligrams %s\n', 1e3 * obj@cholesterol, format_ingredient_perc(obj, 'cholesterol')))
  }
  
  if (length(obj@sodium)) {
    if (obj@sodium > 1) {
      cat(sprintf(fmt = 'Sodium: %.3g grams %s\n', obj@sodium, format_ingredient_perc(obj, 'sodium')))
    } else cat(sprintf(fmt = 'Sodium: %.3g milligrams %s\n', 1e3 * obj@sodium, format_ingredient_perc(obj, 'sodium')))
  }
  cat(sprintf(fmt = 'Total Carbohydrate: %.4g grams %s\n', obj@carbohydrate, format_ingredient_perc(obj, 'carbohydrate')))
  cat(sprintf(fmt = ' \u21ac Dietary Fiber: %.4g grams %s\n', obj@fiber, format_ingredient_perc(obj, 'fiber')))
  cat(sprintf(fmt = ' \u21ac Sugar: %.4g grams %s\n', obj@sugar, format_ingredient_perc(obj, 'sugar')))
  cat(sprintf(fmt = ' \u21ac Added Sugar: %.4g grams %s\n', obj@addedSugar, format_ingredient_perc(obj, 'addedSugar')))
  cat(sprintf(fmt = 'Alcohol: %.4g grams %s\n', obj@alcohol, format_ingredient_perc(obj, 'alcohol')))
  cat(sprintf(fmt = 'Protein: %.3g grams %s\n', obj@protein, format_ingredient_perc(obj, 'protein')))
  
  # cat(c(rep('\u058e', times = 25), '\n\n'), sep = '')
  cat('\n')
  
  #if (length(obj@machine)) {
  #  cat('\nMachine:\n')
  #  cat(sprintf(fmt = '%s: %s\n', names(obj@machine), obj@machine), sep = '')
  #}
  
  if (length(obj@superior)) {
    cli_text('\u274c I prefer ', paste(sprintf(
      fmt = '{.run [%s](cooking::%s())}', 
      style_bold(make_ansi_style('sienna')(obj@superior)),
      obj@superior
    ), collapse = ', '))
    cat('\n')
  } 
  
  if (nrv <- length(obj@review)) {
    cat(sprintf(fmt = '\U1f4dd %s\n', obj@review), sep = '')
    cat('\n')
  }
  
  if (length(contain <- obj@contain)) {
    contain_chn <- character(length = length(contain))
    contain_chn[tolower(contain) == 'erythritol'] <- '\u8d64\u85d3\u7cd6\u9187'
    contain_chn[tolower(contain) == 'anise'] <- '\u8334\u82b9'
    contain_chn[tolower(contain) == 'basil'] <- '\u7f57\u52d2'
    contain_chn[tolower(contain) == 'bay leaves'] <- '\u6708\u6842\u53f6'
    contain_chn[tolower(contain) == 'black pepper'] <- '\u9ed1\u80e1\u6912'
    contain_chn[tolower(contain) == 'caraway'] <- '\u9999\u82b9\u7c7d'
    contain_chn[tolower(contain) == 'cardamom'] <- '\u5c0f\u8c46\u853b'
    contain_chn[tolower(contain) == 'carrot'] <- '\u80e1\u841d\u535c\U1f955'
    contain_chn[tolower(contain) == 'cinnamon'] <- '\u6842\u76ae'
    contain_chn[tolower(contain) == 'citric acid'] <- '\u67e0\u6aac\u9178'
    contain_chn[tolower(contain) == 'clove'] <- '\u4e01\u9999'
    contain_chn[tolower(contain) == 'coriander'] <- '\u82ab\u837d\u7c7d'
    contain_chn[tolower(contain) == 'cumin'] <- '\u5b5c\u7136'
    contain_chn[tolower(contain) == 'garlic'] <- '\u849c\U1f9c4'
    contain_chn[tolower(contain) == 'ginger'] <- '\u59dc\U1fada'
    contain_chn[tolower(contain) %in% c('fennel', 'fennel seed')] <- '\u5c0f\u8334\u9999'
    contain_chn[tolower(contain) == 'fenugreek'] <- '\u80e1\u82a6\u5df4'
    contain_chn[tolower(contain) == 'lavender flowers'] <- '\u85b0\u8863\u8349'
    contain_chn[tolower(contain) == 'lemon peel'] <- '\u67e0\u6aac\U0001f34b\u76ae'
    contain_chn[tolower(contain) == 'marjoram'] <- '\u58a8\u89d2\u5170'
    contain_chn[tolower(contain) == 'nutmeg'] <- '\u8089\u8c46\u853b'
    contain_chn[tolower(contain) == 'onion'] <- '\u6d0b\u8471\U1f9c5'
    contain_chn[tolower(contain) == 'orange peel'] <- '\u9648\U1f34a\u76ae'
    contain_chn[tolower(contain) == 'oregano'] <- '\u725b\u81f3'
    contain_chn[tolower(contain) == 'paprika'] <- '\u7ea2\u751c\u6912\u7c89'
    contain_chn[tolower(contain) == 'parsley'] <- '\u6b27\u82b9'
    contain_chn[tolower(contain) == 'red bell pepper'] <- '\u7ea2\u751c\u6912'
    contain_chn[tolower(contain) == 'rosemary'] <- '\u8ff7\u8fed\u9999'
    contain_chn[tolower(contain) == 'sage'] <- '\u9f20\u5c3e\u8349'
    contain_chn[tolower(contain) == 'sunflower oil'] <- '\u8475\u82b1\u7c7d\U1f33b\u6cb9'
    contain_chn[tolower(contain) == 'star anise'] <- '\u516b\u89d2'
    contain_chn[tolower(contain) == 'thyme'] <- '\u767e\u91cc\u9999'
    contain_chn[tolower(contain) %in% c('tomato', 'tomato granules', 'tomato concentrate')] <- '\u897f\u7ea2\u67ff\U0001f345'
    contain_chn[tolower(contain) == 'turmeric'] <- '\u59dc\u9ec4'
    contain_chn[tolower(contain) == 'white pepper'] <- '\u767d\u80e1\u6912'
    contain_chn[tolower(contain) == 'yellow mustard'] <- '\u82a5\u672b'
    cat(sprintf(fmt = 'Contains %s\n\n', paste0(col_blue(contain_chn), col_br_magenta(contain), collapse = ' ')))
  }

  if (length(obj@fdc)) cat(paste('\U1f4dd', c(style_hyperlink(url = sprintf(fmt = 'https://fdc.nal.usda.gov/fdc-app.html#/food-details/%s/nutrients', obj@fdc), text = 'FoodData Central'))), sep = '\n')
  if (length(obj@pubchem)) cat(paste('\U1f4dd', c(style_hyperlink(url = sprintf(fmt = 'https://pubchem.ncbi.nlm.nih.gov/compound/%s', obj@pubchem), text = 'PubChem'))), sep = '\n')
  
  if (length(obj@url)) cat(obj@url, sep = '\n')
  
  if (length(suggested_ <- suggested(object))) show(suggested_) # I have not defined a NULL \linkS4class{recipe}
  
  cat('\n')

})



format_ingredient_perc <- function(x, name) {
  # `x` is \linkS4class{nutrition}
  x_ <- slot(x, name = name)
  if (!length(x_) || (x_ == 0)) return(character())
  pct <- x_ / x@servingGram
  style_bold(make_ansi_style('olivedrab')(sprintf_bincode(pct)(pct)))
}








#' @title Multiplication and Ratio of \linkS4class{nutrition} Object
#' 
#' @description ..
#' 
#' @param e1 \linkS4class{nutrition} object
#' 
#' @param e2 \link[base]{numeric} scalar
#' 
#' @name S4generic_nutrition
#' @aliases *,nutrition,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'nutrition', e2 = 'numeric'), definition = function(e1, e2) {
  if (length(e2) != 1L || anyNA(e2) || (e2 <= 0)) stop('illegal `e2`')
  for (i in setdiff(names(which(getSlots('nutrition') == 'numeric')), c('AbV', 'pieceWeight'))) {
    slot(e1, name = i) <- slot(e1, name = i) * e2
  }
  return(e1)
})


#' @rdname S4generic_nutrition
#' @aliases /,nutrition,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'nutrition', e2 = 'numeric'), definition = function(e1, e2) e1 * (1/e2))



# @title Summation of \linkS4class{nutrition} Objects
# 
# @description ..
# 
# @param e1,e2 \linkS4class{nutrition} object
# 
# @export
#setMethod(f = '+', signature = signature(e1 = 'nutrition', e2 = 'nutrition'), definition = function(e1, e2) {
#  .Defunct(msg = 'never used')
#  numeric_slots <- setdiff(names(which(getSlots('nutrition') == 'numeric')), c('AbV', 'pieceWeight'))
#  ret <- e1
#  for (i in numeric_slots) {
#    slot(ret, name = i) <- sum(slot(e1, name = i), slot(e2, name = i))
#  }
#  return(ret)
#})




