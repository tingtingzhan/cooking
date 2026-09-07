

#' @title Raw Ingredients and Recipe
#' 
#' @description 
#' \linkS4class{raw} allows negative ingredients.
#' 
#' @slot homemade \link[base]{numeric} vector
#' @slot flavor,flavor_tsp,flavor_Tbsp,flavor_cup \link[base]{numeric} vector, weight of one or more flavoring (in grams)
#' 
#' @slot puree \link[base]{numeric} vector, weight of one or more puree (in grams)
#' @slot fruit \link[base]{numeric} vector, weight of fresh fruit, diced (in grams)
#' @slot fruit_pc \link[base]{numeric} vector, weight of one or more fresh fruit pulp or juice (in grams)
#' 
#' @slot applesauce \link[base]{numeric} scalar, weight of Motts no sugar added applesauce (in grams)
#' @slot banana \link[base]{numeric} scalar
#' @slot darkCherry \link[base]{numeric} scalar, weight of Happy Village dark cherry puree (in grams)
#' @slot durian \link[base]{numeric} scalar, weight of Lucky Taro durian pulp (in grams), seed removed
#' @slot mandarine \link[base]{numeric} scalar, weight of blended Del Monte canned mandarine (in grams)
#' @slot mango \link[base]{numeric} scalar, weight of blended Pickd frozen mango (in grams)
#' @slot pear \link[base]{numeric} scalar, weight of blended Del Monte canned pear (in grams)
#' @slot pineapple \link[base]{numeric} scalar, weight of blended Dole canned pineapple (in grams)
#' @slot pumpkin,pumpkin_tsp,pumpkin_Tbsp,pumpkin_cup \link[base]{numeric} scalar, weight (in grams) and volume of Libby's pumpkin puree (in grams)
#' @slot pumpkinPieMix \link[base]{numeric} scalar, weight of Libby's pumpkin pie mix (in grams)
#' @slot strawberry \link[base]{numeric} scalar, weight of Kirkland frozen strawberry (in grams)
#' @slot tomato \link[base]{numeric} scalar, weight of Wegmans Organic tomato puree (in grams)
#' @slot yellowCorn \link[base]{numeric} scalar, weight of Kirkland frozen yellow corn (in grams)
#' 
#' @slot butter,butter_tsp,butter_Tbsp,butter_cup,butter_brick \link[base]{numeric} scalar, weight of Kerrygold unsalted butter (in grams)
#' @slot ghee \link[base]{numeric} scalar, weight of Wegmans ghee butter (in grams)
#' @slot cheese \link[base]{numeric} \link[base]{vector} or scalar
#' @slot mascarpone \link[base]{numeric} scalar, weight of BelGioioso mascarpone cheese (in grams)
#' @slot cottageCheese \link[base]{numeric} scalar, weight of Daisy cottage cheese (in grams)
#' @slot yogurtGreek \link[base]{numeric} scalar, weight of non-fat Greek yogurt (in grams)
#' @slot creamCheese,creamCheese_brick \link[base]{numeric} scalar, weight of Nancy's full-fat cream cheese
#' @slot sourCream,sourCream_tsp,sourCream_Tbsp,sourCream_cup \link[base]{numeric} scalar, weight of Daisy regular (i.e., full-fat) sour cream (in grams)
#' @slot heavyCream,heavyCream_tsp,heavyCream_Tbsp,heavyCream_cup \link[base]{numeric} scalar, weight (in grams) and volume of Wegmans heavy cream or heavy whipping cream (in grams)
#' @slot lightCream,lightCream_tsp,lightCream_Tbsp,lightCream_cup \link[base]{numeric} scalar, weight of Lucerne table cream (or light cream) (in grams)
#' @slot yogurt,yogurt_tsp,yogurt_Tbsp,yogurt_cup \link[base]{numeric} scalar, weight of yogurt (in grams)
#' @slot kefir \link[base]{numeric} scalar
#' @slot filmjolk \link[base]{numeric} scalar
#' @slot drymilk,drymilk_tsp,drymilk_Tbsp,drymilk_cup  \link[base]{numeric} scalars, weight (in grams) and volume of Nestle Carnation fat-free dry milk, i.e., milk powder
#' @slot milk,milk_tsp,milk_Tbsp,milk_cup \link[base]{numeric} scalar, weight (in grams) and volume of Wegmans Organic vitamin D whole milk (in grams)
#' @slot buttermilk,buttermilk_tsp,buttermilk_Tbsp,buttermilk_cup \link[base]{numeric} scalar, weight (in grams) and volume of Upstate Farms whole buttermilk (in grams)
#' @slot evaporatedMilk \link[base]{numeric} scalar, weight of Nestle Carnation full-fat \strong{unsweetened} evaporated milk (in grams)
#' @slot condensedMilk \link[base]{numeric} scalar, weight of Nestle Carnation full-fat \strong{sweetened} condensed milk (in grams)
#' 
#' @slot sesameOil,sesameOil_tsp,sesameOil_Tbsp,sesameOil_cup \link[base]{numeric} scalar, weight (in grams) and volume of sesame oil
#' @slot rattanPepperOil,rattanPepperOil_tsp,rattanPepperOil_Tbsp,rattanPepperOil_cup \link[base]{numeric} scalar, weight (in grams) and volume of Sichuan rattan peppercorn oil
#' @slot oil,oil_tsp,oil_Tbsp,oil_cup \link[base]{numeric} scalar, weight (in grams) and volume of vegetable oil
#' @slot fat,fat_tsp,fat_Tbsp,fat_cup \link[base]{numeric} scalar, weight (in grams) and volume of solid fat
#' @slot lard,lard_tsp,lard_Tbsp,lard_cup \link[base]{numeric} scalar, weight (in grams) and volume of Epic pork lard
#' @slot tallow,tallow_tsp,tallow_Tbsp,tallow_cup \link[base]{numeric} scalar, weight (in grams) and volume of Epic beef tallow
#' 
#' @slot egg_pc,eggYolk_pc,eggWhite_pc \link[base]{numeric} scalars, numbers of large egg (52 grams each), egg yolks (17.3 grams each) and whites (34.7 grams each)
#' @slot eggYolk,eggWhite \link[base]{numeric} scalars, weight of egg yolks and whites (in grams)
#' 
#' @slot teabag \link[base]{numeric} scalars, number of tea bags
#' @slot tea \link[base]{numeric} scalars, weight of loose tea in grams
#' 
#' @slot flour,flour_tsp,flour_Tbsp,flour_cup \link[base]{numeric} scalar, weight of King Arthur all purpose flour (in grams)
#' @slot pastryFlour \link[base]{numeric} scalar, weight of Wegmans pastry flour (in grams)
#' @slot breadFlour \link[base]{numeric} scalar, weight of King Arthur bread flour (in grams)
#' @slot wholeWheatFlour \link[base]{numeric} scalar, weight of Wegmans white whole wheat flour (in grams)
#' @slot glutenFreeFlour \link[base]{numeric} scalar, weight of gluten free measure for measure flour (in grams)
#' @slot wheatGluten \link[base]{numeric} scalar, weight of wheat gluten (in grams)
#' @slot cornmeal,cornmeal_tsp,cornmeal_Tbsp,cornmeal_cup \link[base]{numeric} scalar, weight of cornmeal (in grams)
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
#' @slot salt,salt_tsp,salt_Tbsp,salt_cup \link[base]{numeric} scalar, weight (in grams) and volume of salt
#' @slot msg,msg_tsp,msg_Tbsp,msg_cup \link[base]{numeric} scalar, weight (in grams) and volume of monosodium glutamate (MSG)
#' @slot vanilla,vanilla_tsp,vanilla_Tbsp,vanilla_cup \link[base]{numeric} scalar, weight (in grams) and volume of vanilla extract
#' 
#' @slot blackSesame \link[base]{numeric} scalar, weight (in grams) of Greenmax powdered black sesame seed
#' 
#' @slot cocoa,cocoa_tsp,cocoa_Tbsp,cocoa_cup \link[base]{numeric} scalar, weight (in grams) and volume of Dutch-processed cocoa powder
#' @slot matcha,matcha_tsp,matcha_Tbsp,matcha_cup \link[base]{numeric} scalar, weight (in grams) and volume of culinary matcha powder 
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
#' @slot coffee,coffee_tsp,coffee_Tbsp,coffee_cup \link[base]{numeric} scalar, weight (in grams) and volume of `superior = 'NescafeGold_blonde'`
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
#' @slot water,water_tsp,water_Tbsp,water_cup \link[base]{numeric} scalar, weight of water (in grams)
#' @slot water_extra \link[base]{numeric} scalar, weight of extra water (in grams) to hydrate powders in a dough
#' @slot water40 \link[base]{numeric} scalar, weight of warm (100F–110F, 37.8C-43.3C) water (in grams) 
#' @slot water70 \link[base]{numeric} scalar, weight of hot (70C-75C) water (in grams) 
#' @slot water80,water80_tsp,water80_Tbsp,water80_cup \link[base]{numeric} scalar, weight of hot (80C, 175F) water (in grams) 
#' @slot water90 \link[base]{numeric} scalar, weight of hot (90C, 195F) water (in grams) 
#' @slot water95 \link[base]{numeric} scalar, weight of hot (95C, 203F) water (in grams) 
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
#' @references
#' \url{https://dessertisans.com/insight/how-to-convert-gelatin/}
#' 
#' @name raw_recipe
#' @aliases raw.-class
#' @export
setClass(Class = 'raw.', slots = c(
  # dQuote('raw') has a sealed class definition and cannot be redefined
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
  
  rattanPepperOil = 'numeric',
  rattanPepperOil_tsp = 'numeric', rattanPepperOil_Tbsp = 'numeric', rattanPepperOil_cup = 'numeric',
  
  fat = 'numeric', fat_tsp = 'numeric', fat_Tbsp = 'numeric', fat_cup = 'numeric',
  lard = 'numeric', lard_tsp = 'numeric', lard_Tbsp = 'numeric', lard_cup = 'numeric',
  tallow = 'numeric', tallow_tsp = 'numeric', tallow_Tbsp = 'numeric', tallow_cup = 'numeric',
  
  eggYolk = 'numeric', eggWhite = 'numeric',   
  egg_pc = 'numeric', eggYolk_pc = 'numeric', eggWhite_pc = 'numeric',
  
  teabag = 'numeric', tea = 'numeric',
  
  # puree
  applesauce = 'numeric',
  banana = 'numeric',
  darkCherry = 'numeric',
  durian = 'numeric',
  mandarine = 'numeric',
  mango = 'numeric',
  pear = 'numeric',
  pineapple = 'numeric',
  pumpkin = 'numeric', pumpkin_tsp = 'numeric', pumpkin_Tbsp = 'numeric', pumpkin_cup = 'numeric',
  pumpkinPieMix = 'numeric',
  strawberry = 'numeric',
  tomato = 'numeric',
  yellowCorn = 'numeric',
  
  # all dairy product
  butter = 'numeric', butter_tsp = 'numeric', butter_Tbsp = 'numeric', butter_cup = 'numeric', butter_brick = 'numeric',
  ghee = 'numeric',
  cheese = 'numeric',
  mascarpone = 'numeric',
  cottageCheese = 'numeric',
  yogurtGreek = 'numeric',
  yogurt = 'numeric', yogurt_tsp = 'numeric', yogurt_Tbsp = 'numeric', yogurt_cup = 'numeric',
  kefir = 'numeric',
  filmjolk = 'numeric',
  creamCheese = 'numeric', creamCheese_brick = 'numeric',
  sourCream = 'numeric', sourCream_tsp = 'numeric', sourCream_Tbsp = 'numeric', sourCream_cup = 'numeric',
  heavyCream = 'numeric', heavyCream_tsp = 'numeric', heavyCream_Tbsp = 'numeric', heavyCream_cup = 'numeric',
  lightCream = 'numeric', lightCream_tsp = 'numeric', lightCream_Tbsp = 'numeric', lightCream_cup = 'numeric',
  drymilk = 'numeric', drymilk_tsp = 'numeric', drymilk_Tbsp = 'numeric', drymilk_cup = 'numeric', 
  milk = 'numeric', milk_tsp = 'numeric', milk_Tbsp = 'numeric', milk_cup = 'numeric', 
  buttermilk = 'numeric', buttermilk_tsp = 'numeric', buttermilk_Tbsp = 'numeric', buttermilk_cup = 'numeric', 
  evaporatedMilk = 'numeric',
  condensedMilk = 'numeric',
  
  yeast = 'numeric', yeast_tsp = 'numeric', yeast_Tbsp = 'numeric', yeast_cup = 'numeric',
  
  sugar = 'numeric', sugar_tsp = 'numeric', sugar_Tbsp = 'numeric', sugar_cup = 'numeric',
  brownSugar = 'numeric', brownSugar_tsp = 'numeric', brownSugar_Tbsp = 'numeric', brownSugar_cup = 'numeric',
  syrup = 'numeric', syrup_tsp = 'numeric', syrup_Tbsp = 'numeric', syrup_cup = 'numeric',
  salt = 'numeric', salt_tsp = 'numeric', salt_Tbsp = 'numeric', salt_cup = 'numeric',
  msg = 'numeric', msg_tsp = 'numeric', msg_Tbsp = 'numeric', msg_cup = 'numeric',
  NaHCO3 = 'numeric', NaHCO3_tsp = 'numeric', NaHCO3_Tbsp = 'numeric', NaHCO3_cup = 'numeric',
  Na2CO3 = 'numeric', Na2CO3_tsp = 'numeric', Na2CO3_Tbsp = 'numeric', Na2CO3_cup = 'numeric',
  bakingPowder = 'numeric', bakingPowder_tsp = 'numeric', bakingPowder_Tbsp = 'numeric', bakingPowder_cup = 'numeric',
  
  pastryFlour = 'numeric',
  flour = 'numeric', flour_tsp = 'numeric', flour_Tbsp = 'numeric', flour_cup = 'numeric',
  breadFlour = 'numeric',
  wholeWheatFlour = 'numeric',
  glutenFreeFlour = 'numeric',
  wheatGluten = 'numeric',
  cornmeal = 'numeric', cornmeal_tsp = 'numeric', cornmeal_Tbsp = 'numeric', cornmeal_cup = 'numeric',
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
  
  water = 'numeric', water_tsp = 'numeric', water_Tbsp = 'numeric', water_cup = 'numeric',
  water_extra = 'numeric',
  iceWater = 'numeric',
  carbonatedWater = 'numeric',
  shavedIce = 'numeric',
  ice = 'numeric',
  water40 = 'numeric', water70 = 'numeric', 
  water80 = 'numeric', water80_tsp = 'numeric', water80_Tbsp = 'numeric', water80_cup = 'numeric',
  water90 = 'numeric', water95 = 'numeric',
  boilingWater = 'numeric',
  
  sauce = 'numeric', sauce_tsp = 'numeric', sauce_Tbsp = 'numeric', sauce_cup = 'numeric',
  
  liqueur = 'numeric', liqueur_tsp = 'numeric', liqueur_Tbsp = 'numeric', liqueur_cup = 'numeric',
  
  gelatin = 'numeric',
  gelatin_leaf = 'numeric'
))





