# '\u2318' 
# c('\u058d', '\u058e')


#' @title \linkS4class{recipe}
#' 
#' @description general recipe
#' 
#' @slot alias \link[base]{character} scalar in Unicode, alias (e.g., in Chinese)
#' @slot alias_class,alias_flavor \link[base]{character} scalar in Unicode, alias (e.g., in Chinese) of class and flavor
#' @slot author \link[base]{character} scalar
#' @slot key \link[base]{character} scalar, key diagnosis
#' @slot date \link[base]{Date} scalar
#' 
#' @slot homemade \link[base]{numeric} vector
#' @slot flavor,flavor_tsp,flavor_Tbsp,flavor_cup \link[base]{numeric} vector, weight of one or more flavoring (in grams)
#' 
#' @slot puree \link[base]{numeric} vector, weight of one or more puree (in grams)
#' @slot fruit \link[base]{numeric} vector, weight of fresh fruit, diced (in grams)
#' @slot fruit_pc \link[base]{numeric} vector, weight of one or more fresh fruit pulp or juice (in grams)
#' 
#' @slot pumpkin \link[base]{numeric} scalar, weight of Libby's pumpkin puree (in grams)
#' @slot pumpkinPieMix \link[base]{numeric} scalar, weight of Libby's pumpkin pie mix (in grams)
#' @slot strawberry \link[base]{numeric} scalar, weight of Kirkland frozen strawberry (in grams)
#' @slot pineapple \link[base]{numeric} scalar, weight of blended Dole canned pineapple (in grams)
#' @slot pear \link[base]{numeric} scalar, weight of blended Del Monte canned pear (in grams)
#' @slot mandarine \link[base]{numeric} scalar, weight of blended Del Monte canned mandarine (in grams)
#' @slot mango \link[base]{numeric} scalar, weight of blended Pickd frozen mango (in grams)
#' @slot tomato \link[base]{numeric} scalar, weight of Wegmans Organic tomato puree (in grams)
#' @slot darkCherry \link[base]{numeric} scalar, weight of Happy Village dark cherry puree (in grams)
#' @slot yellowCorn \link[base]{numeric} scalar, weight of Kirkland frozen yellow corn (in grams)
#' @slot durian \link[base]{numeric} scalar, weight of Lucky Taro durian pulp (in grams), seed removed
#' @slot applesauce \link[base]{numeric} scalar, weight of Motts no sugar added applesauce (in grams)
#' 
#' @slot butter,butter_tsp,butter_Tbsp,butter_cup \link[base]{numeric} scalar, weight of Kerrygold unsalted butter (in grams)
#' @slot ghee \link[base]{numeric} scalar, weight of Wegmans ghee butter (in grams)
#' @slot cheese \link[base]{numeric} \link[base]{vector} or scalar
#' @slot mascarpone \link[base]{numeric} scalar, weight of BelGioioso mascarpone cheese (in grams)
#' @slot cottageCheese \link[base]{numeric} scalar, weight of Daisy cottage cheese (in grams)
#' @slot yogurtGreek \link[base]{numeric} scalar, weight of non-fat Greek yogurt (in grams)
#' @slot creamCheese \link[base]{numeric} scalar, weight of Nancy's full-fat cream cheese
#' @slot sourCream \link[base]{numeric} scalar, weight of Daisy regular (i.e., full-fat) sour cream (in grams)
#' @slot heavyCream \link[base]{numeric} scalar, weight of Wegmans heavy cream or heavy whipping cream (in grams)
#' @slot lightCream \link[base]{numeric} scalar, weight of Lucerne table cream (or light cream) (in grams)
#' @slot yogurt \link[base]{numeric} scalar, weight of yogurt (in grams)
#' @slot kefir \link[base]{numeric} scalar
#' @slot filmjolk \link[base]{numeric} scalar
#' @slot drymilk,drymilk_tsp,drymilk_Tbsp,drymilk_cup  \link[base]{numeric} scalars, weight (in grams) and volume of Nestle Carnation fat-free dry milk, i.e., milk powder
#' @slot milk \link[base]{numeric} scalar, weight of Wegmans Organic vitamin D whole milk (in grams)
#' @slot buttermilk \link[base]{numeric} scalar, weight of Upstate Farms whole buttermilk (in grams)
#' @slot evaporatedMilk \link[base]{numeric} scalar, weight of Nestle Carnation full-fat \strong{unsweetened} evaporated milk (in grams)
#' @slot condensedMilk \link[base]{numeric} scalar, weight of Nestle Carnation full-fat \strong{sweetened} condensed milk (in grams)
#' 
#' @slot sesameOil,sesameOil_tsp,sesameOil_Tbsp,sesameOil_cup \link[base]{numeric} scalar, weight (in grams) and volume of sesame oil
#' @slot greenPeppercornOil,greenPeppercornOil_tsp,greenPeppercornOil_Tbsp,greenPeppercornOil_cup \link[base]{numeric} scalar, weight (in grams) and volume of Sichuan green peppercorn oil
#' @slot oil,oil_tsp,oil_Tbsp,oil_cup \link[base]{numeric} scalar, weight (in grams) and volume of vegetable oil
#' @slot fat,fat_tsp,fat_Tbsp,fat_cup \link[base]{numeric} scalar, weight (in grams) and volume of solid fat
#' @slot lard,lard_tsp,lard_Tbsp,lard_cup \link[base]{numeric} scalar, weight (in grams) and volume of Epic pork lard
#' @slot tallow,tallow_tsp,tallow_Tbsp,tallow_cup \link[base]{numeric} scalar, weight (in grams) and volume of Epic beef tallow
#' 
#' @slot egg_pc,eggYolk_pc,eggWhite_pc \link[base]{numeric} scalars, numbers of large egg (52 grams each), egg yolks (17.3 grams each) and whites (34.7 grams each)
#' @slot eggYolk,eggWhite \link[base]{numeric} scalars, weight of egg yolks and whites (in grams)
#' 
#' @slot teabag \link[base]{numeric} scalars, number of tea bags
#' @slot tealoose \link[base]{numeric} scalars, weight of loose tea
#' 
#' @slot flour \link[base]{numeric} scalar, weight of King Arthur all purpose flour (in grams)
# flours, corn meal, almond flour, coconut flour, etc. (in grams)
#' @slot pastryFlour \link[base]{numeric} scalar, weight of Wegmans pastry flour (in grams)
#' @slot breadFlour \link[base]{numeric} scalar, weight of King Arthur bread flour (in grams)
#' @slot wholeWheatFlour \link[base]{numeric} scalar, weight of Wegmans white whole wheat flour (in grams)
#' @slot glutenFreeFlour \link[base]{numeric} scalar, weight of gluten free measure for measure flour (in grams)
#' @slot wheatGluten \link[base]{numeric} scalar, weight of wheat gluten (in grams)
#' @slot cornmeal \link[base]{numeric} scalar, weight of cornmeal (in grams)
#' @slot coconut \link[base]{numeric} scalar, weight (in grams) of coconut flour or shredded coconut
#' @slot riceFlour \link[base]{numeric} scalar, weight of Erawan rice flour (in grams)
#' @slot glutinousRiceFlour \link[base]{numeric} scalar, weight of Erawan glutinous rice flour (in grams)
#' 
#' @slot starch,starch_tsp,starch_Tbsp,starch_cup \link[base]{numeric} scalar or \link[base]{vector}, named weight (in grams) and volume of various starch
#' 
#' @slot grain \link[base]{numeric} scalar or \link[base]{vector}, named weight of various grains
#' 
#' @slot soybean \link[base]{numeric} scalar, weight of dry soy beans (in grams)
#' @slot chickpea \link[base]{numeric} scalar, weight of dry chickpea (in grams)
#' @slot adzukibean \link[base]{numeric} scalar, weight of dry adzuki (red) bean (in grams)
#' @slot mungbean \link[base]{numeric} scalar, weight of dry mung (green) beans (in grams)
#' @slot redKidneyBean ..
#' @slot cashew \link[base]{numeric} scalar, weight of unsalted unroasted cashew (in grams)
#' @slot nut \link[base]{numeric} scalar, weight of various dry nuts (in grams)
#' 
#' @slot blackRice \link[base]{numeric} scalar, weight of black rice (in grams)
#' @slot brownRice \link[base]{numeric} scalar, weight of brown rice (in grams)
#' 
#' @slot sugar,sugar_tsp,sugar_Tbsp,sugar_cup \link[base]{numeric} scalar, weight (in grams) and volume of 10x powdered confectioners sugar 
#' @slot drinkmix,drinkmix_tsp,drinkmix_Tbsp,drinkmix_cup \link[base]{numeric} scalar, weight (in grams) and volume of 10x powdered confectioners sugar 
#' 
#' @slot brownSugar,brownSugar_tsp,brownSugar_Tbsp,brownSugar_cup \link[base]{numeric} scalar, weight (in grams) and volume of dark brown sugar
#' 
#' @slot syrup,syrup_tsp,syrup_Tbsp,syrup_cup \link[base]{numeric} scalar or \link[base]{vector}, weight (in grams) and volume of various (maple) syrup
#' 
#' @slot NaHCO3,NaHCO3_tsp,NaHCO3_Tbsp,NaHCO3_cup \link[base]{numeric} scalars, weight (in grams) and volume of Arm and Hammer baking soda
#' 
#' @slot Na2CO3,Na2CO3_tsp,Na2CO3_Tbsp,Na2CO3_cup \link[base]{numeric} scalars, 
#' weight (in grams) and volume of Na2CO3, respectively.
#' Na2CO3 is made from baking Arm and Hammer baking soda, 200F for 30 minutes
#' 
#' @slot bakingPowder,bakingPowder_tsp,bakingPowder_Tbsp,bakingPowder_cup \link[base]{numeric} scalar, weight (in grams) and volume of baking powder
#' 
#' @slot salt,salt_tsp,salt_Tbsp,salt_cup \link[base]{numeric} scalar, weight (in grams) and volume of salt
#' 
#' @slot msg,msg_tsp,msg_Tbsp,msg_cup \link[base]{numeric} scalar, weight (in grams) and volume of monosodium glutamate (MSG)
#' 
#' @slot vanilla,vanilla_tsp,vanilla_Tbsp,vanilla_cup \link[base]{numeric} scalar, weight (in grams) and volume of vanilla extract
#' 
#' @slot blackSesame \link[base]{numeric} scalar, weight (in grams) of Greenmax powdered black sesame seed
#' 
#' @slot cocoa,cocoa_tsp,cocoa_Tbsp,cocoa_cup \link[base]{numeric} scalar, weight (in grams) and volume of cocoa powder
#' @slot cocoaDutch,cocoaDutch_tsp,cocoaDutch_Tbsp,cocoaDutch_cup \link[base]{numeric} scalar, weight (in grams) and volume of Dutch-processed cocoa powder
#' @slot matcha,matcha_tsp,matcha_Tbsp,matcha_cup \link[base]{numeric} scalar, weight (in grams) and volume of culinary matcha powder 
#' 
#' @slot ginger,ginger_tsp,ginger_Tbsp,ginger_cup \link[base]{numeric} scalar, weight (in grams) and volume of Simply Organic ginger powder
#' @slot garlic,garlic_tsp,garlic_Tbsp,garlic_cup \link[base]{numeric} scalar, weight of garlic powder (in grams)
#' @slot onion,onion_tsp,onion_Tbsp,onion_cup \link[base]{numeric} scalar, weight of onion powder (in grams)
#' @slot coriander,coriander_tsp,coriander_Tbsp,coriander_cup ..
#' @slot cumin,cumin_tsp,cumin_Tbsp,cumin_cup ..
#' @slot cilantro,cilantro_tsp,cilantro_Tbsp,cilantro_cup ..
#' @slot spiceItalian,spiceItalian_tsp,spiceItalian_Tbsp,spiceItalian_cup ..
#' @slot clove,clove_tsp,clove_Tbsp,clove_cup ..
#' @slot cinnamon,cinnamon_tsp,cinnamon_Tbsp,cinnamon_cup ..
#' @slot whitePepper,whitePepper_tsp,whitePepper_Tbsp,whitePepper_cup ..
#' @slot blackPepper,blackPepper_tsp,blackPepper_Tbsp,blackPepper_cup ..
#' @slot turmeric,turmeric_tsp,turmeric_Tbsp,turmeric_cup ..
#' @slot paprika,paprika_tsp,paprika_Tbsp,paprika_cup ..
#' @slot spice5,spice5_tsp,spice5_Tbsp,spice5_cup ..
#' @slot pumpkinSpice,pumpkinSpice_tsp,pumpkinSpice_Tbsp,pumpkinSpice_cup ..
#' @slot spice,spice_tsp,spice_Tbsp,spice_cup named \link[base]{numeric} \link[base]{vector}, weight (in grams) and volume of compound spices
#' @slot chiliMix,chiliMix_tsp,chiliMix_Tbsp,chiliMix_cup ..
#' @slot curry,curry_tsp,curry_Tbsp,curry_cup ..
#' 
#' @slot beet,beet_tsp,beet_Tbsp,beet_cup \link[base]{numeric} scalar, weight (in grams) and volume of Wegmans Organic beet root powder
#' @slot acai,acai_tsp,acai_Tbsp,acai_cup \link[base]{numeric} scalar, weight (in grams) and volume of Wegmans Organic acai root powder
#' @slot creamTartar,creamTartar_tsp,creamTartar_Tbsp,creamTartar_cup ..
#' @slot coffee,coffee_tsp,coffee_Tbsp,coffee_cup \link[base]{numeric} scalar, weight (in grams) and volume of Nescafe Tasters Choice Decaf Medium Roast
#' 
#' @slot pork \link[base]{numeric} vector, weight of one or more cuts of pork (in grams)
#' @slot beef \link[base]{numeric} vector, weight of one or more cuts of beef (in grams)
#' @slot lamb \link[base]{numeric} vector, weight of one or more cuts of lamb (in grams)
#' @slot chicken \link[base]{numeric} vector, weight of one or more cuts of chicken (in grams)
#' @slot shrimp \link[base]{numeric} vector, weight of shrimp (in grams)
#' @slot seafood \link[base]{numeric} vector, weight of one or more other sea food (in grams)
#' 
#' @slot vegetable \link[base]{numeric} vector, weight of one or more vegetables (in grams)
#' 
#' @slot water \link[base]{numeric} scalar, weight of water (in grams)
#' @slot water_extra \link[base]{numeric} scalar, weight of extra water (in grams) to hydrate powders in a dough
#' @slot water40 \link[base]{numeric} scalar, weight of warm (100F–110F, 37.8C-43.3C) water (in grams) 
#' @slot water70 \link[base]{numeric} scalar, weight of hot (70C-75C) water (in grams) 
#' @slot water80 \link[base]{numeric} scalar, weight of hot (80C) water (in grams) 
#' @slot boilingWater \link[base]{numeric} scalar, weight of boiling water (in grams)
#' @slot iceWater \link[base]{numeric} scalar, weight of ice water (in grams)
#' @slot carbonatedWater \link[base]{numeric} scalar, weight of carbonated water (in grams)
#' @slot shavedIce \link[base]{numeric} scalar, weight of shaved ice (in grams)
#' @slot ice \link[base]{numeric} scalar, weight of ice (in grams)
#' 
#' @slot waterLost \link[base]{numeric} scalar, weight of water (in grams) lost in cooking process, **before dividing**
#' @slot fatLost \link[base]{numeric} scalar, weight of oil (in grams) drained in cooking process
#' @slot sugarLost \link[base]{numeric} scalar, weight of sugar (in grams) consumed by yeast in fermentation
#' 
#' @slot sauce,sauce_tsp,sauce_Tbsp,sauce_cup \link[base]{numeric} vector, weight (in grams) and volume of one or more sauces
#' 
#' @slot liqueur,liqueur_tsp,liqueur_Tbsp,liqueur_cup \link[base]{numeric} vector, weight (in grams) and volume of one or more liqueurs
#' 
#' @slot yeast,yeast_tsp,yeast_Tbsp,yeast_cup \link[base]{numeric} scalar, weight (in grams) and volume of yeast
#' 
#' @slot gelatin_leaf \link[base]{numeric} scalar, number of gold gelatin leaves,
#' see more about gelatin leaves at \url{https://dessertisans.com/insight/how-to-convert-gelatin/}
#' \describe{
#' \item{`'titanium'`}{leaves have a bloom strength of 100 and weigh 5 grams.}
#' \item{`'bronze'`}{leaves have a bloom strength of 125 and weigh 3.3 grams.}
#' \item{`'silver'`}{leaves have a bloom strength of 160 and weigh 2.5 grams.}
#' \item{`'gold'`}{leaves have a bloom strength of 200 and weigh 2 grams.}
#' \item{`'platinum'`}{leaves have a bloom strength of 250 and weigh 1.7 grams.}
#' }
#' @slot gelatin ..
#' 
#' @slot lemon_pc \link[base]{numeric} scalar, number of fresh lemon (each contains 48 grams of juice)
#' @slot lime_pc \link[base]{numeric} scalar, number of fresh lime (each contains 44 grams of juice)
#' @slot avocado_pc \link[base]{numeric} scalar, number of fresh avocado (each contains 140 grams of pulp)
#' 
#' @slot machine \link[base]{list} of \link[base]{character} scalar or \link[base]{vector}, machine(s) used
#' 
#' @slot waterBath \linkS4class{tool}
#' @slot KSM8990 \linkS4class{tool}, Kitchen Aid commercial stand mixer KSM8990, 8 quart
#' @slot KSM3316X \linkS4class{tool}, Kitchen Aid stand mixer KSM3316X, 3.5 quart
#' @slot KSMICM \linkS4class{tool}, Kitchen Aid ice cream maker KSMICM
#' @slot CuisinartICE70 \linkS4class{tool}, Cuisinart ice cream maker ICE70
#' @slot JoyoungDJ13U \linkS4class{tool}, Joyoung soymilk maker DJ13U-P10
#' @slot JoyoungCJA9U \linkS4class{tool}, Joyoung stir-fry machine CJ-A9U
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
#' @slot url \link[base]{character} scalar or \link[base]{vector}, URL of original recipe
#' @slot allrecipes \link[base]{character} scalar
#' @slot daatgo \link[base]{character} scalar
#' @slot dad1966 \link[base]{character} scalar
#' @slot happytears \link[base]{character} scalar
#' @slot ippodotea,ippodoteajpn \link[base]{character} scalar
#' @slot just1cookbook \link[base]{character} scalar
#' @slot kingarthur \link[base]{character} scalar or \link[base]{vector}, link from \url{https://www.kingarthurbaking.com} of original recipe
#' @slot laofangu \link[base]{character} scalar
#' @slot pino \link[base]{character} scalar
#' @slot preppykitchen \link[base]{character} scalar, link from \url{preppykitchen.com} of original recipe
#' @slot shangshikitchen \link[base]{character} scalar
#' @slot xiaogaojie \link[base]{character} scalar
#' @slot youtube \link[base]{character} scalar or \link[base]{vector}, YouTube ID of original recipe
#' @slot doi \link[base]{character} scalar or \link[base]{vector}
#' 
#' @references
#' \url{https://dessertisans.com/insight/how-to-convert-gelatin/}
#' 
#' @name recipe
#' @aliases recipe-class
#' @export
setClass(Class = 'recipe', slots = c(
  
  alias = 'character',
  alias_class = 'character', 
  alias_flavor = 'character',
  author = 'character',
  key = 'character',
  date = 'Date',
  
  url = 'character',
  allrecipes = 'character',
  daatgo = 'character',
  dad1966 = 'character',
  happytears = 'character',
  ippodotea = 'character', ippodoteajpn = 'character',
  just1cookbook = 'character',
  kingarthur = 'character',
  laofangu = 'character',
  pino = 'character',
  preppykitchen = 'character', # must len-1
  shangshikitchen = 'character',
  xiaogaojie = 'character',
  youtube = 'character',
  doi = 'character',
  
  machine = 'list',
  KSM8990 = 'tool',
  KSM3316X = 'tool',
  KSMICM = 'tool',
  CuisinartICE70 = 'tool',
  JoyoungDJ13U = 'tool',
  JoyoungCJA9U = 'tool',
  RobamCT763 = 'tool',
  InstantPot = 'tool',
  
  waterBath = 'tool',
  
  note = 'character',
  instruction = 'character',
  review = 'character',
  pros = 'character', cons = 'character',
  portion = 'numeric',
  
  lemon_pc = 'numeric',
  lime_pc = 'numeric',
  avocado_pc = 'numeric',
  
  homemade = 'numeric',
  
  flavor = 'numeric', flavor_tsp = 'numeric', flavor_Tbsp = 'numeric', flavor_cup = 'numeric',
  puree = 'numeric',
  
  fruit = 'numeric', 
  fruit_pc = 'numeric',
  
  oil = 'numeric', oil_tsp = 'numeric', oil_Tbsp = 'numeric', oil_cup = 'numeric', 
  sesameOil = 'numeric', sesameOil_tsp = 'numeric', sesameOil_Tbsp = 'numeric', sesameOil_cup = 'numeric',
  
  greenPeppercornOil = 'numeric',
  greenPeppercornOil_tsp = 'numeric', greenPeppercornOil_Tbsp = 'numeric', greenPeppercornOil_cup = 'numeric',
  
  fat = 'numeric', fat_tsp = 'numeric', fat_Tbsp = 'numeric', fat_cup = 'numeric',
  lard = 'numeric', lard_tsp = 'numeric', lard_Tbsp = 'numeric', lard_cup = 'numeric',
  tallow = 'numeric', tallow_tsp = 'numeric', tallow_Tbsp = 'numeric', tallow_cup = 'numeric',
  
  eggYolk = 'numeric', eggWhite = 'numeric',   
  egg_pc = 'numeric', eggYolk_pc = 'numeric', eggWhite_pc = 'numeric',
  
  teabag = 'numeric', tealoose = 'numeric',
  
  # puree
  pumpkin = 'numeric',
  pumpkinPieMix = 'numeric',
  strawberry = 'numeric',
  pineapple = 'numeric',
  pear = 'numeric',
  mandarine = 'numeric',
  mango = 'numeric',
  tomato = 'numeric',
  darkCherry = 'numeric',
  yellowCorn = 'numeric',
  durian = 'numeric',
  applesauce = 'numeric',
  
  # all dairy product
  butter = 'numeric', butter_tsp = 'numeric', butter_Tbsp = 'numeric', butter_cup = 'numeric',
  ghee = 'numeric',
  cheese = 'numeric',
  mascarpone = 'numeric',
  cottageCheese = 'numeric',
  yogurtGreek = 'numeric',
  yogurt = 'numeric',
  kefir = 'numeric',
  filmjolk = 'numeric',
  creamCheese = 'numeric',
  sourCream = 'numeric',
  heavyCream = 'numeric',
  lightCream = 'numeric',
  drymilk = 'numeric', drymilk_tsp = 'numeric', drymilk_Tbsp = 'numeric', drymilk_cup = 'numeric', 
  milk = 'numeric',
  buttermilk = 'numeric',
  evaporatedMilk = 'numeric',
  condensedMilk = 'numeric',
  
  yeast = 'numeric', yeast_tsp = 'numeric', yeast_Tbsp = 'numeric', yeast_cup = 'numeric',
  
  sugar = 'numeric', sugar_tsp = 'numeric', sugar_Tbsp = 'numeric', sugar_cup = 'numeric',
  drinkmix = 'numeric', drinkmix_tsp = 'numeric', drinkmix_Tbsp = 'numeric', drinkmix_cup = 'numeric',
  
  brownSugar = 'numeric', 
  brownSugar_tsp = 'numeric', brownSugar_Tbsp = 'numeric', brownSugar_cup = 'numeric',
  
  syrup = 'numeric',
  syrup_tsp = 'numeric', syrup_Tbsp = 'numeric', syrup_cup = 'numeric',
  
  salt = 'numeric', 
  salt_tsp = 'numeric', salt_Tbsp = 'numeric', salt_cup = 'numeric',
  
  msg = 'numeric',
  msg_tsp = 'numeric', msg_Tbsp = 'numeric', msg_cup = 'numeric',
  
  NaHCO3 = 'numeric',
  NaHCO3_tsp = 'numeric', NaHCO3_Tbsp = 'numeric', NaHCO3_cup = 'numeric',
  
  Na2CO3 = 'numeric',
  Na2CO3_tsp = 'numeric', Na2CO3_Tbsp = 'numeric', Na2CO3_cup = 'numeric',
  
  bakingPowder = 'numeric',
  bakingPowder_tsp = 'numeric', bakingPowder_Tbsp = 'numeric', bakingPowder_cup = 'numeric',
  
  pastryFlour = 'numeric',
  flour = 'numeric',
  breadFlour = 'numeric',
  wholeWheatFlour = 'numeric',
  glutenFreeFlour = 'numeric',
  wheatGluten = 'numeric',
  cornmeal = 'numeric',
  riceFlour = 'numeric',
  glutinousRiceFlour = 'numeric',
  blackRice = 'numeric',
  brownRice = 'numeric',
  
  starch = 'numeric', 
  starch_tsp = 'numeric', starch_Tbsp = 'numeric', starch_cup = 'numeric',
  
  grain = 'numeric',
  soybean = 'numeric',
  chickpea = 'numeric',
  adzukibean = 'numeric',
  mungbean = 'numeric',
  redKidneyBean = 'numeric',
  cashew = 'numeric',
  nut = 'numeric',
  
  vanilla = 'numeric', vanilla_tsp = 'numeric', vanilla_Tbsp = 'numeric', vanilla_cup = 'numeric',
  cocoa = 'numeric', cocoa_tsp = 'numeric', cocoa_Tbsp = 'numeric', cocoa_cup = 'numeric',
  cocoaDutch = 'numeric', cocoaDutch_tsp = 'numeric', cocoaDutch_Tbsp = 'numeric', cocoaDutch_cup = 'numeric',
  coffee = 'numeric', coffee_tsp = 'numeric', coffee_Tbsp = 'numeric', coffee_cup = 'numeric',
  matcha = 'numeric', matcha_tsp = 'numeric', matcha_Tbsp = 'numeric', matcha_cup = 'numeric', 
  beet = 'numeric', beet_tsp = 'numeric', beet_Tbsp = 'numeric', beet_cup = 'numeric',
  acai = 'numeric', acai_tsp = 'numeric', acai_Tbsp = 'numeric', acai_cup = 'numeric',
  creamTartar = 'numeric', creamTartar_tsp = 'numeric', creamTartar_Tbsp = 'numeric', creamTartar_cup = 'numeric',
  blackSesame = 'numeric',
  coconut = 'numeric',
  ginger = 'numeric', ginger_tsp = 'numeric', ginger_Tbsp = 'numeric', ginger_cup = 'numeric',
  garlic = 'numeric', garlic_tsp = 'numeric', garlic_Tbsp = 'numeric', garlic_cup = 'numeric',
  onion = 'numeric', onion_tsp = 'numeric', onion_Tbsp = 'numeric', onion_cup = 'numeric',
  coriander = 'numeric', coriander_tsp = 'numeric', coriander_Tbsp = 'numeric', coriander_cup = 'numeric',
  cumin = 'numeric', cumin_tsp = 'numeric', cumin_Tbsp = 'numeric', cumin_cup = 'numeric',
  cilantro = 'numeric', cilantro_tsp = 'numeric', cilantro_Tbsp = 'numeric', cilantro_cup = 'numeric',
  spiceItalian = 'numeric', spiceItalian_tsp = 'numeric', spiceItalian_Tbsp = 'numeric', spiceItalian_cup = 'numeric',
  clove = 'numeric', clove_tsp = 'numeric', clove_Tbsp = 'numeric', clove_cup = 'numeric',
  cinnamon = 'numeric', cinnamon_tsp = 'numeric', cinnamon_Tbsp = 'numeric', cinnamon_cup = 'numeric',
  whitePepper = 'numeric', whitePepper_tsp = 'numeric', whitePepper_Tbsp = 'numeric', whitePepper_cup = 'numeric',
  blackPepper = 'numeric', blackPepper_tsp = 'numeric', blackPepper_Tbsp = 'numeric', blackPepper_cup = 'numeric',
  turmeric = 'numeric', turmeric_tsp = 'numeric', turmeric_Tbsp = 'numeric', turmeric_cup = 'numeric',
  paprika = 'numeric', paprika_tsp = 'numeric', paprika_Tbsp = 'numeric', paprika_cup = 'numeric',
  spice5 = 'numeric', spice5_tsp = 'numeric', spice5_Tbsp = 'numeric', spice5_cup = 'numeric',
  pumpkinSpice = 'numeric', pumpkinSpice_tsp = 'numeric', pumpkinSpice_Tbsp = 'numeric', pumpkinSpice_cup = 'numeric',
  spice = 'numeric', spice_tsp = 'numeric', spice_Tbsp = 'numeric', spice_cup = 'numeric',
  chiliMix = 'numeric', chiliMix_tsp = 'numeric', chiliMix_Tbsp = 'numeric', chiliMix_cup = 'numeric',
  curry = 'numeric', curry_tsp = 'numeric', curry_Tbsp = 'numeric', curry_cup = 'numeric',
  
  pork = 'numeric',
  beef = 'numeric',
  lamb = 'numeric',
  chicken = 'numeric',
  shrimp = 'numeric',
  seafood = 'numeric',
  
  vegetable = 'numeric',
  
  water = 'numeric',
  water_extra = 'numeric',
  iceWater = 'numeric',
  carbonatedWater = 'numeric',
  shavedIce = 'numeric',
  ice = 'numeric',
  water40 = 'numeric',
  water70 = 'numeric',
  water80 = 'numeric',
  boilingWater = 'numeric',
  
  sauce = 'numeric', sauce_tsp = 'numeric', sauce_Tbsp = 'numeric', sauce_cup = 'numeric',
  
  liqueur = 'numeric', liqueur_tsp = 'numeric', liqueur_Tbsp = 'numeric', liqueur_cup = 'numeric',
  
  gelatin = 'numeric',
  gelatin_leaf = 'numeric',
  
  waterLost = 'numeric',
  sugarLost = 'numeric',
  fatLost = 'numeric'
  
), prototype = prototype(
  date = as.Date.numeric(numeric())
))





