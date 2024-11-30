

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


setOldClass('cli_glue_delay')


#' @title \linkS4class{nutrition} Information
#' 
#' @description 
#' Nutrition information.
#' 
#' @slot brand \link[base]{character} scalar, manufacture brand
#' @slot name \link[base]{character} scalar, product name
#' @slot name_cli_glue_delay `'cli_glue_delay'` object, returned from function `cli:::glue_cmd`
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
#' @slot wegmans,wegmansorganic \link[base]{integer} scalar, Wegmans Food Markets ID
#' @slot wholefoods \link[base]{character} scalar, Wholel Foods ID
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
#' @slot domino \link[base]{character} scalar
#' @slot epicprovisions \link[base]{character} scalar
#' @slot fleischmannsyeast \link[base]{integer} scalar
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
#' @slot leekumkee \link[base]{character} scalar
#' @slot maeda \link[base]{character} scalar
#' @slot marukyu \link[base]{character} scalar
#' @slot mccormickculinary,oldbay,grillmates \link[base]{character} scalar
#' @slot meyenberg \link[base]{character} scalar
#' @slot mizkanjpn,mizkanusa \link[base]{character} scalars
#' @slot nancysyogurt \link[base]{character} scalar
#' @slot navitas \link[base]{character} scalar
#' @slot nescafe,nescafeGoldEspressoCA,nescafeGoldEspressoUS,nescafeUS,nestle,nido \link[base]{character} scalars
#' @slot nielsenmassey \link[base]{character} scalar
#' @slot oreo \link[base]{character} scalar
#' @slot organicvalley \link[base]{character} scalar
#' @slot paromi \link[base]{character} scalar
#' @slot quakeroats \link[base]{character} scalar
#' @slot raos \link[base]{character} scalar
#' @slot runamok \link[base]{character} scalar
#' @slot sanford \link[base]{character} scalar
#' @slot simplyorganic \link[base]{character} scalar
#' @slot sodastream \link[base]{character} scalar
#' @slot starbucks \link[base]{character} scalar
#' @slot starbucks_hot,starbucks_iced \link[base]{integer} scalars
#' @slot stassentea \link[base]{character} scalar
#' @slot stonewall \link[base]{integer} scalar
#' @slot swiftmeats \link[base]{character} scalar
#' @slot swissmiss \link[base]{character} scalar
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
#' @slot sugar \link[base]{numeric} scalar, sugar (in grams) per serving
#' @slot addedSugar \link[base]{numeric} scalar, added sugar (in grams) per serving
#' @slot fat \link[base]{numeric} scalar, fat (in grams) per serving
#' @slot cholesterol \link[base]{numeric} scalar, cholesterol (in grams) per serving
#' @slot sodium \link[base]{numeric} scalar, sodium (in grams) per serving
#' @slot protein \link[base]{numeric} scalar, protein (in grams) per serving
#' @slot AbV \link[base]{numeric} scalar between 0 and 1, alcohol by volume
#' @slot alcohol \link[base]{numeric} scalar, alcohol (in grams) per serving
#' 
#' @aliases nutrition-class  
#' @export
setClass(Class = 'nutrition', slots = c(
  brand = 'character',
  name = 'character',
  name_cli_glue_delay = 'cli_glue_delay',
  
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
  webstaurant = 'character',
  wholefoods = 'character',
  wegmans = 'integer', wegmansorganic = 'integer',
  walmart = 'character',
  wawa = 'character',
  
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
  domino = 'character',
  epicprovisions = 'character',
  fleischmannsyeast = 'integer',
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
  leekumkee = 'character',
  maeda = 'character',
  marukyu = 'character',
  mccormickculinary = 'character', oldbay = 'character', grillmates = 'character',
  meyenberg = 'character',
  mizkanjpn = 'character', mizkanusa = 'character',
  nancysyogurt = 'character',
  navitas = 'character',
  nescafe = 'character', nescafeGoldEspressoCA = 'character', nescafeGoldEspressoUS = 'character', nescafeUS = 'character', nestle = 'character', nido = 'character',
  nielsenmassey = 'character',
  oreo = 'character',
  organicvalley = 'character',
  paromi = 'character',
  philadelphia = 'character',
  quakeroats = 'character',
  raos = 'character',
  runamok = 'character',
  sanford = 'character',
  simplyorganic = 'character', # has SKU number, do not know how to use
  sodastream = 'character',
  starbucks = 'character',
  starbucks_hot = 'integer',
  starbucks_iced = 'integer',
  stassentea = 'character',
  stonewall = 'integer',
  swiftmeats = 'character',
  swissmiss = 'character',
  thaikitchen = 'character',
  twinings = 'character',
  wesson = 'character',
  whistlepigwhiskey = 'character',
  yogi = 'character',
  
  machine = 'function',
  review = 'character',
  superior = 'character',
  contain = 'character',
  
  servingGram = 'numeric',
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
  sugar = 'numeric', addedSugar = 'numeric',
  fat = 'numeric',
  cholesterol = 'numeric',
  sodium = 'numeric',
  protein = 'numeric',
  alcohol = 'numeric', AbV = 'numeric'
), prototype = prototype(
  name_cli_glue_delay = cli:::glue_cmd(character()), # must use `:::`
  machine = function(x) NULL
), validity = function(object) {
  #if (!length(object@usd)) stop('no pricing info for ', object@brand, ' ' object@name)
  if (!length(object@servingGram)) stop('must have `servingGram` for nutrition object')
})