#' @rdname show_cooking
#' @export
setMethod(f = show, signature = 'raw.', definition = \(object) print.raw.(object))

#' @method print raw.
#' @export
print.raw. <- \(x, ...) {
  
  y <- nutrition(x = x) # dispatch to [nutrition.raw] or [nutrition.recipe]
  
  if (length(y@name)) {
    y@name |> col_grey() |> style_bold() |> cat()
    cat('\n')
  }
  
  cat('\n')
  
  nm_ <- y |>
    attr(which = 'info', exact = TRUE) |>
    attr(which = 'glue', exact = TRUE)
  
  meat_seafood <- c(
    x@shrimp,
    x@seafood,
    x@pork, x@beef, x@lamb, x@chicken, # meat
    NULL)
  sprintf(fmt = '%s %.0f grams\n', nm_[names(meat_seafood)], meat_seafood) |> lapply(FUN = cli_text)
  
  flour <- c(x@flour, x@pastryFlour, x@breadFlour, x@wholeWheatFlour,
             x@glutenFreeFlour, 
             x@wheatGluten, 
             x@riceFlour, x@glutinousRiceFlour,
             x@cornmeal,
             x@coconut)
  if (length(flour)) sprintf(fmt = '%s %.0f grams %s\n', nm_[names(flour)], flour, format_vol(flour)) |> lapply(FUN = cli_text) # one or more flour
  
  if (length(x@starch)) sprintf(fmt = '%s %.0f grams %s\n', nm_[names(x@starch)], x@starch, format_vol(x@starch)) |> lapply(FUN = cli_text) 
  
  # commercial puree with volume info
  puree_vol <- c(x@pumpkin, x@pumpkinPieMix, x@pineapple, x@pear, x@mandarine, x@mango, x@tomato, x@yellowCorn, x@applesauce)
  if (length(puree_vol)) sprintf(fmt = '%s %.0f grams %s\n', nm_[names(puree_vol)], puree_vol, format_vol(puree_vol)) |> lapply(FUN = cli_text)
  
  # puree (from Nutribullet or Joyoung soymilk maker) without volume info
  puree_no_vol <- c(x@puree, x@darkCherry, x@strawberry, x@banana)
  if (length(puree_no_vol)) sprintf(fmt = '%s %.0f grams\n', nm_[names(puree_no_vol)], puree_no_vol) |> lapply(FUN = cli_text)
  
  fruit <- c(x@fruit, x@durian)
  if (length(fruit)) sprintf(fmt = '%s %.0f grams\n', nm_[names(fruit)], fruit) |> lapply(FUN = cli_text) # one or more fruit_pc
  if (length(x@fruit_pc)) sprintf(
    fmt = '%s %.0f grams %s\n', 
    nm_[names(x@fruit_pc)], 
    x@fruit_pc,
    (x@fruit_pc / vapply(names(x@fruit_pc), FUN = \(i) eval(call(i))@pieceWeight, FUN.VALUE = NA_real_)) |>
      sprintf(fmt = '%.1fpcs') |> col_br_magenta() |> style_bold()
    #format_pc(x, name = 'fruit') # dont know how to use this yet
  ) |> lapply(FUN = cli_text) # one or more fruit_pc
  
  # sprintf(fmt = '%s %.0f grams %s\n', nm_[names(x@flavor)], x@flavor, format_vol(x@flavor)) |> lapply(FUN = cli_text) # one or more flavor
  if (length(x@flavor)) sprintf(fmt = '%s %.0f grams\n', nm_[names(x@flavor)], x@flavor) |> lapply(FUN = cli_text) # one or more flavor
  # my `@flavor` slot is very complicated
  
  mapply(FUN = \(glue, gram) {
    sprintf(fmt = '%s %.0f grams', glue, gram) |> cli_text() # no returned value
  }, glue = nm_[names(x@homemade)], gram = x@homemade)
  # can**not** ?cli::cli_text a \link[base]{vector}; # 'Newlines are *not* preserved'
  
  grain_bean_nut <- c(
    x@chickpea, x@adzukibean, x@mungbean, x@redKidneyBean,
    x@cashew, x@nut
  )
  grain_bean_nut_vol_ <- c(
    x@grain,
    x@soybean
  )
  if (length(grain_bean_nut)) sprintf(fmt = '%s %.0f grams\n', nm_[names(grain_bean_nut)], grain_bean_nut) |> lapply(FUN = cli_text) # one or more grain
  if (length(grain_bean_nut_vol_)) sprintf(fmt = '%s %.0f grams %s\n', nm_[names(grain_bean_nut_vol_)], grain_bean_nut_vol_, format_vol(grain_bean_nut_vol_)) |> lapply(FUN = cli_text) # one or more grain
  
  fat_vol <- c(
    x@fat,
    x@lard, x@tallow
  )
  if (length(fat_vol)) sprintf(fmt = '%s %.0f grams %s\n', nm_[names(fat_vol)], fat_vol, format_vol(fat_vol)) |> lapply(FUN = cli_text)
  
  halfpound_brick <- c(
    x@creamCheese
  )
  if (length(halfpound_brick)) sprintf(
    fmt = '%s %.0f grams %s\n', 
    nm_[names(halfpound_brick)], 
    halfpound_brick, 
    (halfpound_brick/226.796) |> sprintf(fmt = '%.2gbrick') |> col_br_blue() |> style_bold()
  ) |> lapply(FUN = cli_text)
  
  other <- c(
    x@vegetable,
    #x@cheese, 
    x@condensedMilk # dairy without volume info
  )
  if (length(other)) sprintf(fmt = '%s %.0f grams\n', nm_[names(other)], other) |> lapply(FUN = cli_text)
  
  dairy_vol <- c(# dairy with volume info
    x@cheese, 
    x@mascarpone, x@cottageCheese, x@yogurt, x@yogurtGreek, x@kefir, x@filmjolk,
    x@butter, x@ghee, x@evaporatedMilk, x@drymilk, x@milk, x@buttermilk, x@heavyCream, x@lightCream, x@sourCream
  )
  if (length(dairy_vol)) sprintf(fmt = '%s %.1f grams %s\n', nm_[names(dairy_vol)], dairy_vol, format_vol(dairy_vol)) |> lapply(FUN = cli_text)
  
  if (length(x@eggYolk)) sprintf(fmt = '%s %.1f grams %s\n', nm_[names(x@eggYolk)], x@eggYolk, format_pc(x, 'eggYolk')) |> lapply(FUN = cli_text)
  if (length(x@eggWhite)) sprintf(fmt = '%s %.1f grams %s\n', nm_[names(x@eggWhite)], x@eggWhite, format_pc(x, 'eggWhite')) |> lapply(FUN = cli_text)
  
  if (length(x@tea)) sprintf(
    fmt = '%s %.1f grams %s\n', 
    nm_[names(x@tea)], 
    x@tea,
    x@tea |> getTeabag() |> sprintf(fmt = '%.2gbag') |> col_br_magenta() |> style_bold()
  ) |> lapply(FUN = cli_text)
  
  allSugar <- c(
    x@sugar, x@brownSugar
  )
  if (length(allSugar)) sprintf(fmt = '%s %.1f grams %s\n', nm_[names(allSugar)], allSugar, format_vol(allSugar)) |> lapply(FUN = cli_text)
  
  # ingredients without volumn info
  no_vol_ <- c(
    x@blackSesame
  )
  if (length(no_vol_)) sprintf(fmt = '%s %.0f grams\n', nm_[names(no_vol_)], no_vol_) |> lapply(FUN = cli_text)
  
  # ingredients with volumn info
  has_vol_small <- c(
    x@ginger, x@garlic, x@onion, x@coriander, x@cumin, x@cilantro, x@clove, x@cinnamon, x@whitePepper, x@blackPepper, x@turmeric, x@paprika,
    x@spiceItalian, x@spice5, x@pumpkinSpice,
    x@chiliMix,
    x@spice, x@curry,
    x@matcha, x@coffee, x@cocoa, x@beet, x@acai, x@creamTartar, x@vanilla,
    x@salt, x@msg, x@NaHCO3, x@Na2CO3, x@bakingPowder,
    x@sesameOil, x@rattanPepperOil,
    x@yeast,
    x@sauce, x@liqueur
  )
  has_vol_large <- c(
    x@oil, 
    x@blackRice, x@brownRice,
    x@syrup
  )
  if (length(has_vol_small)) sprintf(fmt = '%s %.1f grams %s\n', nm_[names(has_vol_small)], has_vol_small, format_vol(has_vol_small)) |> lapply(FUN = cli_text)
  if (length(has_vol_large)) sprintf(fmt = '%s %.0f grams %s\n', nm_[names(has_vol_large)], has_vol_large, format_vol(has_vol_large)) |> lapply(FUN = cli_text)
  
  if (length(x@gelatin)) sprintf(fmt = '%s %.1f grams %s\n', nm_[names(x@gelatin)], x@gelatin, getGelatinLeaf(x@gelatin)) |> cli_text()
  
  if (length(x@water)) {
    if (!length(x@water_extra)) {
      sprintf(fmt = '%s Water %.0f grams %s\n', col_orchid4('\u5e38\u6e29\u6c34'), x@water, format_vol(x@water)) |> cli_text()
    } else {
      water <- sum_by_name(x@water, x@water_extra)
      sprintf(fmt = '%s Water %.0f=%.0f%s grams %s\n', col_orchid4('\u5e38\u6e29\u6c34'), water, x@water, sprintf('+%.0f', x@water_extra) |> col_br_red(), format_vol(water)) |> cli_text()
    }
  }
  
  if (length(x@water40)) sprintf(fmt = '%s Warm Water, 104\u00b0F %.0f grams %s\n', col_orchid4('40\u00b0C\u6e29\u6c34'), x@water40, format_vol(x@water40)) |> cli_text()
  if (length(x@water70)) sprintf(fmt = '%s Hot Water, 160\u00b0F %.0f grams %s\n', col_orchid4('70\u00b0C\u70ed\u6c34'), x@water70, format_vol(x@water70)) |> cli_text()
  if (length(x@water80)) sprintf(fmt = '%s Hot Water, 175\u00b0F %.0f grams %s\n', col_orchid4('80\u00b0C\u70ed\u6c34'), x@water80, format_vol(x@water80)) |> cli_text()
  if (length(x@water90)) sprintf(fmt = '%s Hot Water, 195\u00b0F %.0f grams %s\n', col_orchid4('90\u00b0C\u70ed\u6c34'), x@water90, format_vol(x@water90)) |> cli_text()
  if (length(x@water95)) sprintf(fmt = '%s Hot Water, 203\u00b0F %.0f grams %s\n', col_orchid4('95\u00b0C\u70ed\u6c34'), x@water95, format_vol(x@water95)) |> cli_text()
  if (length(x@boilingWater)) sprintf(fmt = '%s Boiling Water %.0f grams %s\n', col_orchid4('\u5f00\u6c34'), x@boilingWater, format_vol(x@boilingWater)) |> cli_text()
  if (length(x@iceWater)) sprintf(fmt = '%s Iced Water %.0f grams %s\n', col_orchid4('\u51b0\u6c34'), x@iceWater, format_vol(x@iceWater)) |> cli_text()
  if (length(x@carbonatedWater)) sprintf(fmt = '%s Carbonated Water %.0f grams %s\n', col_orchid4('\u6c14\u6ce1\u6c34'), x@carbonatedWater, format_vol(x@carbonatedWater)) |> cli_text()
  if (length(x@shavedIce)) sprintf(fmt = '%s Shaved Ice\U1f367 %.0f grams %s\n', col_orchid4('\u51b0\u6c99'), x@shavedIce, format_vol(x@shavedIce)) |> cli_text()
  if (length(x@ice)) sprintf(fmt = '%s Ice\U1f9ca Cubes %.0f grams\n', col_orchid4('\u51b0\u5757'), x@ice) |> cli_text()
  
  cat('\n')
  
}