check_gelatin <- function(x) {
  if (n_leaf <- length(x@gelatin_leaf)) {
    if (n_leaf > 1L) stop('only use Gold gelatin leaves')
    if (is.na(x@gelatin_leaf) || (x@gelatin_leaf <= 0)) stop('number of gelatin sheets must be all >0')
    x@gelatin <- sum(x@gelatin, x@gelatin_leaf * 2)
    x@gelatin_leaf <- numeric()
  }
  if (n <- length(x@gelatin)) {
    if (n != 1L) stop('only use Gold gelatin')
    names(x@gelatin) <- 'Champion_gold_gelatin'
  }
  return(x)
}

# add name to len-1 vector
addNameLen1 <- function(x, which, name1 = stop('no default!')) {
  nx <- length(slot(x, name = which))
  if (!nx) return(x) # exception
  if (nx == 1L) {
    nm <- names(slot(x, name = which))
    if (!length(nm) || is.na(nm) || !nzchar(nm)) names(slot(x, name = which)) <- name1
  }
  nm <- names(slot(x, name = which))
  if (!length(nm) || anyNA(nm) || !all(nzchar(nm))) stop('ill name')
  return(x)
}

combineVol <- function(x, which, name1 = stop('no default!')) {
  ._tsp <- paste0(which, '_tsp')
  ._Tbsp <- paste0(which, '_Tbsp')
  ._cup <- paste0(which, '_cup')
  x_gram <- slot(addNameLen1(x, which = which, name1 = name1), name = which)
  x_tsp <- slot(addNameLen1(x, which = ._tsp, name1 = name1), name = ._tsp) # else NULL
  x_Tbsp <- slot(addNameLen1(x, which = ._Tbsp, name1 = name1), name = ._Tbsp) # else NULL
  x_cup <- slot(addNameLen1(x, which = ._cup, name1 = name1), name = ._cup) # else NULL
  if (which %in% c('starch', 'oil')) {
    add_suffix <- function(x0, which) {
      if (!length(names(x0))) return(x0)
      idx <- !endsWith(names(x0), suffix = paste0('_', which))
      names(x0)[idx] <- paste0(names(x0)[idx], '_', which)
      #names(x0)[idx] <- ifelse(
      #  test = vapply(names(x0)[idx], FUN = exists, where = 'package:cooking', FUN.VALUE = NA), 
      #  yes = names(x0)[idx],
      #  no = paste0(names(x0)[idx], '_', which))
      # dont know how to use \link[base]{exists}
      return(x0)
    }
    x_gram <- add_suffix(x_gram, which = which)
    x_tsp <- add_suffix(x_tsp, which = which)
    x_Tbsp <- add_suffix(x_Tbsp, which = which)
    x_cup <- add_suffix(x_cup, which = which)
  }
  
  slot(x, name = which) <- sum_.(
    x_gram, 
    gram_per_tsp(names(x_tsp)) * x_tsp, 
    gram_per_tsp(names(x_Tbsp)) * (3 * x_Tbsp), # parenthesis needed!! otherwise floating issue!!!
    gram_per_tsp(names(x_cup)) * (48 * x_cup)
  )
  slot(x, name = ._tsp) <- slot(x, name = ._Tbsp) <- slot(x, name = ._cup) <- numeric()
  return(x)
}