nutrition_name_brand <- function(x) {
  
  if (length(x@AbV)) {
    x@name <- sprintf(fmt = '%s %.3g%%\U1f943', x@name, 1e2*x@AbV)
  }
  
  if (length(x@brand)) {
    #trimws(sprintf(fmt = '%s \033[38;5;166m%s\033[0m', x@name, x@brand)) 
    # do not know how to do customized ANSI color
    trimws(paste(x@name, style_bold(col_yellow(x@brand))))
  } else x@name
  
}

setMethod(f = initialize, signature = 'nutrition', definition = function(.Object, ...) {
  x <- callNextMethod(.Object, ...)
  
  # process user-input `@url` first
  if (length(x@url)) {
    x@url <- unclass(style_hyperlink(
      url = x@url, 
      text = gsub('^https://|^http://', replacement = '', x = x@url)
    ))
  }
  
  if (!length(x@brand)) { # manufacturer
    x@brand <- if (length(x@bachans)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://bachans.com/products/%s', x@bachans), text = 'Bachan\'s\U1f1fa\U1f1f8'))
    } else if (length(x@baileys)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.baileys.com/en/products/%s', x@baileys), text = 'Baileys\U1f1ee\U1f1ea'))
    } else if (length(x@bassetts)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.bassettsicecream.com/_files/ugd/%s.pdf', x@bassetts), text = 'Bassetts\U1f368\U1f1fa\U1f1f8'))
    } else if (length(x@belgioioso)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.belgioioso.com/products/%s', x@belgioioso), text = 'BelGioioso\U1f1fa\U1f1f8'))
    } else if (length(x@bobsredmill)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.bobsredmill.com/%s.html', x@bobsredmill), text = 'Bob\'s Red Mill\U1f1fa\U1f1f8'))
    } else if (length(x@bouchard)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://bouchardchocolate.com/products/%s', x@bouchard), text = 'Bouchard\U1f1e7\U1f1ea'))
    } else if (length(x@cheesecakefactoryfreezer)) {
      if (!length(x@cheesecakefactorybakery)) x@cheesecakefactorybakery <- x@cheesecakefactoryfreezer
      paste(
        unclass(style_hyperlink(url = sprintf(fmt = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-freezer/%s', x@cheesecakefactoryfreezer), text = 'Cheesecake')),
        unclass(style_hyperlink(url = sprintf(fmt = 'https://www.thecheesecakefactoryathome.com/whole-cheesecakes-bakery/%s', x@cheesecakefactorybakery), text = 'Factory\U1f1fa\U1f1f8'))
      )
    } else if (length(x@clearwater)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.clearwater.ca/en/seafood-industry/%s', x@clearwater), text = 'Clearwater\U1f1e8\U1f1e6'))
    } else if (length(x@countrytime)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.kraftheinz.com/country-time/products/%s', x@countrytime), text = 'Country Time\U1f1fa\U1f1f8'))
    } else if (length(x@daisybrand)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.daisybrand.com/%s', x@daisybrand), text = 'Daisy\U1f1fa\U1f1f8'))
    } else if (length(x@domino)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.dominosugar.com/products/%s', x@domino), text = 'Domino\U1f1fa\U1f1f8'))
    } else if (length(x@epicprovisions)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://epicprovisions.com/products/%s', x@epicprovisions), text = 'Epic\U1f1fa\U1f1f8'))
    } else if (length(x@fleischmannsyeast)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.fleischmannsyeast.com/product-page/#%d', x@fleischmannsyeast), text = 'Fleischmann\'s\U1f1fa\U1f1f8'))
    } else if (length(x@frontiercoop)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.frontiercoop.com/products/frontier-co-op-%s', x@frontiercoop), text = 'Frontier Co-op\U1f1fa\U1f1f8'))
    } else if (length(x@ghirardelli)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.ghirardelli.com/%s', x@ghirardelli), text = 'Ghirardelli\U1f1fa\U1f1f8'))
    } else if (length(x@godiva)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.godiva.com/%s.html', x@godiva), text = 'Godiva\U1f1e7\U1f1ea'))
    } else if (length(x@haagendazs)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.icecream.com/us/en/brands/haagen-dazs/products/%s-ice-cream', x@haagendazs), text = 'Ha\u0308agen-Dazs\U1f1fa\U1f1f8'))
    } else if (length(x@haitaiusa)) {
      # not sure if same company
      # https://en.wikipedia.org/wiki/Haitai
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.haitaiusa.com/product-page/%s', x@haitaiusa), text = 'HaiTai\U1f1fa\U1f1f8'))
    } else if (length(x@harney)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.harney.com/products/%s', x@harney), text = 'Harney & Sons\U1f1fa\U1f1f8'))
    } else if (length(x@heinz)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.heinz.com/products/%s', x@heinz), text = 'Heinz\U1f1fa\U1f1f8'))
    } else if (length(x@hellmanns)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.hellmanns.com/us/en/p/%s', x@hellmanns), text = 'Hellmann\'s\U1f1fa\U1f1f8'))
    } else if (length(x@horizon)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://horizon.com/organic-dairy-products/%s', x@horizon), text = 'Horizon\U1f1fa\U1f1f8'))
    } else if (length(x@ippodoglobal) & length(x@ippodojpn) & length(x@ippodousa)) {
      x@url <- c(x@url, style_hyperlink(url = sprintf(fmt = 'https://ippodotea.com/products/%s', x@ippodousa), text = '\U1f6d2 US Shop'))
      paste(
        unclass(style_hyperlink(url = sprintf(fmt = 'https://global.ippodo-tea.co.jp/products/%s', x@ippodoglobal), text = 'Ippodo\U1f375')),
        unclass(style_hyperlink(url = sprintf(fmt = 'https://www.ippodo-tea.co.jp/products/%s', x@ippodojpn), text = '\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5'))
      )
    } else if (length(x@itoen)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://itoen.com/products/%s', x@itoen), text = 'Ito-En\u4f0a\u85e4\u5712\U1f1ef\U1f1f5'))
    } else if (length(x@juniorscheesecake)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.juniorscheesecake.com/all-items/%s', x@juniorscheesecake), text = 'Junior\'s\U1f1fa\U1f1f8'))
    } else if (length(x@justtea)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://shop.wegmans.com/product/%s', x@justtea), text = 'Just Tea\U1f1fa\U1f1f8'))
    } else if (length(x@kahlua)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.kahlua.com/en-us/products/%s', x@kahlua), text = 'Kahlu\u0301a\U1f1f2\U1f1fd'))
    } else if (length(x@kerrygold)) {
      kg_ <- unclass(style_hyperlink(url = sprintf(fmt = 'https://kerrygold.com/products/%s', x@kerrygold), text = 'Kerrygold\U1f1ee\U1f1ea'))
      if (length(x@kerrygoldusa)) {
        paste0(kg_, unclass(style_hyperlink(url = sprintf(fmt = 'https://www.kerrygoldusa.com/products/%s', x@kerrygoldusa), text = '\U1f1fa\U1f1f8')))
      } else kg_
    } else if (length(x@kikkomanusa)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://kikkomanusa.com/foodservice/products/%s', x@kikkomanusa), text = 'Kikkoman\u4e80\u7532\u842c\U1f1ef\U1f1f5'))
    } else if (length(x@kingarthur)) {
      unclass(style_hyperlink(url = sprintf(
        #fmt = 'https://shop.kingarthurbaking.com/items/%d',
        fmt = 'https://www.kingarthurbaking.com/search?query=%d', 
        x@kingarthur), text = 'King Arthur\U1f1fa\U1f1f8'))
    } else if (length(x@kingarthurpro)) {
      unclass(style_hyperlink(url = 'https://www.kingarthurbaking.com/pro/products', text = 'King Arthur\U1f1fa\U1f1f8'))
    } else if (length(x@philadelphia)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.kraftheinz.com/philadelphia/products/%s', x@philadelphia), text = 'Philadelphia\U1f1fa\U1f1f8'))
    } else if (length(x@krusteaz)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.krusteaz.com/products/%s', x@krusteaz), text = 'Krusteaz\U1f1fa\U1f1f8'))
    } else if (length(x@landolakes)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.landolakes.com/products/%s', x@landolakes), text = 'Land O Lakes\U1f1fa\U1f1f8'))
    } else if (length(x@leaperrins)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.kraftheinz.com/lea-perrins/products/%s', x@leaperrins), text = 'Lea & Perrins\U1f1ec\U1f1e7'))
    } else if (length(x@leekumkee)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://usa.lkk.com/zh-hk/products/%s', x@leekumkee), text = 'LeeKumKee\u674e\u9326\u8a18\U1f1ed\U1f1f0'))
    } else if (length(x@maeda)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://maeda-en.com/collections/matcha-powder/products/%s', x@maeda), text = 'maeda-en\u524d\u7530\u5712\U1f1ef\U1f1f5'))
    } else if (length(x@marukyu)) {
      x@url <- c(x@url, style_hyperlink(url = 'https://www.marukyu-koyamaen.co.jp/english/catalog/Temporary_Simple_English_Catalog_for_Eng_HP_20240304.pdf', text = '2024 Catalog'))
      paste(
        unclass(style_hyperlink(url = sprintf(fmt = 'https://www.marukyu-koyamaen.co.jp/english/shop/products/%s', x@marukyu), text = 'Marukyu Koyamaen\U1f375')),
        unclass(style_hyperlink(url = sprintf(fmt = 'https://www.marukyu-koyamaen.co.jp/motoan-shop/products/%s', x@marukyu), text = '\u4e38\u4e45\u5c0f\u5c71\u5712\U1f1ef\U1f1f5'))
      )
    } else if (length(x@mccormickculinary)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.mccormickforchefs.com/en-us/products/mccormick-culinary/%s', x@mccormickculinary), text = 'McCormick Culinary\U1f1fa\U1f1f8'))
    } else if (length(x@oldbay)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.mccormickforchefs.com/en-us/products/old-bay/%s', x@oldbay), text = 'McCormick Culinary\U1f1fa\U1f1f8'))
    } else if (length(x@grillmates)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.mccormickforchefs.com/en-us/products/grill-mates/%s', x@grillmates), text = 'McCormick Culinary\U1f1fa\U1f1f8'))
    } else if (length(x@meyenberg)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.meyenberg.com/products/%s', x@meyenberg), text = 'Meyenberg\U1f1fa\U1f1f8'))
    } else if (length(x@mizkanjpn)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.mizkan.co.jp/product/group/?gid=%s', x@mizkanjpn), text = 'mizkan\u30df\u30c4\u30ab\u30f3\U1f1ef\U1f1f5'))
    } else if (length(x@nancysyogurt)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://nancysyogurt.com/products/%s', x@nancysyogurt), text = 'Nancy\'s\U1f1fa\U1f1f8'))
    } else if (length(x@navitas)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://navitasorganics.com/products/%s', x@navitas), text = 'Navitas\U1f1fa\U1f1f8'))
    } else if (length(x@nescafe)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.nescafe.com/our-coffees/%s', x@nescafe), text = 'Nescaf\u00e9\U1f1e8\U1f1ed'))
    } else if (length(x@nescafeGoldEspressoCA)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.madewithnestle.ca/nescafe/nescafe-%s', x@nescafeGoldEspressoCA), text = 'Nescaf\u00e9 Gold Espresso\U1f1e8\U1f1ed'))
    } else if (length(x@nescafeGoldEspressoUS)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.nescafe.com/us/products/gold-espresso-%s', x@nescafeGoldEspressoUS), text = 'Nescaf\u00e9 Gold Espresso\U1f1e8\U1f1ed'))
    } else if (length(x@nescafeUS)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.nescafe.com/us/products/%s', x@nescafeUS), text = 'Nescaf\u00e9\U1f1e8\U1f1ed'))
    } else if (length(x@nestle)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.nestleprofessional.us/search?search=%s', x@nestle), text = 'Nestl\u00e9\U1f1e8\U1f1ed'))
    } else if (length(x@nido)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.goodnes.com/nido/products/nido-%s', x@nido), text = 'Nestl\u00e9 Nido\U1f1e8\U1f1ed'))
    } else if (length(x@nielsenmassey)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://nielsenmassey.com/products/%s', x@nielsenmassey), text = 'Nielsen-Massey\U1f1fa\U1f1f8'))
    } else if (length(x@oreo)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.oreo.com/products/%s', x@oreo), text = 'Nabisco\U1f1fa\U1f1f8'))
    } else if (length(x@organicvalley)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.organicvalley.coop/products/%s', x@organicvalley), text = 'Organic Valley\U1f1fa\U1f1f8'))
    } else if (length(x@paromi)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://paromi.com/products/%s', x@paromi), text = 'Paromi\U1f1fa\U1f1f8'))
    } else if (length(x@quakeroats)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.quakeroats.com/products/%s', x@quakeroats), text = 'Quaker\U1f1fa\U1f1f8'))
    } else if (length(x@raos)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.raos.com/products/%s', x@raos), text = 'Rao\'s\U1f1fa\U1f1f8'))
    } else if (length(x@runamok)) {
      runamok_ <- unclass(style_hyperlink(url = sprintf(fmt = 'https://runamokmaple.com/shop/product/%s', x@runamok), text = 'Runamok\U1f1fa\U1f1f8'))
      if (length(x@whistlepigwhiskey)) {
        paste(runamok_, unclass(style_hyperlink(url = sprintf(fmt = 'https://shop.whistlepigwhiskey.com/products/%s', x@whistlepigwhiskey), text = 'Whistlepig\U1f1fa\U1f1f8')), sep = '-')
      } else runamok_
    } else if (length(x@sanford)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.sanford.co.nz/our-seafood/our-products/%s', x@sanford), text = 'Sanford\U1f1f3\U1f1ff'))
    } else if (length(x@simplyorganic)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.simplyorganic.com/products/simply-organic-%s', x@simplyorganic), text = 'Simply Organic\U1f1fa\U1f1f8'))
    } else if (length(x@sodastream)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://sodastream.com/products/%s', x@sodastream), text = 'SodaStream\U1f1fa\U1f1f8'))
    } else if (length(x@starbucks)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://athome.starbucks.com/products/%s', x@starbucks), text = 'Starbucks\U1f1fa\U1f1f8'))
    } else if (length(x@starbucks_hot)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.starbucks.com/menu/product/%s/hot/nutrition', x@starbucks_hot), text = 'Starbucks\U1f1fa\U1f1f8'))
    } else if (length(x@starbucks_iced)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.starbucks.com/menu/product/%s/iced/nutrition', x@starbucks_iced), text = 'Starbucks\U1f1fa\U1f1f8'))
    } else if (length(x@stassentea)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.stassentea.com/shop-now/%s', x@stassentea), text = 'Stassen\U1f1f1\U1f1f0'))
    } else if (length(x@stonewall)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.stonewallkitchen.com/%d.html', x@stonewall), text = 'Stonewall Kitchen\U1f1fa\U1f1f8'))
    } else if (length(x@swiftmeats)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://swiftmeats.com/products/%s', x@swiftmeats), text = 'Swift\U1f1fa\U1f1f8'))
    } else if (length(x@swissmiss)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.swissmiss.com/%s', x@swissmiss), text = 'Swiss Miss\U1f1fa\U1f1f8'))
    } else if (length(x@thaikitchen)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.mccormick.com/thai-kitchen/products/%s', x@thaikitchen), text = 'Thai Kitchen\U1f1fa\U1f1f8'))
    } else if (length(x@twinings)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://twiningsusa.com/products/%s', x@twinings), text = 'Twinings\U1f1ec\U1f1e7'))
    } else if (length(x@wesson)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.purewesson.com/products/%s', x@wesson), text = 'Wesson\U1f1fa\U1f1f8'))
    } else if (length(x@yogi)) {
      unclass(style_hyperlink(url = sprintf(fmt = 'https://www.yogi-life.com/en-US/product/%s', x@yogi), text = 'Yogi\U1f1fa\U1f1f8'))
    } else character()
  } # manufacturer
  
  add_store_url_ <- function(x, store, fmt, store_brand, store_name = store_brand) {
    x_store <- slot(x, name = store)
    if (!length(x_store)) return(x)
    store_url <- sprintf(fmt = fmt, x_store)
    if (!length(x@brand)) {
      if (is.na(store_brand)) stop('must have `store_brand`')
      x@brand <- unclass(style_hyperlink(url = store_url, text = store_brand))
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
  x <- add_store_url_(x, store = 'wegmans', fmt = 'https://shop.wegmans.com/product/%s/', store_brand = 'Wegmans\U1f1fa\U1f1f8', store_name = 'Wegmans')
  x <- add_store_url_(x, store = 'wegmansorganic', fmt = 'https://shop.wegmans.com/product/%s/', store_brand = 'Wegmans Organic\U1f1fa\U1f1f8')
  x <- add_store_url_(x, store = 'wholefoods', fmt = 'https://www.wholefoodsmarket.com/product/%s', store_brand = '365 by Whole Foods\U1f1fa\U1f1f8')
  
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
  
  if (!length(x@alcohol) && length(x@AbV)) {
    x@alcohol <- x@servingGram * x@AbV * .78927
    # google abv to alcohol by weight
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
      x@cost_ <- sprintf(fmt = 'US\U1f4b5 %.2f', cost_)
    } else {
      x@cost_ <- sprintf(fmt = 'US\U1f4b5 %.2f(%s)', cost_, names(cost_))
      x@usd <- unname(cost_)
    }
  } else {
    cost_source <- sprintf(fmt = '(%s)', names(cost_))
    cost_source[cost_source == '(US$)'] <- ''
    cost_min <- which.min(cost_)
    cost_txt0 <- sprintf(fmt = 'US\U1f4b5 %.2f%s', cost_, cost_source)
    cost_txt0[cost_min] <- bg_br_yellow(cost_txt0[cost_min])
    x@cost_ <- paste(cost_txt0, collapse = '\n')
    x@usd <- unname(cost_[cost_min]) # to calculate price in 'recipe'
    #x@jpy <- numeric() # other currency no use
  }
  
  return(x)
  
})