setMethod(f = initialize, signature = 'raw.', definition = \(.Object, ...) {
  
  x <- callNextMethod(.Object, ...)
  
  # processing 'numeric'
  
  x <- check_gelatin(x)
  
  x@eggWhite <- c(eggWhite = sum(eggWhite()@servingGram * sum(x@eggWhite_pc, x@egg_pc), x@eggWhite))
  x@eggYolk <- c(eggYolk = sum(eggYolk()@servingGram * sum(x@eggYolk_pc, x@egg_pc), x@eggYolk))
  x@eggWhite_pc <- x@eggYolk_pc <- x@egg_pc <- numeric()
  
  x <- x |> 
    combineVol(which = 'flour', name1 = 'KingArthur_allPurpose') |>
    addNameLen1(which = 'pastryFlour', name1 = 'Wegmans_pastry') |>
    addNameLen1(which = 'breadFlour', name1 = 'Wegmans_bread') |> # 2024-04-02 # Wegmans_bread() has *much* higher water absorbency, and much cheaper than KingArthur_bread()
    addNameLen1(which = 'wholeWheatFlour', name1 = 'Wegmans_whiteWheat') |>
    addNameLen1(which = 'glutenFreeFlour', name1 = 'KingArthur_M4M') |>
    addNameLen1(which = 'wheatGluten', name1 = 'BobsRedMill_wheatGluten') |>
    combineVol(which = 'cornmeal', name1 = 'Albertsons_yellowCorn') |>
    addNameLen1(which = 'coconut') |> # , name1 = 'WegmansOrganic_coconutFlour' # compare with other brands?
    addNameLen1(which = 'riceFlour', name1 = 'Erawan_riceFlour') |>
    addNameLen1(which = 'glutinousRiceFlour', name1 = 'Erawan_glutinousRiceFlour') |>
    addNameLen1(which = 'blackRice', name1 = 'HaiTai_blackRice') |>
    addNameLen1(which = 'brownRice', name1 = 'Nishiki_brownRice') |>
    combineVol(which = 'water', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'iceWater', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'carbonatedWater', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'shavedIce', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'ice', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'water40', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'water70', name1 = 'Wegmans_water') |>
    combineVol(which = 'water80', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'water90', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'water95', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'boilingWater', name1 = 'Wegmans_water') |>
    addNameLen1(which = 'applesauce', name1 = 'Motts_applesauce') |>
    addNameLen1(which = 'banana', name1 = 'banana') |>
    addNameLen1(which = 'darkCherry', name1 = 'HappyVillage_darkCherry') |>
    addNameLen1(which = 'durian', name1 = 'LuckyTaro_durian') |>
    addNameLen1(which = 'mandarine', name1 = 'DelMonte_mandarine') |>
    addNameLen1(which = 'mango', name1 = 'mango') |>
    addNameLen1(which = 'pear', name1 = 'DelMonte_pear') |>
    addNameLen1(which = 'pineapple', name1 = 'Dole_pineapple') |>
    combineVol(which = 'pumpkin', name1 = 'Libbys_pumpkin') |>
    addNameLen1(which = 'pumpkinPieMix', name1 = 'Libbys_pumpkinPieMix') |>
    addNameLen1(which = 'strawberry', name1 = 'Kirkland_strawberry') |>
    addNameLen1(which = 'tomato', name1 = 'WegmansOrganic_tomato') |>
    addNameLen1(which = 'yellowCorn', name1 = 'Kirkland_yellowCorn') |>
    addNameLen1(which = 'blackSesame', name1 = 'Greenmax_blackSesame') |>
    combineVol(which = 'flavor') |>
    combineVol(which = 'sesameOil', name1 = 'Kadoya_sesameOil') |>
    combineVol(which = 'rattanPepperOil', name1 = 'YouJia_rattanPepperOil') |>
    combineVol(which = 'fat') |>
    combineVol(which = 'lard', name1 = 'Epic_lard') |>
    combineVol(which = 'tallow', name1 = 'Epic_tallow') |>
    # no accurate density info available yet
    combineVol(which = 'ginger', name1 = 'SimplyOrganic_ginger') |>
    combineVol(which = 'garlic', name1 = 'McCormick_garlic_powder') |>
    combineVol(which = 'onion', name1 = 'McCormick_onion_powder') |>
    combineVol(which = 'coriander', name1 = 'SimplyOrganic_coriander') |>
    combineVol(which = 'cumin', name1 = 'SimplyOrganic_cumin') |>
    combineVol(which = 'cilantro', name1 = 'McCormick_cilantro') |>
    combineVol(which = 'spiceItalian', name1 = 'SimplyOrganic_Italian') |>
    combineVol(which = 'clove', name1 = 'SimplyOrganic_clove') |>
    combineVol(which = 'cinnamon', name1 = 'SimplyOrganic_cinnamonCeylon') |>
    combineVol(which = 'whitePepper', name1 = 'McCormick_whitePepper') |>
    combineVol(which = 'blackPepper', name1 = 'McCormick_blackPepper') |>
    combineVol(which = 'turmeric', name1 = 'McCormick_turmeric') |>
    combineVol(which = 'paprika', name1 = 'Chinata_paprika') |>
    combineVol(which = 'spice5', name1 = 'SimplyOrganic_5spice') |>
    combineVol(which = 'pumpkinSpice', name1 = 'SimplyOrganic_pumpkinSpice') |>
    combineVol(which = 'spice') |>
    combineVol(which = 'chiliMix') |>
    combineVol(which = 'curry') |>
    # with density info
    combineVol(which = 'sugar', name1 = 'US_10x') |>
    combineVol(which = 'brownSugar', name1 = 'Domino_darkBrown') |>
    combineVol(which = 'syrup') |>
    combineVol(which = 'salt', name1 = 'Morton_salt') |>
    combineVol(which = 'msg', name1 = 'Ajinomoto_msg') |>
    combineVol(which = 'NaHCO3', name1 = 'ArmHammer_NaHCO3') |>
    combineVol(which = 'Na2CO3', name1 = 'Na2CO3') |>
    combineVol(which = 'bakingPowder', name1 = 'TraderJoes_bakingPowder') |>
    combineVol(which = 'yeast', name1 = 'Fleischmanns_instant') |>
    combineVol(which = 'matcha', name1 = 'Ippodo_ikuyo') |>
    combineVol(which = 'cocoa', name1 = 'KingArthur_Bensdorp') |>
    combineVol(which = 'coffee', name1 = 'NescafeGold_blonde') |> 
    combineVol(which = 'beet', name1 = 'Wegmans_beet') |>
    combineVol(which = 'acai', name1 = 'Wegmans_acai') |>
    combineVol(which = 'creamTartar', name1 = 'McCormick_creamTartar') |>
    combineVol(which = 'vanilla', name1 = 'NielsenMassey_Madagascar') |>
    combineVol(which = 'starch') |>
    combineVol(which = 'oil') |>
    combineVol(which = 'sauce') |>
    combineVol(which = 'liqueur') |>
    combineVol(which = 'butter', name1 = 'Kerrygold') |>
    combineVol(which = 'ghee', name1 = 'WegmansOrganic') |>
    combineVol(which = 'cheese') |>
    combineVol(which = 'mascarpone', name1 = 'BelGioioso') |>
    combineVol(which = 'cottageCheese', name1 = 'Daisy') |>
    combineVol(which = 'yogurtGreek', name1 = 'FageTotal0') |>
    combineVol(which = 'yogurt', name1 = 'Nancys') |> # taste best!!
    combineVol(which = 'kefir', name1 = 'GreenValley') |>
    combineVol(which = 'filmjolk', name1 = 'Siggis') |>
    combineVol(which = 'condensedMilk', name1 = 'Carnation') |>
    combineVol(which = 'evaporatedMilk', name1 = 'Carnation') |>
    combineVol(which = 'creamCheese', name1 = 'Nancys') |>
    combineVol(which = 'drymilk', name1 = 'Carnation') |>
    combineVol(which = 'milk', name1 = 'WegmansOrganic_whole_milk') |>
    combineVol(which = 'buttermilk', name1 = 'OakFarms_buttermilk') |>
    combineVol(which = 'heavyCream', name1 = 'Wegmans') |>
    combineVol(which = 'lightCream', name1 = 'Lucerne') |>
    combineVol(which = 'sourCream', name1 = 'Daisy') |>
    meatName(animal = 'pork') |>
    meatName(animal = 'beef') |>
    meatName(animal = 'lamb') |>
    meatName(animal = 'chicken') |>
    addNameLen1(which = 'shrimp', name1 = 'Kirkland_shrimp_31_40') |>
    addNameLen1(which = 'soybean', name1 = 'Laura_soybean') |>
    addNameLen1(which = 'chickpea', name1 = 'Palouse_chickpea') |>
    addNameLen1(which = 'adzukibean', name1 = 'HaiTai_adzuki') |>
    addNameLen1(which = 'mungbean', name1 = 'HaiTai_mung') |>
    addNameLen1(which = 'redKidneyBean', name1 = 'redKidneyBean') |>
    addNameLen1(which = 'cashew', name1 = 'Kirkland_cashew_organic') |>
    addNameLen1(which = 'nut')
  
  x@fruit_pc <- sum_by_name( # is this correct???
    addNameLen1(x, which = 'fruit_pc')@fruit_pc, 
    c(avocado = avocado()@pieceWeight * x@avocado_pc),
    c(lemonJuice = lemonJuice()@pieceWeight * x@lemon_pc),
    c(limeJuice = limeJuice()@pieceWeight * x@lime_pc))
  x@avocado_pc <- x@lemon_pc <- x@lime_pc <- numeric()
  
  x@tea <- sum_by_name(getTealoose(x@teabag), x@tea)
  x@teabag <- numeric()
  
  if (!length(x@water_extra) && inherits(x, what = c('bread', 'bao', 'pastalinda'))) {
    extraWater <- \(z) sum(z * vapply(names(z), FUN = \(nm) eval(call(name = nm))@extra@water, FUN.VALUE = NA_real_))
    x@water_extra <- extraWater(x@matcha) + extraWater(x@beet) + extraWater(x@cocoa) + extraWater(x@acai)
  }
  x <- x |> 
    addNameLen1(which = 'water_extra', name1 = 'Wegmans_water')
  
  for (i in names(getSlots(x = 'raw.'))) {
    ival <- slot(object = x, name = i)
    # generic method '+' will create 0's
    if (anyNA(ival)) stop(i)
    if (length(ival) && all(ival == 0)) slot(object = x, name = i) <- numeric()
  }
  
  return(x)
  
})