meatName <- function(x, animal = stop('')) {
  if (!length(slot(x, name = animal))) return(x)
  nm <- names(slot(x, name = animal))
  if (!length(nm) || anyNA(nm) || !all(nzchar(nm))) stop('incomplete meat name')
  idx <- !startsWith(nm, prefix = paste0(animal, '_'))
  names(slot(x, name = animal))[idx] <- paste0(animal, '_', nm[idx])
  return(x)
}

dairyName <- function(x, dairy = stop(''), name1 = stop()) {
  if (!length(slot(x, name = dairy))) return(x)
  x <- addNameLen1(x, which = dairy, name1 = name1)
  nm <- names(slot(x, name = dairy))
  if (!length(nm) || anyNA(nm) || !all(nzchar(nm))) stop('incomplete dairy name')
  idx <- !endsWith(nm, suffix = paste0('_', dairy))
  names(slot(x, name = dairy))[idx] <- paste0(nm[idx], '_', dairy)
  return(x)
}


get_flavor_ <- function(x) {
  paste(vapply(x, FUN = function(i) eval(call(i))@name, FUN.VALUE = ''), collapse = ' + ')
}



#' @title Trim \linkS4class{recipe}
#' 
#' @description
#' ..
#' 
#' @param x a \linkS4class{recipe} object
#' 
#' @export
recipe <- function(x) {
  
  if (!inherits(x, 'recipe')) stop('input must be `recipe` class')
  
  #ret <- new(Class = 'recipe')
  
  #slot_ <- getSlots('recipe')
  #for (i in names(slot_)) slot(ret, name = i) <- slot(x, name = i)
  
  # processing 'numeric'
  
  x <- check_gelatin(x)
  
  x@eggWhite <- c(eggWhite = sum(eggWhite()@servingGram * sum(x@eggWhite_pc, x@egg_pc), x@eggWhite))
  x@eggYolk <- c(eggYolk = sum(eggYolk()@servingGram * sum(x@eggYolk_pc, x@egg_pc), x@eggYolk))
  x@eggWhite_pc <- x@eggYolk_pc <- x@egg_pc <- numeric()
  
  x <- addNameLen1(x, which = 'flour', name1 = 'KingArthur_allPurpose')
  x <- addNameLen1(x, which = 'pastryFlour', name1 = 'Wegmans_pastry')
  
  #x <- addNameLen1(x, which = 'breadFlour', name1 = 'KingArthur_bread')
  x <- addNameLen1(x, which = 'breadFlour', name1 = 'Wegmans_bread') # 2024-04-02
  # Wegmans_bread() has *much* higher water absorbency, and much cheaper than KingArthur_bread()
  
  x <- addNameLen1(x, which = 'wholeWheatFlour', name1 = 'Wegmans_whiteWheat')
  x <- addNameLen1(x, which = 'glutenFreeFlour', name1 = 'KingArthur_M4M')
  x <- addNameLen1(x, which = 'wheatGluten', name1 = 'BobsRedMill_wheatGluten')
  x <- addNameLen1(x, which = 'cornmeal', name1 = 'Albertsons_yellowCorn')
  x <- addNameLen1(x, which = 'coconut') # , name1 = 'WegmansOrganic_coconutFlour' # compare with other brands?
  x <- addNameLen1(x, which = 'riceFlour', name1 = 'Erawan_riceFlour')
  x <- addNameLen1(x, which = 'glutinousRiceFlour', name1 = 'Erawan_glutinousRiceFlour')
  x <- addNameLen1(x, which = 'blackRice', name1 = 'HaiTai_blackRice')
  x <- addNameLen1(x, which = 'brownRice', name1 = 'Nishiki_brownRice')
  
  x <- addNameLen1(x, which = 'water', name1 = 'Wegmans_water')
  x <- addNameLen1(x, which = 'water40', name1 = 'Wegmans_water')
  x <- addNameLen1(x, which = 'iceWater', name1 = 'Wegmans_water')
  x <- addNameLen1(x, which = 'carbonatedWater', name1 = 'Wegmans_water')
  x <- addNameLen1(x, which = 'shavedIce', name1 = 'Wegmans_water')
  x <- addNameLen1(x, which = 'ice', name1 = 'Wegmans_water')
  x <- addNameLen1(x, which = 'water70', name1 = 'Wegmans_water')
  x <- addNameLen1(x, which = 'water80', name1 = 'Wegmans_water')
  x <- addNameLen1(x, which = 'boilingWater', name1 = 'Wegmans_water')
  
  x <- addNameLen1(x, which = 'pumpkin', name1 = 'Libbys_pumpkin')
  x <- addNameLen1(x, which = 'pumpkinPieMix', name1 = 'Libbys_pumpkinPieMix')
  x <- addNameLen1(x, which = 'strawberry', name1 = 'Kirkland_strawberry')
  x <- addNameLen1(x, which = 'pineapple', name1 = 'Dole_pineapple')
  x <- addNameLen1(x, which = 'pear', name1 = 'DelMonte_pear')
  x <- addNameLen1(x, which = 'mandarine', name1 = 'DelMonte_mandarine')
  x <- addNameLen1(x, which = 'mango', name1 = 'mango')
  x <- addNameLen1(x, which = 'tomato', name1 = 'WegmansOrganic_tomato')
  x <- addNameLen1(x, which = 'darkCherry', name1 = 'HappyVillage_darkCherry')
  x <- addNameLen1(x, which = 'yellowCorn', name1 = 'Kirkland_yellowCorn')
  x <- addNameLen1(x, which = 'durian', name1 = 'LuckyTaro_durian')
  x <- addNameLen1(x, which = 'applesauce', name1 = 'Motts_applesauce')
  x <- addNameLen1(x, which = 'blackSesame', name1 = 'Greenmax_blackSesame')
  
  x <- combineVol(x, which = 'flavor')
  x <- combineVol(x, which = 'sesameOil', name1 = 'Kadoya_sesameOil')
  x <- combineVol(x, which = 'greenPeppercornOil', name1 = 'YouJia_greenPeppercornOil')
  x <- combineVol(x, which = 'fat')
  x <- combineVol(x, which = 'lard', name1 = 'Epic_lard')
  x <- combineVol(x, which = 'tallow', name1 = 'Epic_tallow')
  
  # no accurate density info available yet
  x <- combineVol(x, which = 'ginger', name1 = 'SimplyOrganic_ginger')
  x <- combineVol(x, which = 'garlic', name1 = 'McCormick_garlic_powder')
  x <- combineVol(x, which = 'onion', name1 = 'McCormick_onion_powder')
  x <- combineVol(x, which = 'coriander', name1 = 'SimplyOrganic_coriander')
  x <- combineVol(x, which = 'cumin', name1 = 'SimplyOrganic_cumin')
  x <- combineVol(x, which = 'cilantro', name1 = 'McCormick_cilantro')
  x <- combineVol(x, which = 'spiceItalian', name1 = 'SimplyOrganic_Italian')
  x <- combineVol(x, which = 'clove', name1 = 'SimplyOrganic_clove')
  x <- combineVol(x, which = 'cinnamon', name1 = 'SimplyOrganic_cinnamonCeylon')
  x <- combineVol(x, which = 'whitePepper', name1 = 'McCormick_whitePepper')
  x <- combineVol(x, which = 'blackPepper', name1 = 'McCormick_blackPepper')
  x <- combineVol(x, which = 'turmeric', name1 = 'McCormick_turmeric')
  x <- combineVol(x, which = 'paprika', name1 = 'Chinata_paprika')
  x <- combineVol(x, which = 'spice5', name1 = 'SimplyOrganic_5spice')
  x <- combineVol(x, which = 'pumpkinSpice', name1 = 'SimplyOrganic_pumpkinSpice')
  x <- combineVol(x, which = 'spice')
  x <- combineVol(x, which = 'chiliMix')
  x <- combineVol(x, which = 'curry')
  
  # with density info
  x <- combineVol(x, which = 'sugar', name1 = 'US_10x')
  x <- combineVol(x, which = 'brownSugar', name1 = 'Domino_darkBrown')
  x <- combineVol(x, which = 'drinkmix')
  x <- combineVol(x, which = 'syrup')
  x <- combineVol(x, which = 'salt', name1 = 'Morton_salt')
  x <- combineVol(x, which = 'msg', name1 = 'Ajinomoto_msg')
  x <- combineVol(x, which = 'NaHCO3', name1 = 'ArmHammer_NaHCO3')
  x <- combineVol(x, which = 'Na2CO3', name1 = 'Na2CO3')
  x <- combineVol(x, which = 'bakingPowder', name1 = 'TraderJoes_bakingPowder')
  x <- combineVol(x, which = 'yeast', name1 = 'Fleischmanns_instant')
  x <- combineVol(x, which = 'matcha', name1 = 'Ippodo_ikuyo')
  #x <- combineVol(x, which = 'matchaSado', name1 = 'Marukyu_tenju')
  x <- combineVol(x, which = 'cocoa', name1 = 'Navitas_cacao')
  x <- combineVol(x, which = 'cocoaDutch', name1 = 'KingArthur_Bensdorp')
  x <- combineVol(x, which = 'coffee', name1 = 'NescafeTastersChoice_decaf')
  x <- combineVol(x, which = 'beet', name1 = 'Wegmans_beet')
  x <- combineVol(x, which = 'acai', name1 = 'Wegmans_acai')
  x <- combineVol(x, which = 'creamTartar', name1 = 'McCormick_creamTartar')
  x <- combineVol(x, which = 'vanilla', name1 = 'vanillaExtract')
  
  x <- combineVol(x, which = 'starch')
  x <- combineVol(x, which = 'oil')
  x <- combineVol(x, which = 'sauce')
  x <- combineVol(x, which = 'liqueur')
  
  x <- combineVol(x, which = 'butter', name1 = 'Kerrygold_butter')
  x <- dairyName(x, dairy = 'butter')
  x <- dairyName(x, dairy = 'ghee', name1 = 'WegmansOrganic')
  x <- addNameLen1(x, which = 'cheese')
  x <- dairyName(x, dairy = 'mascarpone', name1 = 'BelGioioso')
  x <- dairyName(x, dairy = 'cottageCheese', name1 = 'Daisy')
  x <- dairyName(x, dairy = 'yogurtGreek', name1 = 'FageTotal0')
  #x <- dairyName(x, dairy = 'yogurt', name1 = 'Stonyfield')
  x <- dairyName(x, dairy = 'yogurt', name1 = 'Nancys') # taste best!!
  x <- dairyName(x, dairy = 'kefir')
  x <- dairyName(x, dairy = 'filmjolk')
  x <- dairyName(x, dairy = 'condensedMilk', name1 = 'Carnation')
  x <- dairyName(x, dairy = 'evaporatedMilk', name1 = 'Carnation')
  x <- dairyName(x, dairy = 'creamCheese', name1 = 'Nancys')
  x <- combineVol(x, which = 'drymilk', name1 = 'Carnation_drymilk')
  x <- dairyName(x, dairy = 'drymilk')
  x <- dairyName(x, dairy = 'milk', name1 = 'WegmansOrganic_whole')
  x <- dairyName(x, dairy = 'buttermilk', name1 = 'UpstateFarms')
  x <- dairyName(x, dairy = 'heavyCream', name1 = 'Wegmans')
  x <- dairyName(x, dairy = 'lightCream', name1 = 'Lucerne')
  x <- dairyName(x, dairy = 'sourCream', name1 = 'Daisy')
  
  x <- meatName(x, animal = 'pork')
  x <- meatName(x, animal = 'beef')
  x <- meatName(x, animal = 'lamb')
  x <- meatName(x, animal = 'chicken')
  x <- addNameLen1(x, which = 'shrimp', name1 = 'Kirkland_shrimp_31_40')
  
  x@fruit_pc <- sum_.( # is this correct???
    addNameLen1(x, which = 'fruit_pc')@fruit_pc, 
    c(avocado = avocado()@pieceWeight * x@avocado_pc),
    c(lemonJuice = lemonJuice()@pieceWeight * x@lemon_pc),
    c(limeJuice = limeJuice()@pieceWeight * x@lime_pc))
  x@avocado_pc <- x@lemon_pc <- x@lime_pc <- numeric()
  
  x <- addNameLen1(x, which = 'soybean', name1 = 'Laura_soybean')
  x <- addNameLen1(x, which = 'chickpea', name1 = 'Palouse_chickpea')
  x <- addNameLen1(x, which = 'adzukibean', name1 = 'HaiTai_adzuki')
  x <- addNameLen1(x, which = 'mungbean', name1 = 'HaiTai_mung')
  x <- addNameLen1(x, which = 'redKidneyBean', name1 = 'redKidneyBean')
  x <- addNameLen1(x, which = 'cashew', name1 = 'Kirkland_cashew_organic')
  x <- addNameLen1(x, which = 'nut')
  
  if (!length(x@water_extra) && inherits(x, what = c('bread', 'bao', 'pastalinda'))) {
    extraWater <- function(z) sum(z * vapply(names(z), FUN = function(nm) eval(call(name = nm))@extra@water, FUN.VALUE = NA_real_))
    x@water_extra <- extraWater(x@matcha) + extraWater(x@beet) + extraWater(x@cocoa) + extraWater(x@cocoaDutch) + extraWater(x@acai)
  }
  x <- addNameLen1(x, which = 'water_extra', name1 = 'Wegmans_water')
  
  x@machine <- x@machine[lengths(x@machine) > 0L]
  
  for (i in names(which(getSlots('recipe') == 'numeric'))) {
    ival <- slot(object = x, name = i)
    # generic method '+' will create 0's
    if (anyNA(ival)) stop(i)
    if (length(ival) && all(ival == 0)) slot(object = x, name = i) <- numeric()
  }
  
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
  
  if (!length(x@alias_class)) {
    
    if (length(x@author)) {
      if (length(x@allrecipes)) {
        x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://www.allrecipes.com/recipe/%s', x@allrecipes), text = x@author))
        x@allrecipes <- character()
      } else if (length(x@youtube)) {
        x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', x@youtube[1L]), text = x@author))
        x@youtube <- x@youtube[-1L]
      } else if (length(x@url)) {
        x@author <- unclass(style_hyperlink(url = x@url[1L], text = x@author))
        x@url <- x@url[-1L]
      }
    } # before `if (!length(x@author))` !!!
    
    if (length(x@daatgo)) {
      if (length(x@daatgo) > 1L) stop('only allow len-1 @daatgo')
      x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', x@daatgo), text = '\u8fbe\u54e5\u53a8\u623f'))
      x@daatgo <- character()
    }
    
    if (length(x@dad1966)) {
      if (length(x@dad1966) > 1L) stop('only allow len-1 @dad1966')
      x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', x@dad1966), text = '\u8001\u7238\u7684\u98df\u5149'))
      x@dad1966 <- character()
    }
    
    if (length(x@happytears)) {
      if (length(x@happytears) > 1L) stop('only allow len-1 @happytears')
      x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', x@happytears), text = '\u5e78\u798f\u7684\u773c\u6cea'))
      x@happytears <- character()
    }
    
    if (length(x@ippodotea)) {
      if (length(x@ippodotea) > 1L) stop('only allow len-1 @ippodotea')
      x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://ippodotea.com/products/%s', x@ippodotea), text = 'Ippodo\U1f375\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5'))
      x@ippodotea <- character()
    }
    
    if (length(x@ippodoteajpn)) {
      if (length(x@ippodoteajpn) > 1L) stop('only allow len-1 @ippodoteajpn')
      x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://www.ippodo-tea.co.jp/products/%s', x@ippodoteajpn), text = 'Ippodo\U1f375\u4e00\u4fdd\u5802\u8336\u8216\U1f1ef\U1f1f5'))
      x@ippodoteajpn <- character()
    }
    
    if (length(x@just1cookbook)) {
      if (length(x@just1cookbook) > 1L) stop('only allow len-1 @just1cookbook')
      x@author <- paste(
        unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', names(x@just1cookbook)), text = 'Just One')),
        unclass(style_hyperlink(url = sprintf(fmt = 'https://www.justonecookbook.com/%s', x@just1cookbook), text = 'Cookbook'))
      )
      x@just1cookbook <- character()
    }

    if (length(x@kingarthur)) {
      if (length(x@kingarthur) > 1L) stop('only allow len-1 @kingarthur')
      if (!length(x@author)) stop('King Arthur employee name?')
      x@author <- paste(
        unclass(style_hyperlink(url = sprintf(fmt = 'https://www.kingarthurbaking.com/recipes/%s', x@kingarthur), text = 'King Arthur')),
        unclass(style_hyperlink(url = sprintf(fmt = 'https://www.kingarthurbaking.com/author/%s', x@author), text = 'Recipe'))
      )
      x@kingarthur <- character()
    }

    if (length(x@laofangu)) {
      if (length(x@laofangu) > 1L) stop('only allow len-1 @laofangu')
      x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', x@laofangu), text = '\u8001\u996d\u9aa8'))
      x@laofangu <- character()
    }
    
    if (length(x@pino)) {
      if (length(x@pino) > 1L) stop('only allow len-1 @pino')
      x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', x@pino), text = '\u54c1\u8bfa'))
      # http://www.pinochina.com # temporarily down
      x@pino <- character()
    }
    
    if (length(x@preppykitchen)) {
      if (length(x@author)) stop('@author will be overwritten by @preppykitchen')
      if (length(x@preppykitchen) > 1L) stop('only allow len-1 @preppykitchen')
      x@author <- paste(
        unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', names(x@preppykitchen)), text = 'Preppy')),
        unclass(style_hyperlink(url = sprintf(fmt = 'https://preppykitchen.com/%s/', x@preppykitchen), text = 'Kitchen'))
      )
      x@preppykitchen <- character()
    } 
    
    if (length(x@shangshikitchen)) {
      if (length(x@shangshikitchen) > 1L) stop('only allow len-1 @shangshikitchen')
      x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', x@shangshikitchen), text = '\u5c1a\u98df\u53a8\u623f'))
      x@shangshikitchen <- character()
    }
    
    if (length(x@xiaogaojie)) {
      if (length(x@xiaogaojie) > 1L) stop('only allow len-1 @xiaogaojie')
      x@author <- unclass(style_hyperlink(url = sprintf(fmt = 'https://youtu.be/%s', x@xiaogaojie), text = '\u5c0f\u9ad8\u59d0'))
      x@xiaogaojie <- character()
    }
    
    x@alias_class <- paste0('\U1f3b6', paste0('\033[0;32m', x@author, '\033[0m'))
  }
  
  if (!length(x@alias_flavor)) {
    x@alias_flavor <- if (length(x@coffee)) {
      if (length(x@liqueur)) {
        'Tiramisu\u0300'
      } else if (length(x@cocoaDutch)) {
        if (grepl('blackcocoa', x = tolower(names(x@cocoaDutch)))) stop('Black cocoa is overly alkalized and not a good choice for hot cocoa and mocaccino!')
        if (x@cocoaDutch / x@coffee < 1) 'Caff\u00e8' else 'Caff\u00e8 Mocha'
      } else if (length(x@syrup)) {
        if (any(grepl('ryeWhisky', x = names(x@syrup)))){
          'Rye Whiskey\u67ab\u7cd6 Tiramisu\u0300'
        } else stop('more syrup?')
      } else 'Caff\u00e8' # \u2615
     
    } else if (length(x@curry)) {
      get_flavor_(names(x@curry))
    } else if (length(x@chiliMix)) {
      get_flavor_(names(x@chiliMix))
    } else if (length(tea <- sum_.(getTealoose(x@teabag), x@tealoose))) {
      get_flavor_(names(tea))
    } else if (length(x@spice)) {
      get_flavor_(setdiff(names(x@spice), 'Kirkland_noSaltSeasoning'))
    } else switch(
      class(x), 
      matchaLatteHot =, matchaLatteFrappe =, matchaGoatLatteHot =, matchaGoatLatteFrappe = {
        switch(class(x), matchaLatteHot = {
          '\u62b9\u8336\U1f375Latte'
        }, matchaGoatLatteHot = {
          '\u62b9\u8336\U1f375\u7f8a\u5976Latte'
        }, matchaLatteFrappe =, matchaGoatLatteFrappe = {
          '\u62b9\u8336\U1f375'
        })
      },
      shortDough =, waterDough = {
        if (length(x@lard)) {
          '\u732a\u6cb9'
        }
      }, if (length(x@blackRice)) {
        '\u9ed1\u7c73'
      } else if (length(x@brownRice)) {
        '\u7cd9\u7c73'
      } else if (length(x@matcha)) {
        '\u62b9\u8336\U1f375'
      } else if (length(x@beet)) {
        '\u751c\u83dc'
      } else if (length(x@acai)) {
        '\u5df4\u897f\u8393'
      } else if (length(x@pumpkin)) {
        '\u5357\u74dc\U1f383'
      } else if (length(x@strawberry)) {
        '\u8349\u8393\U1f353'
      } else if (length(x@pineapple)) {
        '\u83e0\u841d\U1f34d'
      } else if (length(x@pear)) {
        '\u68a8\U1f350'
      } else if (length(x@mandarine)) {
        '\u6a58\u5b50\U1f34a'
      } else if (length(x@mango)) {
        '\u8292\u679c\U1f96d'
      } else if (length(x@tomato)) {
        '\u897f\u7ea2\u67ff\U1f345'
      } else if (length(x@darkCherry)) {
        '\u751c\u6a31\u6843\U1f352'
      } else if (length(x@applesauce)) {
        '\u82f9\u679c\U1f34e'
      } else if (length(x@chickpea)) {
        '\u9e70\u5634\u8c46'
      } else if (length(x@cashew)) {
        '\u8170\u679c'
      } else if (length(x@adzukibean)) {
        '\u7ea2\u8c46'
      } else if (length(x@mungbean)) {
        '\u7eff\u8c46'
      } else if (length(x@redKidneyBean)) {
        '\u7ea2\u82b8\u8c46'
      } else if (length(x@shrimp)) {
        '\u867e\U1f990'
      } else if (length(x@beef)) {
        '\u725b\u8089'
      } else if (length(x@pork)) {
        '\u732a\u8089'
      } else if (length(x@beef)) {
        '\u725b\u8089'
      } else if (length(x@ginger)) {
        '\u59dc\u9999\U1fada'
      } else if (length(x@cocoa) || length(x@cocoaDutch)) { # `cocoa` has higher priority than `coffee`
        '\u5de7\u514b\u529b\U1f36b' # '\u53ef\u53ef\U1f36b'
      } else if (length(x@blackSesame)) {
        '\u9ed1\u829d\u9ebb'
      } else if (length(x@coconut)) {
        '\u6930\u84c9\U1f965'
      #} else if (length(liqueur_nm <- names(x@liqueur))) {
      #  if (any(endsWith(liqueur_nm, suffix = '_coffee'))) {
      #    'Tiramisu\u0300'
      #  } else character()
      } else if (length(x@liqueur) == 1L) {
        nutrition_name_brand(nutrition(do.call(what = names(x@liqueur), args = list())))
      } else if (length(x@sauce)) {
        if (any(grepl('tomyum', x = names(x@sauce)))) {
          '\u51ac\u9634'
        } else character()
      } else if (length(x@syrup)) {
        get_flavor_(names(x@syrup))
      } else character())
  }
  
  if (!length(x@alias)) {
    x@alias <- if (length(x@alias_class) & length(x@alias_flavor)) {
      paste(x@alias_flavor, x@alias_class)
    } else if (length(x@alias_class) & !length(x@alias_flavor)) {
      x@alias_class
    } else x@alias 
  } # else do nothing
  
  if (length(x@key)) {
    x@alias <- paste0(x@alias, '\033[0;105;97m', x@key, '\033[0m')
    x@key <- character()
  }
  
  return(x)
}








