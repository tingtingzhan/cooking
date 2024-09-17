

.onLoad <- function(libname, pkgname = 'cooking') {
  
  # `x` is \linkS4class{recipe}
  
  tmpfun <- function(x) switch(
    class(x),
    NULL)

  sugar <- function(x) switch(
    class(x), 
    meatchop =, 
    noodlelinda =, wrapperlinda =, 
    geng =, cornGeng =,
    beeffillLeeKumKee =,
    spam = .006,
    shrimpfill_garlicHerb = .009,
    meatmash =, meatball =, shrimpfillCantonese = .008,
    crumbcrust = if (length(x@blackSesame)) .11 else .01, 
    ricepaste = .015,
    soytea = if (length(x@matcha)) .07 else .022, # matcha sweetness needs to be decreased!!!
    bao =, wheatBao = if (length(x@matcha) || length(x@beet) || length(x@cocoa)) {
      .04 
    } else .03, # any lower, not delicious!
    snowSkin = if (length(x@beet)) .03 else .023,
    porkfill = .023,
    stickyTortilla =, crepeCake =, pancake =, thinCrust = .03, 
    millecrepe = if (length(x@matcha)) {
      .075
    } else if (length(x@cocoa)) {
      .095
    } else if (length(x@liqueur)) {
      .14 
    } else if (length(x@beet)) {
      .08
    } else .035, 
    marinade = .04,
    matchaLatteHot =, matchaLatteFrappe = .04, # perfect! 2024 late summer
    stickyRice =, riceCake =, riceMousse = .05, 
    cornbread = .05, # well tested!
    #tortillaLard = .06,
    cocoaHot = .055,
    hotdrink =, frappe = if (length(x@coffee) && length(x@liqueur)) {
      .055
    }, 
    caffeLatteHot =, caffeLatteFrappe = .055,
    mocaccinoHot =, mocaccinoFrappe = .06,
    matchaGoatLatteHot =, matchaGoatLatteFrappe = .07, # perfect!! whole goat milk 
    teaLatte = .067,
    sundae = if (length(x@matcha)) {
      .095
    } else if (length(x@coffee)) {
      .07
    } else if (length(x@pumpkin)) {
      .09
    } else if (length(x@cocoa)) {
      NULL
    } else .07,
    mascarponeFrosting =, mascarponeGanache =, whippedCream = if (length(x@liqueur)) {
      .07
    } else if (length(x@matcha)) {
      .075 
    } else if (length(x@cocoa)) {
      .09
    } else if (length(x@pineapple)) {
      .08
    } else if (length(x@pumpkin)) {
      .07 # was .065, a little bland
    },
    kefir =, goatKefir =, filmjolk = .075,
    beanPaste = .09,
    lava = .1,
    frosting =, ganache = if (length(x@matcha)) {
      .125
    } else if (length(x@cocoa)) {
      .13
    },
    creamCheeseSpread =, creamCheeseDip = .08,
    muffin = .08, # all sugar consumed by people # 1st try .09 too sweet
    gateau = if (length(x@cocoa)) {
      .11
    },
    bread = if (length(x@matcha) || length(x@cocoa)) {
      .075 # great on @matcha 
    } else .045,
    cheesecake = if (length(x@pumpkin)) .11 else .1,
    # froyo = NA_real_, # Greek yogurt flavor too strong to cover
    custardFilling = if (length(x@pumpkin)) {
      .13 
    } else if (length(x@applesauce)) {
      .155
    } else if (length(x@pineapple)) {
      .165 
    } else .13,
    cookie = if (length(x@blackSesame)) {
      .145
    } else if (length(x@matcha) || length(x@ginger)) {
      .22 
    } else .2,
    tomyumStew = .16,
    cocoaMix = .35,
    mocaccinoMix = .37,
    matchaLatteMix = .4,
    matchaGoatLatteMix = .515,
    drinkMix = if (length(x@syrup)) {
      .515
    } else NA_real_,
    caffeLatteMix = NA_real_,
    NULL)
  
  addedSugar <- function(x) switch(
    class(x),
    teaLatte = .0035,
    mocaccinoHot =, mocaccinoFrappe = .015,
    cocoaMix = .063,
    NA_real_)
  
  addedSugar2cocoaDutch <- function(x) switch(
    class(x),
    mocaccinoMix =, mocaccinoHot =, mocaccinoFrappe = .35,
    caffeLatteMix =, caffeLatteHot =, caffeLatteFrappe = NA_real_,
    NULL) 
  
  drymilk <- function(x) switch(
    class(x), 
    ricepaste = .025,
    riceMousse = {
      if (all(grepl('Rice$', names(x@flavor)))) .035 else .05
    }, 
    stickyTortilla = .03,
    bread = .035, # perfect with match, coffee
    snowSkin =, custardFilling = .045, 
    sundae = if (length(x@matcha)) {
      .077 
    } else if (length(x@coffee)) {
      .075
    } else .055,
    millecrepe = if (length(x@liqueur)) .05 else .06,
    pudding = .05, # trying
    matchaGoatLatteHot =, matchaGoatLatteFrappe = .075, 
    stickyRice =, riceCake = .1, # need to re-think!!
    matchaLatteHot =, matchaLatteFrappe = .075, # taste better than .09 !
    cocoaHot =, 
    caffeLatteHot =, caffeLatteFrappe =,
    mocaccinoHot =, mocaccinoFrappe =,
    hotdrink =, frappe = .09, # match Carnation_drymilk() can label
    teaLatte = .122, # tested on Earl Grey, Ceylon
    cookie = if (length(x@blackSesame)) {
      .08
    } else .15,
    matchaGoatLatteMix = .53,
    cocoaMix = .54,
    mocaccinoMix = .58,
    matchaLatteMix = NA_character_,
    #tiramisuMix = .7,
    caffeLatteMix = NA_real_, 
    NULL)
  
  drymilk2cocoaDutch <- function(x) switch(
    class(x),
    mocaccinoMix =, mocaccinoHot =, mocaccinoFrappe = 2,
    caffeLatteMix =, caffeLatteHot =, caffeLatteFrappe = NA_real_,
    NULL)
  
  creamcheese <- function(x) switch(
    class(x),
    cheesecake = if (length(x@pumpkin)) .62 else .7,
    NULL)
  
  carbohydrate <- function(x) switch(
    class(x),
    beanPaste = if (length(x@redKidneyBean)) .125 else .15,
    NA_real_)
   
  fat <- function(x) switch(
    class(x), 
    noodlelinda =, wrapperlinda =, flavoredButter =, cocoaMix =, soymilk = NA_real_,
    hotdrink = NA_real_,
    matchaLatteHot =, matchaLatteFrappe = .004, 
    stickyTortilla =, TangYuan = .01, 
    mocaccinoHot =, mocaccinoFrappe = .01,
    matchaGoatLatteHot =, matchaGoatLatteFrappe = .01,
    snowSkin = .015, 
    bao =, pancake = .02, 
    flan = .025, #tortillaOlive = .025, 
    wheatBao = .028,
    matchaLatteMix = .04, 
    bread = if (length(x@cocoa)) .038 else .04, 
    #tortilla = .04,
    riceMousse = .05, 
    beanPaste = .05,
    crepeCake = .07,
    mocaccinoMix = .07,
    matchaGoatLatteMix = .075,
    millecrepe = if (length(x@liqueur)) .075 else .1, 
    custardFilling = .09,
    cornbread = .11, 
    sundae = .11,
    beeffillLeeKumKee = .11,
    meatmash = .12,
    gateau = .12, 
    shrimpfillCantonese = .14, 
    shrimpfill_garlicHerb = .15, 
    mousse = .15,
    cheesecake = if (length(x@pumpkin)) .16 else .17, # 3:1 mixed cheese
    lava = if (length(x@blackSesame)) .17 else if (length(x@coconut)) .08,
    cookie = if (length(x@blackSesame)) {
      .28
    } else .25, 
    # cheesecake = .24, # 100% Nancy's full fat, low sodium cream cheese
    porkfill = .25,
    crumbcrust = if (length(x@blackSesame)) .23 else .28,
    mascarponeGanache = if (length(x@liqueur)) {
      .36
    } else if (length(x@water)) {
      .3
    } else if (length(x@pumpkin)) {
      .195
    } else .25,
    whippedCream = .295,
    mascarponeFrosting = .33,
    NULL)
  
  sodium <- function(x) switch(
    class(x), 
    cornbread = .0005, 
    #tortilla = .0006,
    # cheesecake = .001, # 100% Nancy's full fat, low sodium cream cheese
    spam = .001, 
    #tortillaOlive =, tortillaLard = .001,
    thinCrust = .0015, 
    matchaGoatLatteMix = .0017,
    shrimpfill_garlicHerb = .002,
    meatmash =, meatball = .0025, # some salt cooks into soup
    shrimpfillCantonese = .003,
    cocoaMix = .002,
    drinkMix = if (length(x@coffee) && length(x@syrup)) {
      .0028
    } else NA_real_,
    cheesecake = .0025, # 3:1 mixed cheese
    mocaccinoMix = .0025,
    # fishBall = .003, # obviously too salt
    beeffillLeeKumKee = .0025, # confirmed!
    geng = .0025, # .003 too salty
    matchaLatteMix = .0028,
    porkfill = .003, # yes!
    beefchop = .0035,
    #caffeLatteMix = .0033,
    marinade = .011,
    tomyumStew = .02,
    rub =, chiliRub = .1,
    flavoredButter = .015,
    NA_real_)
  
  matcha <- function(x) switch(
    class(x),
    snowSkin =, stickyTortilla =, wrapperlinda =, noodlelinda = .022, 
    matchaLatteHot =, matchaLatteFrappe = .025, 
    matchaGoatLatteHot =, matchaGoatLatteFrappe = .025, # retry with tenju
    millecrepe = .025, 
    cheesecake = .025,
    bao = .025, # .027 a little too bitter
    frosting =, ganache =, whippedCream = .035,
    bread = .035, # tested!
    cookie = .037,
    sundae = .04, # cold temperature needs stronger flavor
    matchaGoatLatteMix = .155,
    matchaLatteMix = .25, 
    NULL)
  
  matcha2flour <- tmpfun
  
  matcha2pastryflour <- function(x) switch(
    class(x),
    bao = .045,
    millecrepe = .1,
    NULL)
  
  matcha2breadflour <- function(x) switch(
    class(x),
    wrapperlinda = .035,
    bread = .07,
    NULL)
  
  matcha2glutenFreeFlour <- tmpfun
  
  matcha2wheatflourmix <- tmpfun
  
  matcha2riceflour <- function(x) switch(
    class(x),
    snowSkin = .075,
    NULL)
  
  beet <- function(x) switch(
    class(x),
    snowSkin = .01, 
    millecrepe = .035,
    bao =, bread = .04,
    NULL)
  
  beet2flour <- tmpfun
  
  beet2pastryflour <- function(x) switch(
    class(x),
    bao = .068,
    millecrepe = .12,
    NULL)
  
  beet2breadflour <- function(x) switch(
    class(x),
    bread = .075,
    NULL)
  
  beet2glutenFreeFlour <- tmpfun
  
  beet2wheatflourmix <- tmpfun
  
  beet2riceflour <- function(x) switch(
    class(x),
    snowSkin = .075,
    NULL)
  
  cocoa <- function(x) switch(
    class(x), 
    hotdrink =, frappe = if (length(x@liqueur)) .004,
    snowSkin = .009, 
    caffeLatteHot =, caffeLatteFrappe = .011,
    mocaccinoHot =, mocaccinoFrappe = .043, 
    goatKefir = if (length(x@coffee)) .043, 
    cheesecake = if (length(x@cocoaDutch)) .043,
    # cookie = .04, 
    bao = .05, # tested!!
    bread = .05, # retry
    millecrepe = .05, # tested
    whippedCream =, frosting =, ganache = .05,
    gateau = .05, # I think this is not enough..
    cocoaHot = .063,
    caffeLatteMix = .09,
    mocaccinoMix = .28,
    cocoaMix = .39,
    NULL)
  
  coffee <- function(x) switch(
    class(x), 
    mocaccinoHot =, mocaccinoFrappe = .009, 
    goatKefir = if (length(x@cocoaDutch)) .009,
    cheesecake = if (length(x@liqueur)) {
      .0073
    } else if (length(x@cocoaDutch)) .009,
    sundae = .015, # love!
    bao =, bread = .015, # tested on bread() and love!
    caffeLatteHot =, caffeLatteFrappe = .015, # tested and love!!
    cheesecake = .016, # to try
    snowSkin = .016, # try
    gateau = if (length(x@cocoa)) .002,
    hotdrink =, frappe = if (length(x@liqueur)) .009,
    mocaccinoMix = .06,
    caffeLatteMix = .12,
    NULL)
  
  coffee2cocoaDutch <- function(x) switch(
    class(x),
    cheesecake =, mocaccinoMix =, mocaccinoHot =, mocaccinoFrappe = .20,
    caffeLatteMix =, caffeLatteHot =, caffeLatteFrappe = 1.3,
    tiramisuMix = 2.2,
    NULL)
  
  ginger <- function(x) switch(
    class(x), 
    meatmash =, meatball = .0004, 
    shrimpfillCantonese = .0007,
    snowSkin = .001, # to try
    beeffillLeeKumKee = .0015, # tested!
    porkfill = .002,
    cookie =, crumbcrust = .015,
    NULL)
  
  garlic <- function(x) switch(
    class(x),
    shrimpfill_garlicHerb = .008,
    NULL)
  
  whitePepper <- function(x) switch(
    class(x),
    shrimpfill_garlicHerb = .00055,
    beeffillLeeKumKee = .0009, # tested!
    meatmash =, meatball =, shrimpfillCantonese = .0016,
    porkfill = .002,
    NULL)
  
  coriander <- function(x) switch(
    class(x),
    porkfill = .0006,
    NULL)
  
  blackSesame <- function(x) switch(
    class(x), 
    crumbcrust = .13,
    cookie = .135,
    lava = .3,
    NULL)
  
  acai <- function(x) switch(
    class(x), 
    snowSkin = .01,
    bao = .05, # tested
    bread = .06, 
    cookie = .08,
    NULL)
  
  acai2pastryflour <- function(x) switch(
    class(x),
    bao = .075,
    NULL)
  
  acai2breadflour <- function(x) switch(
    class(x),
    NULL)
  
  acai2riceflour <- function(x) switch(
    class(x),
    NULL)
    
  acai2flour <- acai2glutenFreeFlour <- acai2wheatflourmix <- tmpfun
  
  starch <- function(x) switch(
    class(x), 
    geng = .007, 
    shrimpfillCantonese =, shrimpfill_garlicHerb =, porkfill = .02,
    meatmash = .02,
    cheesecake = .03, 
    meatball = .03,
    beeffillLeeKumKee = .04, 
    custardFilling = if (length(x@pumpkin)) .05,
    starchjelly = .1, 
    stickyTortilla = .1,
    NULL)
  
  water <- function(x) switch(
    class(x),
    mascarponeFrosting = .21,
    mascarponeGanache = if (length(x@liqueur)) {
      .19 # liqueur flavor will also have `x@water`, so this `if` must be ahead of `@water`
    } else if (length(x@water)) {
      .29
    } else if (length(x@pumpkin)) {
      .42
    } else .34, # from other puree such as `pineapple`
    whippedCream = .50,
    lava = if (length(x@blackSesame)) .50 else if (length(x@coconut)) .67,
    porkfill = .55,
    sundae = if (length(x@matcha)) {
      .6
    },
    beanPaste = if (length(x@redKidneyBean)) .66 else .6,
    shrimpfillCantonese =, shrimpfill_garlicHerb = .6, 
    beeffillLeeKumKee = .6,
    meatmash = if (length(x@shrimp)) .7,
    NA_real_)
  
  alcohol <- function(x) switch(
    class(x),
    goatKefir =, filmjolk = NA_real_, # do NOT add alcohol, already have strong alcohol flavor!!!!
    millecrepe = NA_real_, # bad idea to cook alcohol
    hotdrink =, frappe = .0055, # any more, I will feel dizzy
    #cheesecake =, mascarponeGanache = .015, # need to re-try
    cheesecake = .006, # trying. this is low-temp cooking, probably okay
    tomyumStew = .035,
    NULL)
  
  alcohol2cocoaDutch <- function(x) switch(
    class(x),
    tiramisuMix = 1.3,
    NULL)
    
  water2flour <- function(x) switch(
    class(x), 
    cookie = if (length(x@blackSesame)) .17 else .22, 
    crumbcrust = if (length(x@blackSesame)) .28 else .23, # try first with \linkS4class{cookie} info
    #pancake =, snowSkin = .35, 
    #tortillaLard =, tortillaOlive = .6,
    NULL)
  
  water2pastryflour <- function(x) switch(
    class(x), 
    bao = .48,
    juntun = .56, # ?? do I really need this?
    millecrepe = 3.7,
    NULL)

  water2breadflour <- function(x) switch(
    class(x), 
    cornbread = NA_real_,
    wrapperlinda = .57,
    noodlelinda = if (any(grepl('^KingArthur_', names(x@breadFlour)))) .45 else .6,
    bread = .63,
    NULL)
  
  water2glutenFreeFlour <- tmpfun
  
  water2wheatflourmix <- function(x) switch(
    class(x),
    wheatBao = .5,
    NULL)
  
  water2riceflour <- function(x) switch(
    class(x),
    stickyTortilla = 1.6,
    snowSkin = 1.86,
    NULL)
  
  fat2flour <- function(x) switch(
    class(x), 
    #tortillaOlive = .05,
    crumbcrust = .5, 
    cookie = .77,
    NULL)
  
  fat2pastryflour <- function(x) switch(
    class(x), 
    bao = .03,
    millecrepe = .375,
    NULL)
  
  fat2breadflour <- function(x) switch(
    class(x), 
    cornbread =, noodlelinda =, wrapperlinda = NA_real_,
    bread = if (length(x@cocoa)) .08 else .075,
    NULL)
  
  fat2glutenFreeFlour <- tmpfun
  
  fat2wheatflourmix <- function(x) switch(
    class(x),
    wheatBao = .045,
    NULL)
    
  fat2riceflour <- function(x) switch(
    class(x),
    stickyTortilla = .035,
    snowSkin = .05,
    NULL)
  
  cornmeal2flour <- cornmeal2pastryflour <- cornmeal2glutenFreeFlour <- cornmeal2wheatflourmix <- cornmeal2riceflour <- tmpfun
  
  cornmeal2breadflour <- function(x) switch(
    class(x),
    cornbread = 2, # tested and perfect!
    NULL)
  
  starch2flour <- starch2pastryflour <- starch2breadflour <- starch2glutenFreeFlour <- starch2wheatflourmix <- tmpfun
  
  starch2riceflour <- function(x) switch(
    class(x),
    stickyTortilla = .16,
    snowSkin = .25,
    NULL)
  
  rice2flour <- rice2pastryflour <- rice2breadflour <- rice2glutenFreeFlour <- rice2wheatflourmix <- tmpfun
  
  rice2riceflour <- function(x) switch(
    class(x),
    snowSkin = .5,
    NULL)
  
  glutinousRice2flour <- glutinousRice2pastryflour <- glutinousRice2breadflour <- glutinousRice2glutenFreeFlour <- glutinousRice2wheatflourmix <- tmpfun
  
  glutinousRice2riceflour <- function(x) switch(
    class(x),
    snowSkin = .5,
    NULL)
  
  salt2flour <- function(x) switch(
    class(x), 
    #tortillaOlive = .005,
    NULL)
  
  salt2breadflour <- function(x) switch(
    class(x),
    bread =, noodlelinda =, wrapperlinda = .003,
    NULL)
  
  salt2pastryflour <- salt2wheatflourmix <- salt2glutenFreeFlour <- salt2riceflour <- tmpfun
  
  eggYolk2flour <- function(x) switch(
    class(x),
    cookie = if (length(x@blackSesame)) .43 else .52,
    NULL)
  
  eggYolk2pastryflour <- function(x) switch(
    class(x),
    millecrepe = .345,
    NULL)
  
  eggYolk2breadflour <- function(x) switch(
    class(x),
    cornbread = NA_real_,
    bread = .035,
    NULL)
  
  eggYolk2glutenFreeFlour <- eggYolk2wheatflourmix <- eggYolk2riceflour <- tmpfun
  
  blackSesame2flour <- function(x) switch(
    class(x),
    crumbcrust = .28,
    cookie = .375,
    NULL) 
  
  blackSesame2pastryflour <- tmpfun

  blackSesame2breadflour <- tmpfun
  
  blackSesame2glutenFreeFlour <- blackSesame2wheatflourmix <- tmpfun
  
  blackSesame2riceflour <- tmpfun
  
  Na2CO3_2flour <- tmpfun
  
  Na2CO3_2pastryflour <- tmpfun

  Na2CO3_2breadflour <- function(x) switch(
    class(x), 
    noodlelinda =, wrapperlinda = .0015,
    NULL)
  
  Na2CO3_2glutenFreeFlour <- Na2CO3_2wheatflourmix <- tmpfun
  
  Na2CO3_2riceflour <- tmpfun
  
  bakingPowder <- function(x) switch(
    class(x),
    cornbread = .004,
    gateau = .004,
    bao =, wheatBao = .006,
    NULL)
  
  bakingPowder2flour <- tmpfun
  
  bakingPowder2pastryflour <- function(x) switch(
    class(x), 
    bao = .0095,
    NULL)
    
  bakingPowder2breadflour <- function(x) switch(
    class(x),
    gateau = .02,
    #cornbread = NA_real_,
    NULL)
  
  bakingPowder2glutenFreeFlour <- tmpfun
  
  bakingPowder2wheatflourmix <- function(x) switch(
    class(x), 
    wheatBao = .0095,
    NULL)
    
  bakingPowder2riceflour <- tmpfun
  
  yeast2flour <- tmpfun
  
  yeast2pastryflour <- function(x) switch(
    class(x),
    bao = .0095, 
    NULL)
  
  yeast2breadflour <- function(x) switch(
    class(x), 
    bread = .02,
    NULL)
  
  yeast2glutenFreeFlour <- tmpfun
  
  yeast2wheatflourmix <- function(x) switch(
    class(x), 
    wheatBao = .0095,
    NULL)
  
  yeast2riceflour <- tmpfun
  
  gelatin2water <- function(x) switch(
    class(x), 
    #riceMousse = {
    #if (any(grepl('coconutmilk', names(obj@flavor)))) .01 else .02
    #},
    mousse = .036,
    NULL)
  
  sesameOil <- function(x) switch(
    class(x), 
    meatmash =, shrimpfillCantonese =, beeffillLeeKumKee =, porkfill =, meatball = .013,
    NULL)
  
  greenPeppercornOil <- function(x) switch(
    class(x), 
    beeffillLeeKumKee = .0015, # tested!
    porkfill = .004,
    #marinade = .011,
    NULL)
  
  options(devrecipe = mget(c(
    'carbohydrate',
    'sugar', 
    'addedSugar', 'addedSugar2cocoaDutch',
    'drymilk', 'drymilk2cocoaDutch',
    'creamcheese',
    'fat', 
    'sodium',
    
    'water',
    'bakingPowder',
    'alcohol', 'alcohol2cocoaDutch',
    'matcha',
    'beet',
    'blackSesame',
    'cocoa',
    'coffee', 'coffee2cocoaDutch',
    'ginger',
    'garlic',
    'whitePepper',
    'coriander',
    'acai',
    'starch',
    'sesameOil',
    'greenPeppercornOil',
    
    c(outer(X = c('water', 'fat', 'salt', 'eggYolk', 
                  'matcha', 'beet', 'acai', 'blackSesame', 
                  'cornmeal', 'starch', 
                  'glutinousRice', # 'rice', 
                  'yeast', 'bakingPowder', 'Na2CO3_'), 
            Y = c('flour', 'pastryflour', 'breadflour', 'glutenFreeFlour', 'wheatflourmix', 'riceflour'), 
            FUN = paste, sep = '2')),
    
    'gelatin2water',
    NULL
  )))
}