check_gelatin <- \(x) {
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
addNameLen1 <- \(x, which, name1 = stop('no default!')) {
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


combineVol <- \(x, which, name1 = stop('no default!')) {
  slt0 <- names(getSlots(x = 'raw.'))
  ._tsp <- paste0(which, '_tsp')
  has_tsp <- ._tsp %in% slt0
  ._Tbsp <- paste0(which, '_Tbsp')
  has_Tbsp <- ._Tbsp %in% slt0
  ._cup <- paste0(which, '_cup')
  has_cup <- ._cup %in% slt0
  ._brick <- paste0(which, '_brick')
  has_brick <- ._brick %in% slt0
  x_gram <- slot(addNameLen1(x, which = which, name1 = name1), name = which)
  x_tsp <- if (has_tsp) slot(addNameLen1(x, which = ._tsp, name1 = name1), name = ._tsp) # else NULL
  x_Tbsp <- if (has_Tbsp) slot(addNameLen1(x, which = ._Tbsp, name1 = name1), name = ._Tbsp) # else NULL
  x_cup <- if (has_cup) slot(addNameLen1(x, which = ._cup, name1 = name1), name = ._cup) # else NULL
  x_brick <- if (has_brick) slot(addNameLen1(x, which = ._brick, name1 = name1), name = ._brick) # else NULL
  if (which %in% c(
    'starch', 'oil', 
    'butter', 'cheese', 'condensedMilk', 'cottageCheese', 'creamCheese', 'drymilk', 'evaporatedMilk', 
    'filmjolk', 'ghee', 'heavyCream', 'kefir', 'lightCream', 'mascarpone', 'milk',
    'sourCream', 'yogurt', 'yogurtGreek',
    'syrup'
  )) {
    add_suffix <- \(x0, which) {
      if (!length(names(x0))) return(x0)
      idx <- !endsWith(names(x0), suffix = paste0('_', which))
      names(x0)[idx] <- paste0(names(x0)[idx], '_', which)
      return(x0)
    }
    x_gram <- add_suffix(x_gram, which = which)
    if (has_tsp) x_tsp <- add_suffix(x_tsp, which = which)
    if (has_Tbsp) x_Tbsp <- add_suffix(x_Tbsp, which = which)
    if (has_cup) x_cup <- add_suffix(x_cup, which = which)
    if (has_brick) x_brick <- add_suffix(x_brick, which = which)
  }
  
  slot(x, name = which) <- sum_by_name(
    x_gram, 
    if (has_tsp) gram_per_tsp(names(x_tsp)) * x_tsp, 
    if (has_Tbsp) gram_per_tsp(names(x_Tbsp)) * (3 * x_Tbsp), # parenthesis needed!! otherwise floating issue!!!
    if (has_cup) gram_per_tsp(names(x_cup)) * (48 * x_cup),
    if (has_brick) 226.796 * x_brick
  )
  
  if (has_tsp) slot(x, name = ._tsp) <- numeric()
  if (has_Tbsp) slot(x, name = ._Tbsp) <- numeric() 
  if (has_cup) slot(x, name = ._cup) <- numeric() 
  if (has_brick) slot(x, name = ._brick) <- numeric()
  return(x)
}




meatName <- \(x, animal = stop('')) {
  if (!length(slot(x, name = animal))) return(x)
  nm <- names(slot(x, name = animal))
  if (!length(nm) || anyNA(nm) || !all(nzchar(nm))) stop('incomplete meat name')
  idx <- !startsWith(nm, prefix = paste0(animal, '_'))
  names(slot(x, name = animal))[idx] <- paste0(animal, '_', nm[idx])
  return(x)
}