#' @export
nutrition.recipe <- function(x) {
  
  x <- recipe(x)
  
  lost <- c('waterLost', 'fatLost', 'sugarLost')
  ingredient0 <- setdiff(names(which(getSlots('recipe') == 'numeric')), y = c('portion', lost))
  ingredient <- names(which(lengths(attributes(x)[ingredient0]) > 0L))
  
  atr <- attributes(x)[ingredient]
  atr$teabag <- getTealoose(x@teabag)

  total_raw <- sum(unlist(atr, use.names = FALSE))
  
  tool_slot <- names(which(getSlots('recipe') == 'tool'))
  waterLost <- sum(x@waterLost, unlist(lapply(tool_slot, FUN = function(i) slot(x, name = i)@waterLost), use.names = FALSE))
  total_lost <- sum(
    waterLost,
    unlist(attributes(x)[setdiff(lost, 'waterLost')], use.names = FALSE)
  )
  total <- total_raw - total_lost
  
  grams <- unlist(unname(atr))
  if (!length(grams)) stop('shouldnt happen!!!')
  grams_nm <- names(grams)
  names(grams_nm) <- grams_nm
  
  nutri <- lapply(grams_nm, FUN = nutrition.character)
  
  info <- nutrition_(dots = nutri)
  # print(info) # debug
  tmp <- (t.default(grams) %*% info)[1, , drop = TRUE]
  calorie <- tmp['calorie']
  carbohydrate <- tmp['carbohydrate']
  sugar <- tmp['sugar'] - sum(x@sugarLost)
  addedSugar <- max(0, tmp['addedSugar'] - sum(x@sugarLost))
  sodium <- tmp['sodium']
  fat <- tmp['fat'] - sum(x@fatLost)
  cholesterol <- tmp['cholesterol']
  protein <- tmp['protein']
  alcohol <- tmp['alcohol']
  water <- tmp['water']
  waterCooked <- tmp['water'] - waterLost
  usd <- tmp['usd']
  
  flour <- sum(x@flour)
  pastryFlour <- sum(x@pastryFlour)
  breadFlour <- sum(x@breadFlour)
  wholeWheatFlour <- sum(x@wholeWheatFlour)
  mix0_wheat_flour <- c(flour = flour, pastry = pastryFlour, bread = breadFlour, wheat = wholeWheatFlour)
  mix_wheat_flour <- sum(mix0_wheat_flour)
  
  glutenFreeFlour <- sum(x@glutenFreeFlour)
  wheatGluten <- sum(x@wheatGluten)
  cornmeal <- sum(x@cornmeal)
  coconut <- sum(x@coconut)
  
  riceFlour <- sum(x@riceFlour, x@glutinousRiceFlour)
  
  puree <- sum(x@puree, x@pumpkin, x@pumpkinPieMix, x@strawberry, x@pineapple, x@pear, x@mandarine, x@mango, x@tomato, x@darkCherry, x@yellowCorn, x@durian, x@applesauce)
  starch <- sum(x@starch)
  drymilk <- sum(x@drymilk)
  tea <- sum_.(getTealoose(x@teabag), x@tealoose)
  
  devrecipe <- getOption('devrecipe') 
  
  ret <- new(
    Class = 'nutrition', 
    name = x@alias,
    #review = x@review,
    servingGram = total, # after sutracting everything lost!!
    usd = unname(usd), # `recipe` already dealt with currency conversion
    calorie = if (calorie) calorie else numeric(),
    carbohydrate = if (carbohydrate) carbohydrate else numeric(),
    sugar = if (sugar) sugar else numeric(),
    addedSugar = if (addedSugar) addedSugar else numeric(),
    alcohol = if (alcohol) alcohol else numeric(),
    sodium = if (sodium) sodium else numeric(),
    fat = if (fat) fat else numeric(),
    cholesterol = if (cholesterol) cholesterol else numeric(),
    protein = if (protein) protein else numeric(),
    # water = if (water) water else numeric(),
    water = if (waterCooked) waterCooked else numeric()
  )
  
  attr(ret, which = 'total_lost') <- total_lost
  
  attr(ret, which = 'uncooked') <- new(
    Class = 'uncooked',
    # `Base:Aerator` no longer matters :)
    #base <- sum(atr$gelatin, x@puree, x@water, x@water40, x@boilingWater, x@iceWater, x@dairy, x@flavor)
    #aerator <- sum(x@heavyCream, atr$eggWhite, x@sugar, x@brownSugar)
    #sprintf(fmt = '%.2f', base / aerator)
    # 'Gelatin:Water' = if ((gelatin <- sum(atr$gelatin)) & water) {
    #  equiv(actual = gelatin / water, ideal = devrecipe$gelatin2water(x))
    # },
    # 'SelfRising' = if (length(x@selfRisingFlour)) {
    #  ideal <- switch(class(x), pancake = .7)
    #  equiv(actual = x@selfRisingFlour / flour, ideal)
    #},
    # 'Acid:SelfRising' = if (length(x@selfRisingFlour)) {
    #  acid_weight <- x@flavor['CountryTime_Lemonade']
    #  acid_rate <- c(CountryTime_Lemonade = 1 - CountryTime_Lemonade()@sugar/CountryTime_Lemonade()@servingGram)
    #  acid <- sum(acid_weight * acid_rate, na.rm = TRUE)
    #  ideal <- switch(class(x), pancake =, pancakeMix = .0077)
    #  equiv(actual = acid / x@selfRisingFlour, ideal, margin = 1.01)
    #},
    #water = equiv(actual = if (water / total_raw > .8) NA_real_ else water / total_raw),
    water = equiv(actual = water / total_raw),
    alcohol = equiv(actual = alcohol / total_raw),
    carbohydrate = equiv(actual = carbohydrate / total_raw),
    sugar = if (TRUE | (sugar > addedSugar)) equiv(actual = sugar / total_raw) else new(Class = 'equiv'),
    addedSugar = equiv(actual = addedSugar / total_raw),
    fat = equiv(actual = fat / total_raw),
    sesameOil = equiv(actual = x@sesameOil / total_raw),
    greenPeppercornOil = equiv(actual = x@greenPeppercornOil / total_raw),
    #cholesterol = equiv(actual = cholesterol / total_raw),
    sodium = equiv(actual = sodium / total_raw),
    bakingPowder = equiv(actual = x@bakingPowder / total_raw),
    msg = equiv(actual = x@msg / total_raw),
    drymilk = equiv(actual = drymilk / total_raw),
    tea = equiv(actual = tea / total_raw),
    protein = equiv(actual = protein / total_raw),
    creamCheese = equiv(actual = sum(x@creamCheese) / total_raw),
    matcha = equiv(actual = x@matcha / total_raw),
    beet = equiv(actual = x@beet / total_raw),
    ginger = equiv(actual = x@ginger / total_raw),
    cumin = equiv(actual = x@cumin / total_raw),
    cilantro = equiv(actual = x@cilantro / total_raw),
    garlic = equiv(actual = x@garlic / total_raw),
    onion = equiv(actual = x@onion / total_raw),
    whitePepper = equiv(actual = x@whitePepper / total_raw),
    blackPepper = equiv(actual = x@blackPepper / total_raw),
    turmeric = equiv(actual = x@turmeric / total_raw),
    cinnamon = equiv(actual = x@cinnamon / total_raw),
    paprika = equiv(actual = x@paprika / total_raw),
    coriander = equiv(actual = x@coriander / total_raw),
    chiliMix = equiv(actual = x@chiliMix / total_raw),
    curry = equiv(actual = x@curry / total_raw),
    blackSesame = equiv(actual = x@blackSesame / total_raw),
    coconut = equiv(actual = x@coconut / total_raw),
    cocoa = equiv(actual = sum(x@cocoa, x@cocoaDutch) / total_raw),
    coffee = equiv(actual = x@coffee / total_raw),
    acai = equiv(actual = x@acai / total_raw),
    addedStarch = equiv(actual = starch / total_raw),
    gelatin = equiv(actual = x@gelatin / total_raw)
    # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total_raw)
  ) # else NULL
  
  attr(ret, which = 'cookedTexture') <- new(
    Class = 'cookedTexture',
    #water = equiv(actual = if (waterCooked / total > .8) NULL else waterCooked / total, ideal = devrecipe$water(x)),
    water = equiv(actual = waterCooked / total, ideal = devrecipe$water(x)),
    carbohydrate = equiv(actual = carbohydrate / total, ideal = devrecipe$carbohydrate(x)),
    NaHCO3 = equiv(actual = x@NaHCO3 / total), # , ideal = devrecipe$NaHCO3(x)
    fat = equiv(actual = fat / total, ideal = devrecipe$fat(x), margin = 1.2, ignore = .001),
    #cholesterol = equiv(actual = cholesterol / total),
    bakingPowder = equiv(actual = x@bakingPowder / total, ideal = devrecipe$bakingPowder(x)),
    protein = equiv(actual = protein / total),
    addedStarch = equiv(actual = starch / total, ideal = devrecipe$starch(x)),
    gelatin = equiv(actual = x@gelatin / total)
    # 'Gelatin' = if (atr$gelatin > 0) sprintf(fmt = '%.1f%%', 1e2 * atr$gelatin / total)
  )
  
  attr(ret, which = 'cookedFlavor') <- new(
    Class = 'cookedFlavor',
    alcohol = equiv(actual = alcohol / total, ideal = devrecipe$alcohol(x)),
    sugar = if (TRUE | (sugar > addedSugar)) equiv(actual = sugar / total, ideal = devrecipe$sugar(x)) else new(Class = 'equiv'),
    addedSugar = equiv(actual = addedSugar / total, ideal = devrecipe$addedSugar(x)),
    sesameOil = equiv(actual = x@sesameOil / total, ideal = devrecipe$sesameOil(x)),
    greenPeppercornOil = equiv(actual = x@greenPeppercornOil / total, ideal = devrecipe$greenPeppercornOil(x)),
    #cholesterol = equiv(actual = cholesterol / total),
    sodium = equiv(actual = sodium / total, ideal = devrecipe$sodium(x), ignore = .0001),
    msg = equiv(actual = x@msg / total),
    drymilk = equiv(actual = drymilk / total, ideal = devrecipe$drymilk(x)),
    tea = equiv(actual = tea / total), # , ideal = devrecipe$tea(x)
    creamCheese = equiv(actual = sum(x@creamCheese) / total, ideal = devrecipe$creamcheese(x)),
    matcha = equiv(actual = x@matcha / total, ideal = devrecipe$matcha(x)),
    beet = equiv(actual = x@beet / total, ideal = devrecipe$beet(x)),
    ginger = equiv(actual = x@ginger / total, ideal = devrecipe$ginger(x)),
    cumin = equiv(actual = x@cumin / total),
    cilantro = equiv(actual = x@cilantro / total),
    garlic = equiv(actual = x@garlic / total, ideal = devrecipe$garlic(x)),
    onion = equiv(actual = x@onion / total), # , ideal = devrecipe$onion(x)
    whitePepper = equiv(actual = x@whitePepper / total, ideal = devrecipe$whitePepper(x)),
    blackPepper = equiv(actual = x@blackPepper / total), # , ideal = devrecipe$blackPepper(x)
    turmeric = equiv(actual = x@turmeric / total), # , ideal = devrecipe$turmeric(x)
    cinnamon = equiv(actual = x@cinnamon / total), # , ideal = devrecipe$cinnamon(x)
    paprika = equiv(actual = x@paprika / total), # , ideal = devrecipe$paprika(x)
    coriander = equiv(actual = x@coriander / total, ideal = devrecipe$coriander(x)),
    chiliMix = equiv(actual = x@chiliMix / total),
    curry = equiv(actual = x@curry / total),
    blackSesame = equiv(actual = x@blackSesame / total, ideal = devrecipe$blackSesame(x)),
    coconut = equiv(actual = x@coconut / total),
    cocoa = equiv(actual = sum(x@cocoa, x@cocoaDutch) / total, ideal = devrecipe$cocoa(x)),
    coffee = equiv(actual = x@coffee / total, ideal = devrecipe$coffee(x)),
    acai = equiv(actual = x@acai / total, ideal = devrecipe$acai(x))
  )
  
  if (sum(mix0_wheat_flour > 0) > 1L) {
    
    attr(ret, which = 'mixWheatFlour') <- mix0_wheat_flour
    
    attr(ret, which = 'mixBaker') <- new(
      Class = 'mixBaker',
      puree = equiv(actual = puree / mix_wheat_flour),
      water = equiv(actual = water / mix_wheat_flour, ideal = devrecipe$water2wheatflourmix(x)),
      cornmeal = equiv(actual = sum(x@cornmeal) / mix_wheat_flour, ideal = devrecipe$cornmeal2wheatflourmix(x)),
      addedStarch = equiv(actual = starch / mix_wheat_flour),
      fat = equiv(actual = fat / mix_wheat_flour, ideal = devrecipe$fat2wheatflourmix(x)),
      blackSesame = equiv(actual = x@blackSesame / mix_wheat_flour),
      eggYolk = equiv(actual = x@eggYolk / mix_wheat_flour),
      eggWhite = equiv(actual = x@eggWhite / mix_wheat_flour),
      Na2CO3 = equiv(actual = x@Na2CO3 / mix_wheat_flour),
      NaHCO3 = equiv(actual = x@NaHCO3 / mix_wheat_flour),
      bakingPowder = equiv(actual = x@bakingPowder / mix_wheat_flour, ideal = devrecipe$bakingPowder2wheatflourmix(x)),
      salt = equiv(actual = x@salt / mix_wheat_flour),
      #sugar = equiv(actual = sugar / mix_wheat_flour),
      #addedSugar = equiv(actual = addedSugar / mix_wheat_flour),
      yeast = equiv(actual = sum(x@yeast) / mix_wheat_flour, ideal = devrecipe$yeast2wheatflourmix(x)),
      matcha = equiv(actual = x@matcha / mix_wheat_flour),
      cocoa = equiv(actual = x@cocoa / mix_wheat_flour),
      acai = equiv(actual = x@acai / mix_wheat_flour),
      coffee = equiv(actual = x@coffee / mix_wheat_flour)
    )
    
  } else {
    
    attr(ret, which = 'baker') <- if (flour) new(
      Class = 'baker',
      puree = equiv(actual = puree / flour),
      water = equiv(actual = water / flour, ideal = devrecipe$water2flour(x), margin = 1.01),
      cornmeal = equiv(actual = sum(x@cornmeal) / flour),
      addedStarch = equiv(actual = starch / flour),
      fat = equiv(actual = fat / flour, ideal = devrecipe$fat2flour(x), margin = 1.05, ignore = .01),
      blackSesame = equiv(actual = x@blackSesame / flour, ideal = devrecipe$blackSesame2flour(x)),
      eggYolk = equiv(actual = x@eggYolk / flour, ideal = devrecipe$eggYolk2flour(x)),
      eggWhite = equiv(actual = x@eggWhite / flour),
      Na2CO3 = equiv(actual = x@Na2CO3 / flour, ideal = devrecipe$Na2CO3_2flour(x)),
      NaHCO3 = equiv(actual = x@NaHCO3 / flour),
      bakingPowder = equiv(actual = x@bakingPowder / flour, ideal = devrecipe$bakingPowder2flour(x)),
      salt = equiv(actual = x@salt / flour, ideal = devrecipe$salt2flour(x)),
      #sugar = equiv(actual = sugar / flour),
      #addedSugar = equiv(actual = addedSugar / flour),
      yeast = equiv(actual = sum(x@yeast) / flour, ideal = devrecipe$yeast2flour(x), margin = 1.1),
      matcha = equiv(actual = x@matcha / flour),
      cocoa = equiv(actual = x@cocoa / flour),
      acai = equiv(actual = x@acai / flour),
      coffee = equiv(actual = x@coffee / flour)
    ) #else new(Class = 'baker')
    
    attr(ret, which = 'pastryBaker') <- if (pastryFlour & !glutenFreeFlour & !coconut & !cornmeal) new(
      Class = 'pastryBaker',
      puree = equiv(actual = puree / pastryFlour),
      water = equiv(actual = water / pastryFlour, ideal = devrecipe$water2pastryflour(x), margin = 1.01),
      gelatin = equiv(actual = x@gelatin / pastryFlour),
      cornmeal = equiv(actual = sum(x@cornmeal) / pastryFlour),
      addedStarch = equiv(actual = starch / pastryFlour),
      fat = equiv(actual = fat / pastryFlour, ideal = devrecipe$fat2pastryflour(x), margin = 1.05, ignore = .01),
      blackSesame = equiv(actual = x@blackSesame / pastryFlour, ideal = devrecipe$blackSesame2pastryflour(x)),
      eggYolk = equiv(actual = x@eggYolk / pastryFlour, ideal = devrecipe$eggYolk2pastryflour(x)),
      eggWhite = equiv(actual = x@eggWhite / pastryFlour),
      Na2CO3 = equiv(actual = x@Na2CO3 / pastryFlour, ideal = devrecipe$Na2CO3_2pastryflour(x)),
      NaHCO3 = equiv(actual = x@NaHCO3 / pastryFlour),
      bakingPowder = equiv(actual = x@bakingPowder / pastryFlour, ideal = devrecipe$bakingPowder2pastryflour(x)),
      salt = equiv(actual = x@salt / pastryFlour, ideal = devrecipe$salt2pastryflour(x)),
      #sugar = equiv(actual = sugar / pastryFlour),
      #addedSugar = equiv(actual = addedSugar / pastryFlour),
      yeast = equiv(actual = sum(x@yeast) / pastryFlour, ideal = devrecipe$yeast2pastryflour(x), margin = 1.1),
      matcha = equiv(actual = x@matcha / pastryFlour, ideal = devrecipe$matcha2pastryflour(x)),
      beet = equiv(actual = x@beet / pastryFlour, ideal = devrecipe$beet2pastryflour(x)),
      cocoa = equiv(actual = x@cocoa / pastryFlour),
      acai = equiv(actual = x@acai / pastryFlour, ideal = devrecipe$acai2pastryflour(x)),
      coffee = equiv(actual = x@coffee / pastryFlour)
    ) #else new(Class = 'pastryBaker')
    
    attr(ret, which = 'breadBaker') <- if (breadFlour & !glutenFreeFlour & !coconut) new(
      Class = 'breadBaker',
      puree = equiv(actual = puree / breadFlour),
      water = equiv(actual = water / breadFlour, ideal = devrecipe$water2breadflour(x), margin = 1.01),
      gelatin = equiv(actual = x@gelatin / breadFlour),
      cornmeal = equiv(actual = sum(x@cornmeal) / breadFlour, ideal = devrecipe$cornmeal2breadflour(x)),
      addedStarch = equiv(actual = starch / breadFlour),
      fat = equiv(actual = fat / breadFlour, ideal = devrecipe$fat2breadflour(x), margin = 1.05),
      blackSesame = equiv(actual = x@blackSesame / breadFlour, ideal = devrecipe$blackSesame2breadflour(x)),
      #eggYolk = equiv(actual = x@eggYolk / breadFlour, ideal = devrecipe$eggYolk2breadflour(x)),
      eggYolk = equiv(actual = x@eggYolk / breadFlour, ideal = devrecipe$eggYolk2breadflour(x)),
      eggWhite = equiv(actual = x@eggWhite / breadFlour),
      Na2CO3 = equiv(actual = x@Na2CO3 / breadFlour, ideal = devrecipe$Na2CO3_2breadflour(x)),
      NaHCO3 = equiv(actual = x@NaHCO3 / breadFlour),
      bakingPowder = equiv(actual = x@bakingPowder / breadFlour, ideal = devrecipe$bakingPowder2breadflour(x)),
      salt = equiv(actual = x@salt / breadFlour, ideal = devrecipe$salt2breadflour(x)),
      #sugar = equiv(actual = sugar / breadFlour),
      #addedSugar = equiv(actual = addedSugar / breadFlour),
      yeast = equiv(actual = sum(x@yeast) / breadFlour, ideal = devrecipe$yeast2breadflour(x), margin = 1.1),
      matcha = equiv(actual = x@matcha / breadFlour, ideal = devrecipe$matcha2breadflour(x)),
      beet = equiv(actual = x@beet / breadFlour, ideal = devrecipe$beet2breadflour(x)),
      cocoa = equiv(actual = x@cocoa / breadFlour),
      acai = equiv(actual = x@acai / breadFlour),
      coffee = equiv(actual = x@coffee / breadFlour)
    ) #else new(Class = 'breadBaker')
    
  }
  
  attr(ret, which = 'glutenFreeBaker') <- if (glutenFreeFlour & !breadFlour & !pastryFlour & !flour) new(
    Class = 'glutenFreeBaker',
    puree = equiv(actual = puree / glutenFreeFlour),
    water = equiv(actual = water / glutenFreeFlour, ideal = devrecipe$water2glutenFreeFlour(x), margin = 1.01),
    gelatin = equiv(actual = x@gelatin / glutenFreeFlour),
    addedStarch = equiv(actual = starch / glutenFreeFlour),
    fat = equiv(actual = fat / glutenFreeFlour, ideal = devrecipe$fat2glutenFreeFlour(x), margin = 1.05, ignore = .01),
    blackSesame = equiv(actual = x@blackSesame / glutenFreeFlour, ideal = devrecipe$blackSesame2glutenFreeFlour(x)),
    eggYolk = equiv(actual = x@eggYolk / glutenFreeFlour, ideal = devrecipe$eggYolk2glutenFreeFlour(x)),
    eggWhite = equiv(actual = x@eggWhite / glutenFreeFlour),
    Na2CO3 = equiv(actual = x@Na2CO3 / glutenFreeFlour, ideal = devrecipe$Na2CO3_2glutenFreeFlour(x)),
    NaHCO3 = equiv(actual = x@NaHCO3 / glutenFreeFlour),
    bakingPowder = equiv(actual = x@bakingPowder / glutenFreeFlour, ideal = devrecipe$bakingPowder2glutenFreeFlour(x)),
    salt = equiv(actual = x@salt / glutenFreeFlour, ideal = devrecipe$salt2glutenFreeFlour(x)),
    #sugar = equiv(actual = sugar / glutenFreeFlour),
    #addedSugar = equiv(actual = addedSugar / glutenFreeFlour),
    yeast = equiv(actual = sum(x@yeast) / glutenFreeFlour, ideal = devrecipe$yeast2glutenFreeFlour(x), margin = 1.1),
    matcha = equiv(actual = x@matcha / glutenFreeFlour),
    cocoa = equiv(actual = x@cocoa / glutenFreeFlour),
    acai = equiv(actual = x@acai / glutenFreeFlour),
    coffee = equiv(actual = x@coffee / glutenFreeFlour)
  ) #else new(Class = 'glutenFreeBaker')
  
  attr(ret, which = 'riceBaker') <- if (riceFlour) new(
    Class = 'riceBaker',
    water = equiv(actual = water / riceFlour, ideal = devrecipe$water2riceflour(x)),
    # rice = equiv(actual = x@riceFlour / riceFlour, ideal = devrecipe$rice2riceflour(x)),
    glutinousRice = equiv(actual = x@glutinousRiceFlour / riceFlour, ideal = devrecipe$glutinousRice2riceflour(x)),
    gelatin = equiv(actual = x@gelatin / riceFlour),
    fat = equiv(actual = fat / riceFlour, ideal = devrecipe$fat2riceflour(x), ignore = .01),
    blackSesame = equiv(actual = x@blackSesame / riceFlour),
    #sugar = equiv(actual = sugar / riceFlour),
    addedStarch = equiv(actual = starch / riceFlour, ideal = devrecipe$starch2riceflour(x)),
    matcha = equiv(actual = x@matcha / riceFlour, ideal = devrecipe$matcha2riceflour(x)),
    cocoa = equiv(actual = x@cocoa / riceFlour),
    acai = equiv(actual = x@acai / riceFlour),
    coffee = equiv(actual = x@coffee / riceFlour)
  ) #else new(Class = 'riceBaker')
  
  attr(ret, which = 'cocoaDutchMix') <- if (length(x@cocoaDutch)) new(
    Class = 'cocoaDutchMix',
    alcohol = equiv(actual = alcohol / sum(x@cocoaDutch), ideal = devrecipe$alcohol2cocoaDutch(x)),
    drymilk = equiv(actual = x@drymilk / sum(x@cocoaDutch), ideal = devrecipe$drymilk2cocoaDutch(x)),
    sugar = if (TRUE | (sugar > addedSugar)) equiv(actual = sugar / sum(x@cocoaDutch)) else new(Class = 'equiv'),
    addedSugar = equiv(actual = addedSugar / sum(x@cocoaDutch), ideal = devrecipe$addedSugar2cocoaDutch(x)),
    coffee = equiv(actual = x@coffee / sum(x@cocoaDutch), ideal = devrecipe$coffee2cocoaDutch(x))
  )
  
  attr(ret, which = 'info') <- info
  
  #review <- attr(info, which = 'review')
  #attr(ret, which = 'review') <- review[names(review) == class(x)]
  
  #machine <- attr(info, which = 'machine')
  #attr(ret, which = 'machine') <- unlist(lapply(machine, FUN = function(ifun) ifun(class(x))), use.names = FALSE)
  #attr(ret, which = 'machine') <- machine[names(machine) == class(x)]
  
  return(ret)
}



  







