

.onLoad <- function(libname, pkgname = 'cooking') {
  
  # `x` is \linkS4class{recipe}
  
  fn. <- function(x) switch(
    class(x),
    NA_real_)

  sugar <- function(x) switch(
    class(x), 
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
    milktea = .05,
    matchaLatte_ = .04, # perfect! 2024 late summer
    stickyRice =, riceCake =, riceMousse = .05, 
    #tortillaLard = .06,
    cocoa_ = .055,
    drink = if (length(x@coffee) && length(x@liqueur)) {
      .055
    } else NA_real_, 
    caffeLatte_ = .045, 
    mocaccino_ = .05,
    cornbread = .055, # tastes better than .05
    matchaGoatLatte_ = .07, # early 2024; whole goat milk; try to reduce with tenju!
    sundae = if (length(x@matcha)) {
      .095
    } else if (length(x@coffee)) {
      .07
    } else if (length(x@pumpkin)) {
      .09
    } else if (length(x@cocoa)) {
      NA_real_
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
    } else NA_real_,
    kefir =, goatKefir =, filmjolk = .075,
    beanPaste = .09,
    lava = .1,
    frosting =, ganache = if (length(x@matcha)) {
      .125
    } else if (length(x@cocoa)) {
      .13
    } else NA_real_,
    creamCheeseSpread =, creamCheeseDip = .08,
    muffin = .08, # all sugar consumed by people # 1st try .09 too sweet
    gateau = if (length(x@cocoa)) {
      .11
    } else NA_real_,
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
    mocaccinoMix = .37,
    matchaLatteMix = .4,
    matchaGoatLatteMix = .515,
    drinkmix = if (length(x@syrup)) {
      .515
    } else NA_real_,
    NA_real_)
  
  addedSugar <- function(x) switch(
    class(x),
    milktea = .013,
    NA_real_)
  
  addedSugar2cocoa <- function(x) switch(
    class(x),
    mocaccinoMix =, mocaccino_ = .30,
    NA_real_) 
  
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
    milktea = .065,
    caffeLatte_ = .075,
    matchaGoatLatte_ = .075, 
    stickyRice =, riceCake = .1, # need to re-think!!
    matchaLatte_ =, mocaccino_ = .075, # taste better than .09 !
    cocoa_ =, 
    drink = .09, # match Carnation_drymilk() can label
    cookie = if (length(x@blackSesame)) {
      .08
    } else .15,
    matchaGoatLatteMix = .53,
    #tiramisuMix = .7,
    NA_real_)
  
  drymilk2cocoa <- function(x) switch(
    class(x),
    NA_real_)
  
  creamcheese <- function(x) switch(
    class(x),
    cheesecake = if (length(x@pumpkin)) .62 else .7,
    NA_real_)
  
  carbohydrate <- function(x) switch(
    class(x),
    soymilk = .007,
    beanPaste = if (length(x@redKidneyBean)) .125 else .15,
    NA_real_)
   
  fat <- function(x) switch(
    class(x), 
    matchaLatte_ = .004, 
    stickyTortilla =, TangYuan = .01, 
    mocaccino_ = .01,
    matchaGoatLatte_ = .01,
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
    matchaGoatLatteMix = .075,
    mocaccinoMix = .077,
    cornbread = .08, 
    millecrepe = if (length(x@liqueur)) .075 else .1, 
    custardFilling = .09,
    sundae = .11,
    beeffillLeeKumKee = .11,
    meatmash = .12,
    gateau = .12, 
    shrimpfillCantonese = .14, 
    shrimpfill_garlicHerb = .15, 
    mousse = .15,
    cheesecake = if (length(x@pumpkin)) .16 else .17, # 3:1 mixed cheese
    lava = if (length(x@blackSesame)) .17 else if (length(x@coconut)) .08 else NA_real_,
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
    NA_real_)
  
  sodium <- function(x) switch(
    class(x), 
    #tortilla = .0006,
    # cheesecake = .001, # 100% Nancy's full fat, low sodium cream cheese
    spam = .001, 
    #tortillaOlive =, tortillaLard = .001,
    thinCrust = .0015, 
    matchaGoatLatteMix = .0017,
    shrimpfill_garlicHerb = .002,
    meatmash =, meatball = .0025, # some salt cooks into soup
    shrimpfillCantonese = .003,
    mocaccinoMix = .002,
    drinkmix = if (length(x@coffee) && length(x@syrup)) {
      .0028
    } else NA_real_,
    cheesecake = .0025, # 3:1 mixed cheese
    # fishBall = .003, # obviously too salt
    beeffillLeeKumKee = .0025, # confirmed!
    geng = .0025, # .003 too salty
    matchaLatteMix = .0028,
    porkfill = .003, # yes!
    beefchop = .0035,
    #caffeLatteMix = .0033,
    marinade = .011,
    tomyumStew = .02,
    sousvide = .1,
    flavoredButter = .015,
    NA_real_)
  
  matcha <- function(x) switch(
    class(x),
    snowSkin =, stickyTortilla =, wrapperlinda =, noodlelinda = .022, 
    matchaLatte_ = .025, 
    matchaGoatLatte_ = .025, # retry with tenju
    millecrepe = .025, 
    cheesecake = .025,
    bao = .025, # .027 a little too bitter
    frosting =, ganache =, whippedCream = .035,
    bread = .035, # tested!
    cookie = .037,
    sundae = .04, # cold temperature needs stronger flavor
    matchaGoatLatteMix = .155,
    matchaLatteMix = .25, 
    NA_real_)
  
  matcha2flour <- fn.
  
  matcha2pastryflour <- function(x) switch(
    class(x),
    bao = .045,
    millecrepe = .1,
    NA_real_)
  
  matcha2breadflour <- function(x) switch(
    class(x),
    wrapperlinda = .035,
    bread = .07,
    NA_real_)
  
  matcha2glutenFreeFlour <- fn.
  
  matcha2wheatflourmix <- fn.
  
  matcha2riceflour <- function(x) switch(
    class(x),
    snowSkin = .075,
    NA_real_)
  
  beet <- function(x) switch(
    class(x),
    snowSkin = .01, 
    millecrepe = .035,
    bao =, bread = .04,
    NA_real_)
  
  beet2flour <- fn.
  
  beet2pastryflour <- function(x) switch(
    class(x),
    bao = .068,
    millecrepe = .12,
    NA_real_)
  
  beet2breadflour <- function(x) switch(
    class(x),
    bread = .075,
    NA_real_)
  
  beet2glutenFreeFlour <- fn.
  
  beet2wheatflourmix <- fn.
  
  beet2riceflour <- function(x) switch(
    class(x),
    snowSkin = .075,
    NA_real_)
  
  cocoa <- function(x) switch(
    class(x), 
    drink = if (length(x@liqueur)) .004 else NA_real_,
    snowSkin = .009, 
    caffeLatte_ = .011,
    mocaccino_ = .043, 
    goatKefir = if (length(x@coffee)) .043 else NA_real_, 
    cheesecake = if (length(x@cocoa)) .043 else NA_real_,
    # cookie = .04, 
    bao = .05, # tested!!
    bread = .05, # retry
    millecrepe = .05, # tested
    whippedCream =, frosting =, ganache = .05,
    gateau = .05, # I think this is not enough..
    cocoa_ = .063,
    caffeLatteMix = .1,
    mocaccinoMix = .32,
    NA_real_)
  
  coffee <- function(x) switch(
    class(x), 
    mocaccino_ = .007, 
    goatKefir = if (length(x@cocoa)) .009 else NA_real_, # forgot if this is tested or hypothetical
    cheesecake = if (length(x@liqueur)) {
      .0073
    } else if (length(x@cocoa)) {
      .009 
    } else NA_real_,
    sundae = .015, # love!
    bao =, bread = .015, # tested on bread() and love!
    caffeLatte_ = .015, # tested and love!!
    cheesecake = .016, # to try
    snowSkin = .016, # try
    gateau = if (length(x@cocoa)) .002 else NA_real_,
    drink = if (length(x@liqueur)) .009 else NA_real_,
    mocaccinoMix = .05,
    caffeLatteMix = .14,
    NA_real_)
  
  coffee2cocoa <- function(x) switch(
    class(x),
    mocaccinoMix =, mocaccino_ = .17, # well tested
    cheesecake = .21, # hypothetical
    caffeLatteMix =, caffeLatte_ = 1.3,
    tiramisuMix = 2.2,
    NA_real_)
  
  ginger <- function(x) switch(
    class(x), 
    meatmash =, meatball = .0004, 
    shrimpfillCantonese = .0007,
    snowSkin = .001, # to try
    beeffillLeeKumKee = .0015, # tested!
    porkfill = .002,
    cookie =, crumbcrust = .015,
    NA_real_)
  
  garlic <- function(x) switch(
    class(x),
    shrimpfill_garlicHerb = .008,
    NA_real_)
  
  whitePepper <- function(x) switch(
    class(x),
    shrimpfill_garlicHerb = .00055,
    beeffillLeeKumKee = .0009, # tested!
    meatmash =, meatball =, shrimpfillCantonese = .0016,
    porkfill = .002,
    NA_real_)
  
  coriander <- function(x) switch(
    class(x),
    porkfill = .0006,
    NA_real_)
  
  blackSesame <- function(x) switch(
    class(x), 
    crumbcrust = .13,
    cookie = .135,
    lava = .3,
    NA_real_)
  
  acai <- function(x) switch(
    class(x), 
    snowSkin = .01,
    bao = .05, # tested
    bread = .06, 
    cookie = .08,
    NA_real_)
  
  acai2pastryflour <- function(x) switch(
    class(x),
    bao = .075,
    NA_real_)
  
  acai2breadflour <- function(x) switch(
    class(x),
    NA_real_)
  
  acai2riceflour <- function(x) switch(
    class(x),
    NA_real_)
    
  acai2flour <- acai2glutenFreeFlour <- acai2wheatflourmix <- fn.
  
  starch <- function(x) switch(
    class(x), 
    geng = .007, 
    shrimpfillCantonese =, shrimpfill_garlicHerb =, porkfill = .02,
    meatmash = .02,
    cheesecake = .03, 
    meatball = .03,
    beeffillLeeKumKee = .04, 
    custardFilling = if (length(x@pumpkin)) .05 else NA_real_,
    starchjelly = .1, 
    stickyTortilla = .1,
    NA_real_)
  
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
    lava = if (length(x@blackSesame)) .50 else if (length(x@coconut)) .67 else NA_real_,
    porkfill = .55,
    sundae = if (length(x@matcha)) {
      .6
    } else NA_real_,
    beanPaste = if (length(x@redKidneyBean)) .66 else .6,
    shrimpfillCantonese =, shrimpfill_garlicHerb = .6, 
    beeffillLeeKumKee = .6,
    meatmash = if (length(x@shrimp)) .7 else NA_real_,
    NA_real_)
  
  alcohol <- function(x) switch(
    class(x),
    drink = .0055, # any more, I will feel dizzy
    #cheesecake =, mascarponeGanache = .015, # need to re-try
    cheesecake = .006, # trying. this is low-temp cooking, probably okay
    tomyumStew = .035,
    NA_real_)
  
  alcohol2cocoa <- function(x) switch(
    class(x),
    tiramisuMix = 1.3,
    NA_real_)
    
  water2flour <- function(x) switch(
    class(x), 
    cookie = if (length(x@blackSesame)) .17 else .22, 
    crumbcrust = if (length(x@blackSesame)) .28 else .23, # try first with \linkS4class{cookie} info
    #pancake =, snowSkin = .35, 
    #tortillaLard =, tortillaOlive = .6,
    NA_real_)
  
  water2pastryflour <- function(x) switch(
    class(x), 
    bao = .48,
    juntun = .56, # ?? do I really need this?
    millecrepe = 3.7,
    NA_real_)

  water2breadflour <- function(x) switch(
    class(x), 
    wrapperlinda = .57,
    noodlelinda = if (any(grepl('^KingArthur_', names(x@breadFlour)))) .45 else .6,
    bread = .63,
    NA_real_)
  
  water2glutenFreeFlour <- fn.
  
  water2wheatflourmix <- function(x) switch(
    class(x),
    wheatBao = .5,
    NA_real_)
  
  water2riceflour <- function(x) switch(
    class(x),
    stickyTortilla = 1.6,
    snowSkin = 1.86,
    NA_real_)
  
  fat2flour <- function(x) switch(
    class(x), 
    #tortillaOlive = .05,
    crumbcrust = .5, 
    cookie = .77,
    NA_real_)
  
  fat2pastryflour <- function(x) switch(
    class(x), 
    bao = .03,
    millecrepe = .375,
    NA_real_)
  
  fat2breadflour <- function(x) switch(
    class(x), 
    bao = .03,
    bread = if (length(x@cocoa)) .08 else .075,
    NA_real_)
  
  fat2glutenFreeFlour <- fn.
  
  fat2wheatflourmix <- function(x) switch(
    class(x),
    wheatBao = .045,
    NA_real_)
    
  fat2riceflour <- function(x) switch(
    class(x),
    stickyTortilla = .035,
    snowSkin = .05,
    NA_real_)
  
  flour2cornmeal <- pastryflour2cornmeal <- breadflour2cornmeal <- glutenFreeFlour2cornmeal <- wheatflourmix2cornmeal <- riceflour2cornmeal <- fn.
  
  starch2flour <- starch2pastryflour <- starch2breadflour <- starch2glutenFreeFlour <- starch2wheatflourmix <- fn.
  
  starch2riceflour <- function(x) switch(
    class(x),
    stickyTortilla = .16,
    snowSkin = .25,
    NA_real_)
  
  rice2flour <- rice2pastryflour <- rice2breadflour <- rice2glutenFreeFlour <- rice2wheatflourmix <- fn.
  
  rice2riceflour <- function(x) switch(
    class(x),
    snowSkin = .5,
    NA_real_)
  
  glutinousRice2flour <- glutinousRice2pastryflour <- glutinousRice2breadflour <- glutinousRice2glutenFreeFlour <- glutinousRice2wheatflourmix <- fn.
  
  glutinousRice2riceflour <- function(x) switch(
    class(x),
    snowSkin = .5,
    NA_real_)
  
  salt2flour <- function(x) switch(
    class(x), 
    #tortillaOlive = .005,
    NA_real_)
  
  salt2breadflour <- function(x) switch(
    class(x),
    bread =, noodlelinda =, wrapperlinda = .003,
    NA_real_)
  
  salt2pastryflour <- salt2wheatflourmix <- salt2glutenFreeFlour <- salt2riceflour <- fn.
  
  eggYolk2flour <- function(x) switch(
    class(x),
    cookie = if (length(x@blackSesame)) .43 else .52,
    NA_real_)
  
  eggYolk2pastryflour <- function(x) switch(
    class(x),
    millecrepe = .345,
    NA_real_)
  
  eggYolk2breadflour <- function(x) switch(
    class(x),
    bread = .035,
    NA_real_)
  
  eggYolk2glutenFreeFlour <- eggYolk2wheatflourmix <- eggYolk2riceflour <- fn.
  
  blackSesame2flour <- function(x) switch(
    class(x),
    crumbcrust = .28,
    cookie = .375,
    NA_real_) 
  
  blackSesame2pastryflour <- fn.

  blackSesame2breadflour <- fn.
  
  blackSesame2glutenFreeFlour <- blackSesame2wheatflourmix <- fn.
  
  blackSesame2riceflour <- fn.
  
  Na2CO3_2flour <- fn.
  
  Na2CO3_2pastryflour <- fn.

  Na2CO3_2breadflour <- function(x) switch(
    class(x), 
    noodlelinda =, wrapperlinda = .0015,
    NA_real_)
  
  Na2CO3_2glutenFreeFlour <- Na2CO3_2wheatflourmix <- fn.
  
  Na2CO3_2riceflour <- fn.
  
  bakingPowder <- function(x) switch(
    class(x),
    gateau = .004,
    cornbread = .005,
    bao =, wheatBao = .006,
    NA_real_)
  
  bakingPowder2flour <- fn.
  
  bakingPowder2pastryflour <- function(x) switch(
    class(x), 
    bao = .0095,
    NA_real_)
    
  bakingPowder2breadflour <- function(x) switch(
    class(x),
    bao = .0095,
    gateau = .02,
    NA_real_)
  
  bakingPowder2glutenFreeFlour <- fn.
  
  bakingPowder2wheatflourmix <- function(x) switch(
    class(x), 
    wheatBao = .0095,
    NA_real_)
    
  bakingPowder2riceflour <- fn.
  
  yeast2flour <- fn.
  
  yeast2pastryflour <- function(x) switch(
    class(x),
    bao = .0095, 
    NA_real_)
  
  yeast2breadflour <- function(x) switch(
    class(x), 
    bao = .0095, 
    bread = .02,
    NA_real_)
  
  yeast2glutenFreeFlour <- fn.
  
  yeast2wheatflourmix <- function(x) switch(
    class(x), 
    wheatBao = .0095,
    NA_real_)
  
  yeast2riceflour <- fn.
  
  gelatin2water <- function(x) switch(
    class(x), 
    #riceMousse = {
    #if (any(grepl('coconutmilk', names(obj@flavor)))) .01 else .02
    #},
    mousse = .036,
    NA_real_)
  
  sesameOil <- function(x) switch(
    class(x), 
    meatmash =, shrimpfillCantonese =, beeffillLeeKumKee =, porkfill =, meatball = .013,
    NA_real_)
  
  greenPeppercornOil <- function(x) switch(
    class(x), 
    beeffillLeeKumKee = .0015, # tested!
    porkfill = .004,
    #marinade = .011,
    NA_real_)
  
  options(devrecipe = mget(c(
    'carbohydrate',
    'sugar', 
    'addedSugar', 'addedSugar2cocoa',
    'drymilk', 'drymilk2cocoa',
    'creamcheese',
    'fat', 
    'sodium',
    
    'water',
    'bakingPowder',
    'alcohol', 'alcohol2cocoa',
    'matcha',
    'beet',
    'blackSesame',
    'cocoa',
    'coffee', 'coffee2cocoa',
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
                  'starch', 
                  'glutinousRice', # 'rice', 
                  'yeast', 'bakingPowder', 'Na2CO3_'), 
            Y = c('flour', 'pastryflour', 'breadflour', 'glutenFreeFlour', 'wheatflourmix', 'riceflour'), 
            FUN = paste, sep = '2')),
    
    paste0(c('flour', 'pastryflour', 'breadflour', 'glutenFreeFlour', 'wheatflourmix', 'riceflour'), '2cornmeal'),
    
    'gelatin2water',
    NULL
  )))
}