#' @export
nutrition.default <- function(x) {
  if (inherits(x, what = 'nutrition')) return(x)
  stop('exception handling')
}


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


getPc <- function(object, name) {
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



getGelatinLeaf <- function(x) {
  col_br_blue(sprintf(fmt = '%.1f leaves', x/2))
}


autoVolume <- function(x, nm = names(x)) {
  if (!length(x)) return(character())
  
  y <- x / gram_per_tsp(nm)

  id <- (ceiling(y) - y < 1e-6)
  if (any(id, na.rm = TRUE)) y[which(id)] <- ceiling(y[which(id)])

  cup <- y %/% 48
  cup_txt <- ifelse(cup > 0, yes = sprintf(fmt = '%dCup', cup), no = '')
  
  y_less_cup <- y %% 48
  
  # '\u2154' # 2/3
  
  cup2 <- y_less_cup %/% (48/2) # 0 or 1
  y_less_cup2 <- y_less_cup %% (48/2)
  cup2_txt <- ifelse(cup2 > 0, yes = '\u00bdCup', no = '')
  
  cup3 <- y_less_cup2 %/% (48/3) # 0 or 1
  y_less_cup3 <- y_less_cup2 %% (48/3)
  cup3_txt <- ifelse(cup3 > 0, yes = '\u2153Cup', no = '')
  
  cup4 <- y_less_cup3 %/% (48/4) # 0 or 1
  y_less_cup4 <- y_less_cup3 %% (48/4)
  cup4_txt <- ifelse(cup4 > 0, yes = '\u00bcCup', no = '')
  
  Tbsp <- y_less_cup4 %/% 3
  tsp <- y_less_cup4 %% 3
  Tbsp_txt <- ifelse(Tbsp > 0, yes = sprintf(fmt = '%dTbsp', Tbsp), no = '')
  
  tsp_mat <- NULL
  while (any(tsp >= 1/8, na.rm = TRUE)) {
    tsp_mat <- rbind(tsp_mat, ifelse(
      test = (tsp >= 1.5), 
      yes = '1\u00bdtsp', 
      no = ifelse(
        test = (tsp >= 1),
        yes = '1tsp',
        no = ifelse(
          test = (tsp >= 1/2),
          yes = '\u00bdtsp',
          no = ifelse(
            test = (tsp >= 1/4),
            yes = '\u00bctsp',
            no = ifelse(
              test = (tsp >= 1/8),
              yes = '\u215btsp',
              no = ''
            )
          )
        )
      )
    ))
    tsp <- ifelse(
      test = (tsp >= 1.5), 
      yes = tsp - 1.5, 
      no = ifelse(
        test = (tsp >= 1), 
        yes = tsp - 1, 
        no = ifelse(
          test = (tsp >= 1/2), 
          yes = tsp - 1/2, 
          no = ifelse(
            test = (tsp >= 1/4), 
            yes = tsp - 1/4, 
            no = ifelse(
              test = (tsp >= 1/8), 
              yes = tsp - 1/8, 
              no = tsp
            )
          )
        )
      )
    )
  } 
  
  vol <- c(list(
    cup_txt, cup2_txt, cup3_txt, cup4_txt, Tbsp_txt
  ), if (length(tsp_mat)) apply(tsp_mat, MARGIN = 1L, FUN = identity, simplify = FALSE))
    
  .mapply(FUN = function(...) {
    z0 <- c(...)
    z1 <- z0[nzchar(z0)]
    z <- z1[seq_len(min(3L, length(z1)))]
    if (all(is.na(z1))) return('') # `z1` either all-NA, or none-NA
    style_bold(col_br_blue(paste(z, collapse = ' ')))
  }, dots = vol, MoreArgs = NULL)
  
}





#' @title Show \linkS4class{nutrition} Object
#' 
#' @description ..
#' 
#' @param object \linkS4class{nutrition} object
#' 
#' @return nothing is returned
#' 
#' @export
setMethod(f = show, signature = 'nutrition', definition = function(object) {
  
  obj <- object
  
  if (!identical(obj@name_cli_glue_delay$str, '')) {
    cli__message(type = 'text', args = list(text = obj@name_cli_glue_delay))
  } else cat(nutrition_name_brand(obj), '\n\n')
  
  #cat('Nutrition Facts\n\n')

  cat(sprintf(fmt = 'Serving Size: %.4g grams %s\n\n', obj@servingGram, autoVolume(x = obj@servingGram, nm = list(obj))))
  cat(sprintf(fmt = '%s\n', obj@cost_))
  cat(sprintf(fmt = 'Calories\U1f525 %.0f\n', obj@calorie))
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
  cat(sprintf(fmt = 'Sugar: %.4g grams %s\n', obj@sugar, format_ingredient_perc(obj, 'sugar')))
  cat(sprintf(fmt = 'Added Sugar: %.4g grams %s\n', obj@addedSugar, format_ingredient_perc(obj, 'addedSugar')))
  cat(sprintf(fmt = 'Alcohol: %.4g grams %s\n', obj@alcohol, format_ingredient_perc(obj, 'alcohol')))
  cat(sprintf(fmt = 'Protein: %.3g grams %s\n', obj@protein, format_ingredient_perc(obj, 'protein')))
  
  # cat(c(rep('\u058e', times = 25), '\n\n'), sep = '')
  cat('\n')
  
  #if (length(obj@machine)) {
  #  cat('\nMachine:\n')
  #  cat(sprintf(fmt = '%s: %s\n', names(obj@machine), obj@machine), sep = '')
  #}
  
  if (length(obj@superior)) {
    sp <- obj@superior[1L]
    cli__message(type = 'text', args = list(
      text = glue_cmd(sprintf(
        fmt = '\u274c I prefer \U1f3fa{.run [%s](cooking::%s())}', 
        style_bold(col_yellow(sp)), 
        sp
      ))
    ))
  } 
  
  cat('\n')
  
  if (nrv <- length(obj@review)) {
    cat(sprintf(fmt = '\U1f4dd %s\n', obj@review), sep = '')
    cat('\n')
  }
  
  if (length(obj@contain)) cat(sprintf(fmt = 'Contains: %s\n\n', paste0(obj@contain, collapse = ', ')))

  if (length(obj@fdc)) cat(paste('\U1f4dd', unclass(style_hyperlink(url = sprintf(fmt = 'https://fdc.nal.usda.gov/fdc-app.html#/food-details/%s/nutrients', obj@fdc), text = 'FoodData Central'))), sep = '\n')
  if (length(obj@pubchem)) cat(paste('\U1f4dd', unclass(style_hyperlink(url = sprintf(fmt = 'https://pubchem.ncbi.nlm.nih.gov/compound/%s', obj@pubchem), text = 'PubChem'))), sep = '\n')
  
  if (length(obj@url)) cat(obj@url, sep = '\n')

})



format_ingredient_perc <- function(x, name) {
  # `x` is \linkS4class{nutrition}
  x_ <- slot(x, name = name)
  if (!length(x_) || (x_ == 0)) return(character())
  pct <- x_ / x@servingGram
  col_magenta(sprintf_bincode(pct)(pct))
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