#' @title Show \linkS4class{recipe} Object
#' 
#' @description Print ingredients and nutrition information of a recipe
#' 
#' @param object \linkS4class{recipe} object
#'
#' @export
setMethod(f = show, signature = signature(object = 'recipe'), definition = function(object) {
  
  object <- recipe(object)

  y <- nutrition.recipe(x = object)
  #show(y)
  cat(y@name, '\n\n')
  
  if (length(object@date)) {
    cat(format.Date(object@date, format = '%A, %B %e, %Y'), '\n\n')
  }
    
  nm_ <- attr(attr(y, which = 'info', exact = TRUE), which = 'name', exact = TRUE)
  nm_cli_ <- attr(attr(y, which = 'info', exact = TRUE), which = 'name_cli', exact = TRUE)
  
  meat_seafood <- c(
    object@shrimp,
    object@seafood,
    object@pork, object@beef, object@lamb, object@chicken, # meat
    NULL)
  cat(sprintf(fmt = '%s %.0f grams\n', nm_[names(meat_seafood)], meat_seafood), sep = '')
  
  flour <- c(object@flour, object@pastryFlour, object@breadFlour, object@wholeWheatFlour,
             object@glutenFreeFlour, 
             object@wheatGluten, 
             object@riceFlour, object@glutinousRiceFlour,
             object@cornmeal,
             object@coconut)
  cat(sprintf(fmt = '%s %.0f grams %s\n', nm_[names(flour)], flour, autoVolume(flour)), sep = '') # one or more flour
  
  cat(sprintf(fmt = '%s %.0f grams %s\n', nm_[names(object@starch)], object@starch, autoVolume(object@starch)), sep = '') 
  
  # commercial puree with volume info
  puree_vol <- c(object@pumpkin, object@pumpkinPieMix, object@pineapple, object@pear, object@mandarine, object@mango, object@tomato, object@yellowCorn, object@applesauce)
  cat(sprintf(fmt = '%s %.0f grams %s\n', nm_[names(puree_vol)], puree_vol, autoVolume(puree_vol)), sep = '')
  
  # puree (from Nutribullet or Joyoung soymilk maker) without volume info
  puree_no_vol <- c(object@puree, object@darkCherry, object@strawberry)
  cat(sprintf(fmt = '%s %.0f grams\n', nm_[names(puree_no_vol)], puree_no_vol), sep = '')
  
  fruit <- c(object@fruit, object@durian)
  cat(sprintf(fmt = '%s %.0f grams\n', nm_[names(fruit)], fruit), sep = '') # one or more fruit_pc
  cat(sprintf(
    fmt = '%s %.0f grams (%.1f pcs)\n', 
    nm_[names(object@fruit_pc)], 
    object@fruit_pc,
    object@fruit_pc / vapply(names(object@fruit_pc), FUN = function(i) eval(call(i))@pieceWeight, FUN.VALUE = NA_real_)
    #getPc(object, name = 'fruit') # dont know how to use this yet
  ), sep = '') # one or more fruit_pc
  
  cat(sprintf(fmt = '%s %.0f grams\n', nm_[names(object@flavor)], object@flavor), sep = '') # one or more flavor
  
  mapply(FUN = function(glue, gram) {
    glue$str <- sprintf(fmt = '%s %.0f grams', glue$str, gram) # no need to linebreak with ?cli:::cli__message
    cli__message(type = 'text', args = list(text = glue))
    return(invisible())
  }, glue = nm_cli_[names(object@homemade)], gram = object@homemade)
  
  grain_bean_nut <- c(
    object@grain,
    object@chickpea, object@adzukibean, object@mungbean, object@redKidneyBean,
    object@cashew, object@nut
  )
  grain_bean_nut_vol_ <- c(
    object@soybean
  )
  cat(sprintf(fmt = '%s %.0f grams\n', nm_[names(grain_bean_nut)], grain_bean_nut), sep = '') # one or more grain
  cat(sprintf(fmt = '%s %.0f grams %s\n', nm_[names(grain_bean_nut_vol_)], grain_bean_nut_vol_, autoVolume(grain_bean_nut_vol_)), sep = '') # one or more grain
  
  fat_vol_ <- c(
    object@fat,
    object@lard, object@tallow
  )
  cat(sprintf(fmt = '%s %.0f grams %s\n', nm_[names(fat_vol_)], fat_vol_, autoVolume(fat_vol_)), sep = '')
  
  other <- c(
    object@vegetable,
    #object@cheese, 
    object@condensedMilk, object@creamCheese # dairy without volume info
  )
  cat(sprintf(fmt = '%s %.0f grams\n', nm_[names(other)], other), sep = '')
  
  dairy_vol_ <- c(# dairy with volume info
    object@cheese, 
    object@mascarpone, object@cottageCheese, object@yogurt, object@yogurtGreek, object@kefir, object@filmjolk,
    object@butter, object@ghee, object@evaporatedMilk, object@drymilk, object@milk, object@buttermilk, object@heavyCream, object@lightCream, object@sourCream
  )
  cat(sprintf(fmt = '%s %.1f grams %s\n', nm_[names(dairy_vol_)], dairy_vol_, autoVolume(dairy_vol_)), sep = '')
  
  cat(sprintf(fmt = '%s %.1f grams %s\n', nm_[names(object@eggYolk)], object@eggYolk, getPc(object, 'eggYolk')))
  cat(sprintf(fmt = '%s %.1f grams %s\n', nm_[names(object@eggWhite)], object@eggWhite, getPc(object, 'eggWhite')))
  
  cat(sprintf(fmt = '%s %.1f grams\n', nm_[names(object@tealoose)], object@tealoose))
  cat(sprintf(fmt = '%s %.1f grams \033[1;95m%.2gbag\033[0m\n', nm_[names(object@teabag)], getTealoose(object@teabag), object@teabag), sep = '')
  
  allSugar <- c(
    object@sugar, object@brownSugar,
    object@drinkmix
  )
  cat(sprintf(fmt = '%s %.1f grams %s\n', nm_[names(allSugar)], allSugar, autoVolume(allSugar)), sep = '')
  
  # ingredients without volumn info
  no_vol_ <- c(
    object@blackSesame
  )
  cat(sprintf(fmt = '%s %.0f grams\n', nm_[names(no_vol_)], no_vol_), sep = '')
  
  # ingredients with volumn info
  has_vol_ <- c(
    object@ginger, object@garlic, object@onion, object@coriander, object@cumin, object@cilantro, object@clove, object@cinnamon, object@whitePepper, object@blackPepper, object@turmeric, object@paprika,
    object@spiceItalian, object@spice5, object@pumpkinSpice,
    object@chiliMix,
    object@spice, object@curry,
    object@matcha, object@coffee, object@cocoa, object@cocoaDutch, object@beet, object@acai, object@creamTartar, object@vanilla,
    object@salt, object@msg, object@NaHCO3, object@Na2CO3, object@bakingPowder,
    object@yeast,
    object@oil, object@sesameOil, object@greenPeppercornOil,
    object@sauce, object@liqueur
  )
  cat(sprintf(fmt = '%s %.1f grams %s\n', nm_[names(has_vol_)], has_vol_, autoVolume(has_vol_)), sep = '')
  
  riceWhole <- c(object@blackRice, object@brownRice)
  cat(sprintf(fmt = '%s %.0f grams\n', nm_[names(riceWhole)], riceWhole))
  
  cat(sprintf(fmt = '%s %.0f grams %s\n', nm_[names(object@syrup)], object@syrup, autoVolume(object@syrup)), sep = '') # one or more syrup
  
  cat(sprintf(fmt = '%s %.1f grams %s\n', nm_[names(object@gelatin)], object@gelatin, getGelatinLeaf(object@gelatin)))
  
  if (!length(object@water_extra)) {
    cat(sprintf(fmt = '\u5e38\u6e29\u6c34 Water %.0f grams %s\n', object@water, autoVolume(object@water)))
  } else {
    water <- sum_.(object@water, object@water_extra)
    cat(sprintf(fmt = '\u5e38\u6e29\u6c34 Water %.0f=%.0f%s+%.0f%s grams %s\n', water, object@water, '\033[91m', object@water_extra, '\033[0m', autoVolume(water)))
  }
  
  cat(sprintf(fmt = '\u6e29\u6c3440\u00b0C Warm Water, 104\u00b0F %.0f grams %s\n', object@water40, autoVolume(object@water40)))
  cat(sprintf(fmt = '\u70ed\u6c3470\u00b0C Hot Water, 160\u00b0F %.0f grams %s\n', object@water70, autoVolume(object@water70)))
  cat(sprintf(fmt = '\u70ed\u6c3480\u00b0C Hot Water, 175\u00b0F %.0f grams %s\n', object@water80, autoVolume(object@water80)))
  cat(sprintf(fmt = '\u5f00\u6c34 Boiling Water %.0f grams %s\n', object@boilingWater, autoVolume(object@boilingWater)))
  cat(sprintf(fmt = '\u51b0\u6c34 Iced Water %.0f grams %s\n', object@iceWater, autoVolume(object@iceWater)))
  cat(sprintf(fmt = '\u6c14\u6ce1\u6c34 Carbonated Water %.0f grams %s\n', object@carbonatedWater, autoVolume(object@carbonatedWater)))
  cat(sprintf(fmt = '\u51b0\u6c99 Shaved Ice\U1f367 %.0f grams %s\n', object@shavedIce, autoVolume(object@shavedIce)))
  cat(sprintf(fmt = '\u51b0\u5757 Ice\U1f9ca Cubes %.0f grams\n', object@ice))
  
  cat('\n')
  
  tool_slot <- names(which(getSlots('recipe') == 'tool'))
  waterLost <- sum(object@waterLost, unlist(lapply(tool_slot, FUN = function(i) slot(object, name = i)@waterLost), use.names = FALSE))
  if (waterLost == 0) waterLost <- numeric()

  if (length(waterLost) || length(object@fatLost) || length(object@sugarLost)) {
    cat(sprintf(fmt = 'Water evaporated in cooking: %.0f grams\n', waterLost))
    cat(sprintf(fmt = 'Fat drained in cooking: %.0f grams\n', object@fatLost))
    cat(sprintf(fmt = 'Sugar consumed in fermentation: %.1f grams\n', object@sugarLost))
    cat('\n')
  }
  
  if (length(y@calorie)) {
    cat(sprintf(fmt = 'Total: %.4g grams\n\nUS\U1f4b5 %.2f\nCalories\U1f525 %.0f\n\n', y@servingGram, y@usd, y@calorie))
  } else cat(sprintf(fmt = 'Total: %.4g grams\n\nUS\U1f4b5 %.2f\n\n', y@servingGram, y@usd))
  
  #attr_dx <- attributes(y)[c('mixWheatFlour', 'riceBaker', 'baker', 'pastryBaker', 'breadBaker', 'mixBaker', 'glutenFreeBaker', 'cocoaDutchMix')]
  # need to write a [show] method for \linkS4class{mixWheatFlour}
  attr_dx <- attributes(y)[c('riceBaker', 'baker', 'pastryBaker', 'breadBaker', 'mixBaker', 'glutenFreeBaker', 'cocoaDutchMix')]
  has_attr_dx <- (lengths(attr_dx, use.names = FALSE) > 0L)
  lapply(attr_dx[has_attr_dx], FUN = show)
  #if (!any(has_attr_dx)) {
    show(attr(y, which = 'cookedTexture', exact = TRUE))
  #} else lapply(attr_dx[has_attr_dx], FUN = show)
  #show(attr(y, which = 'uncooked', exact = TRUE))
  show(attr(y, which = 'cookedFlavor', exact = TRUE))
  
  if (length(object@portion)) {
    portion_nm <- paste0('\033[1;35m', names(object@portion), '\033[0m')
    cat(sprintf(fmt = '\u058d %.1f \u00d7 %.0fg \u058e %s', y@servingGram/object@portion, object@portion, portion_nm), sep = '\n')
    cat('\n')
  } # else NULL
  
  if (length(object@instruction)) {
    instr1 <- gsub(pattern = '\n', replacement = ' ', object@instruction)
    instr2 <- gsub(pattern = '^ *|(?<= ) | *$', replacement = '', x = instr1, perl = TRUE)
    cat('Instructions:\n')
    cat(sprintf(fmt = '\u21ac %s\n', instr2), sep = '')
    cat('\n')
  }
  
  show(object@waterBath)
  
  show(object@KSM8990)
  show(object@KSM3316X)
  show(object@KSMICM)
  show(object@CuisinartICE70)
  show(object@JoyoungDJ13U)
  show(object@JoyoungCJA9U)
  show(object@RobamCT763)
  show(object@InstantPot)
  
  if (length(object@machine)) {
    cat('Machine:\n')
    cat(sprintf(
      fmt = '\n\u2726%s\u2726%s\n', 
      names(object@machine), 
      vapply(object@machine, FUN = function(i) paste0('\n   ', paste(i, collapse = '\n   ')), FUN.VALUE = '')
    ), sep = '')
    cat('\n')
  }
  
  if (length(object@note)) {
    #cat('Note:\n')
    cat(sprintf(fmt = '\u2756 %s', object@note), sep = '\n')
    cat('\n')
  }
  
  #if (length(review <- attr(y, which = 'review', exact = TRUE))) {
  #  cat('Reviews on Ingredients:\n')
  #  cat(sprintf(fmt = '\u26a0 %s', review), sep = '\n')
  #  cat('\n')
  #}
  
  #if (length(machine <- attr(y, which = 'machine', exact = TRUE))) {
  #  cat('Machine on Ingredients:\n')
  #  cat(sprintf(fmt = '\u2726 %s', machine), sep = '\n')
  #  cat('\n')
  #}
  
  if (length(object@review)) {
    cat(sprintf(fmt = '\U1f4dd %s', object@review), sep = '\n')
    cat('\n')
  }
  
  if (length(object@pros)) {
    cat(sprintf(fmt = '\U1f389 %s', object@pros), sep = '\n')
    cat('\n')
  }
  
  if (length(object@cons)) {
    cat(sprintf(fmt = '\U1f940 %s', object@cons), sep = '\n')
    cat('\n')
  }
  
  if (length(object@url) || length(object@youtube) || length(object@doi)) {
    
    cat('Reference:\n')
    if (length(object@url)) cat(styleURL(url_ = object@url, text_ = names(object@url)), sep = '\n')
    if (length(object@youtube)) cat(styleURL(url_ = sprintf(fmt = 'https://youtu.be/%s', object@youtube), text_ = names(object@youtube)), sep = '\n')
    if (length(object@doi)) cat(styleURL(url_ = sprintf(fmt = 'https://doi.org/%s', object@doi), text_ = names(object@doi)), sep = '\n')
    cat('\n')
    
  }

})







#' @title Multiplication and Ratio of \linkS4class{recipe} Object
#' 
#' @description ..
#' 
#' @param e1 \linkS4class{recipe} object
#' 
#' @param e2 \link[base]{numeric} scalar
#' 
#' @name S4generic_recipe
#' @aliases *,recipe,numeric-method
#' @export
setMethod(f = '*', signature = signature(e1 = 'recipe', e2 = 'numeric'), definition = function(e1, e2) {
  if (length(e2) != 1L || anyNA(e2) || (e2 <= 0)) stop('illegal `e2`')
  slt <- setdiff(
    x = names(which(getSlots('recipe') == 'numeric')), 
    y = c('portion')
  )
  for (i in slt) {
    slot(e1, name = i) <- slot(e1, name = i) * e2
  }
  return(e1)
})


#' @rdname S4generic_recipe
#' @aliases /,recipe,numeric-method
#' @export
setMethod(f = '/', signature = signature(e1 = 'recipe', e2 = 'numeric'), definition = function(e1, e2) e1 * (1/e2))




#' @title Arithmetic of Two \linkS4class{recipe} Objects
#' 
#' @description ..
#' 
#' @param e1,e2 \linkS4class{recipe} objects
#' 
#' @name S4generic_2recipe
#' @aliases +,recipe,recipe-method
#' @export
setMethod(f = '+', signature = signature(e1 = 'recipe', e2 = 'recipe'), definition = function(e1, e2) {
  
  e1 <- recipe(e1)
  e2 <- recipe(e2)
  
  slots_dbl <- setdiff(names(which(getSlots('recipe') == 'numeric')), c('portion'))
  names(slots_dbl) <- slots_dbl
  ret0 <- lapply(slots_dbl, FUN = function(i) sum_.(slot(e1, name = i), slot(e2, name = i)))
  
  ret1 <- ret0[lengths(ret0, use.names = FALSE) > 0L]
  ret <- do.call(what = new, args = c(list(
    Class = 'recipe',
    alias = paste(e1@alias, e2@alias, sep = '\n')
  ), ret1))
  return(ret)
  
})



#' @title Ratio of Two \linkS4class{recipe} Objects
#' 
#' @description ..
#' 
#' @param e1,e2 \linkS4class{recipe} objects
#' 
#' @examples
#' hotcc = cocoaMix()
#' hotdrink(hotcc) * 2 / hotcc
#' 
#' @export
setMethod(f = '/', signature = signature(e1 = 'recipe', e2 = 'recipe'), definition = function(e1, e2) {
  
  e1 <- recipe(e1)
  e2 <- recipe(e2)
  
  slots_dbl <- setdiff(names(which(getSlots('recipe') == 'numeric')), c('portion'))
  e1_ <- attributes(e1)[slots_dbl]
  e1_ <- e1_[lengths(e1_, use.names = FALSE) > 0L]
  if (!length(e1_)) return(NA_real_)
  e2_ <- attributes(e2)[slots_dbl]
  e2_ <- e2_[lengths(e2_, use.names = FALSE) > 0L]
  if (!length(e2_)) return(NA_real_)
  
  #e1_ <- attributes(unclass(e1))
  #e1_ <- e1_[lengths(e1_, use.names = FALSE) > 0L]
  #e2_ <- attributes(unclass(e2))
  #e2_ <- e2_[lengths(e2_, use.names = FALSE) > 0L]
  
  #slots_rm <- names(which(getSlots('recipe') != 'numeric'))
  #e1_ <- e1_[!(names(e1_) %in% slots_rm)]
  #e2_ <- e2_[!(names(e2_) %in% slots_rm)]
  
  nm <- names(e2_)
  if (any(!(nm %in% names(e1_)))) return(NA_real_) # `e2` contains slots that `e1` does not contain
  e1_ <- e1_[nm]
  
  rt <- unlist(.mapply(FUN = ratio_ingredients, dots = list(e1 = e1_, e2 = e2_), MoreArgs = NULL), use.names = FALSE)
  if (max(rt, na.rm = TRUE) - min(rt, na.rm = TRUE) > .Machine$double.eps) return(NA_real_)
  
  ret <- rt[1L]
  attr(ret, which = 'e1_other') <- e1 - e2 * ret
  attr(ret, which = 'e2_total') <- nutrition.recipe(e2)@servingGram * ret
  return(ret)
})




#' @title Difference of Two \linkS4class{recipe} Objects
#' 
#' @description ..
#' 
#' @param e1,e2 \linkS4class{recipe} objects
#' 
#' @export
setMethod(f = '-', signature = signature(e1 = 'recipe', e2 = 'recipe'), definition = function(e1, e2) {
  e1 <- recipe(e1)
  e2 <- recipe(e2)
  slots_dbl <- setdiff(names(which(getSlots('recipe') == 'numeric')), c('portion'))
  names(slots_dbl) <- slots_dbl
  ret0 <- lapply(slots_dbl, FUN = function(i) { # (i = slots_dbl[[1L]])
    i1 <- slot(e1, name = i)
    i2 <- slot(e2, name = i)
    if (!length(i2)) return(i1)
    if (!length(i1) && length(i2)) stop('`e1` does not have `i`, but `e2` does')
    diff_ingredients(i1, i2)
  })
  ret <- ret0[lengths(ret0, use.names = FALSE) > 0L]
  do.call(new, args = c(list(
    Class = 'recipe',
    alias = '\u8865\u5145\u6750\u6599'
  ), ret))
})

