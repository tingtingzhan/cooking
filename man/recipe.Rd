% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02_recipe.R
\docType{class}
\name{recipe}
\alias{recipe}
\alias{recipe0-class}
\alias{recipe-class}
\title{Recipe}
\description{
S4 class \linkS4class{recipe0} is the mathematical model, allowing negative ingredients.

S4 class \linkS4class{recipe} is the executable recipe.
}
\section{Slots}{

\describe{
\item{\code{alias}}{\link[base]{character} scalar in Unicode, alias (e.g., in Chinese)}

\item{\code{alias_class,alias_flavor}}{\link[base]{character} scalar in Unicode, alias (e.g., in Chinese) of class and flavor}

\item{\code{author}}{\link[base]{character} scalar}

\item{\code{date}}{\link[base]{Date} scalar}

\item{\code{homemade}}{\link[base]{numeric} vector}

\item{\code{flavor,flavor_tsp,flavor_Tbsp,flavor_cup}}{\link[base]{numeric} vector, weight of one or more flavoring (in grams)}

\item{\code{puree}}{\link[base]{numeric} vector, weight of one or more puree (in grams)}

\item{\code{fruit}}{\link[base]{numeric} vector, weight of fresh fruit, diced (in grams)}

\item{\code{fruit_pc}}{\link[base]{numeric} vector, weight of one or more fresh fruit pulp or juice (in grams)}

\item{\code{applesauce}}{\link[base]{numeric} scalar, weight of Motts no sugar added applesauce (in grams)}

\item{\code{banana}}{\link[base]{numeric} scalar}

\item{\code{darkCherry}}{\link[base]{numeric} scalar, weight of Happy Village dark cherry puree (in grams)}

\item{\code{durian}}{\link[base]{numeric} scalar, weight of Lucky Taro durian pulp (in grams), seed removed}

\item{\code{mandarine}}{\link[base]{numeric} scalar, weight of blended Del Monte canned mandarine (in grams)}

\item{\code{mango}}{\link[base]{numeric} scalar, weight of blended Pickd frozen mango (in grams)}

\item{\code{pear}}{\link[base]{numeric} scalar, weight of blended Del Monte canned pear (in grams)}

\item{\code{pineapple}}{\link[base]{numeric} scalar, weight of blended Dole canned pineapple (in grams)}

\item{\code{pumpkin,pumpkin_tsp,pumpkin_Tbsp,pumpkin_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Libby's pumpkin puree (in grams)}

\item{\code{pumpkinPieMix}}{\link[base]{numeric} scalar, weight of Libby's pumpkin pie mix (in grams)}

\item{\code{strawberry}}{\link[base]{numeric} scalar, weight of Kirkland frozen strawberry (in grams)}

\item{\code{tomato}}{\link[base]{numeric} scalar, weight of Wegmans Organic tomato puree (in grams)}

\item{\code{yellowCorn}}{\link[base]{numeric} scalar, weight of Kirkland frozen yellow corn (in grams)}

\item{\code{butter,butter_tsp,butter_Tbsp,butter_cup,butter_brick}}{\link[base]{numeric} scalar, weight of Kerrygold unsalted butter (in grams)}

\item{\code{ghee}}{\link[base]{numeric} scalar, weight of Wegmans ghee butter (in grams)}

\item{\code{cheese}}{\link[base]{numeric} \link[base]{vector} or scalar}

\item{\code{mascarpone}}{\link[base]{numeric} scalar, weight of BelGioioso mascarpone cheese (in grams)}

\item{\code{cottageCheese}}{\link[base]{numeric} scalar, weight of Daisy cottage cheese (in grams)}

\item{\code{yogurtGreek}}{\link[base]{numeric} scalar, weight of non-fat Greek yogurt (in grams)}

\item{\code{creamCheese,creamCheese_brick}}{\link[base]{numeric} scalar, weight of Nancy's full-fat cream cheese}

\item{\code{sourCream,sourCream_tsp,sourCream_Tbsp,sourCream_cup}}{\link[base]{numeric} scalar, weight of Daisy regular (i.e., full-fat) sour cream (in grams)}

\item{\code{heavyCream,heavyCream_tsp,heavyCream_Tbsp,heavyCream_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Wegmans heavy cream or heavy whipping cream (in grams)}

\item{\code{lightCream,lightCream_tsp,lightCream_Tbsp,lightCream_cup}}{\link[base]{numeric} scalar, weight of Lucerne table cream (or light cream) (in grams)}

\item{\code{yogurt,yogurt_tsp,yogurt_Tbsp,yogurt_cup}}{\link[base]{numeric} scalar, weight of yogurt (in grams)}

\item{\code{kefir}}{\link[base]{numeric} scalar}

\item{\code{filmjolk}}{\link[base]{numeric} scalar}

\item{\code{drymilk,drymilk_tsp,drymilk_Tbsp,drymilk_cup}}{\link[base]{numeric} scalars, weight (in grams) and volume of Nestle Carnation fat-free dry milk, i.e., milk powder}

\item{\code{milk,milk_tsp,milk_Tbsp,milk_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Wegmans Organic vitamin D whole milk (in grams)}

\item{\code{buttermilk,buttermilk_tsp,buttermilk_Tbsp,buttermilk_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Upstate Farms whole buttermilk (in grams)}

\item{\code{evaporatedMilk}}{\link[base]{numeric} scalar, weight of Nestle Carnation full-fat \strong{unsweetened} evaporated milk (in grams)}

\item{\code{condensedMilk}}{\link[base]{numeric} scalar, weight of Nestle Carnation full-fat \strong{sweetened} condensed milk (in grams)}

\item{\code{sesameOil,sesameOil_tsp,sesameOil_Tbsp,sesameOil_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of sesame oil}

\item{\code{greenPeppercornOil,greenPeppercornOil_tsp,greenPeppercornOil_Tbsp,greenPeppercornOil_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Sichuan green peppercorn oil}

\item{\code{oil,oil_tsp,oil_Tbsp,oil_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of vegetable oil}

\item{\code{fat,fat_tsp,fat_Tbsp,fat_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of solid fat}

\item{\code{lard,lard_tsp,lard_Tbsp,lard_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Epic pork lard}

\item{\code{tallow,tallow_tsp,tallow_Tbsp,tallow_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Epic beef tallow}

\item{\code{egg_pc,eggYolk_pc,eggWhite_pc}}{\link[base]{numeric} scalars, numbers of large egg (52 grams each), egg yolks (17.3 grams each) and whites (34.7 grams each)}

\item{\code{eggYolk,eggWhite}}{\link[base]{numeric} scalars, weight of egg yolks and whites (in grams)}

\item{\code{teabag}}{\link[base]{numeric} scalars, number of tea bags}

\item{\code{tea}}{\link[base]{numeric} scalars, weight of loose tea in grams}

\item{\code{flour,flour_tsp,flour_Tbsp,flour_cup}}{\link[base]{numeric} scalar, weight of King Arthur all purpose flour (in grams)}

\item{\code{pastryFlour}}{\link[base]{numeric} scalar, weight of Wegmans pastry flour (in grams)}

\item{\code{breadFlour}}{\link[base]{numeric} scalar, weight of King Arthur bread flour (in grams)}

\item{\code{wholeWheatFlour}}{\link[base]{numeric} scalar, weight of Wegmans white whole wheat flour (in grams)}

\item{\code{glutenFreeFlour}}{\link[base]{numeric} scalar, weight of gluten free measure for measure flour (in grams)}

\item{\code{wheatGluten}}{\link[base]{numeric} scalar, weight of wheat gluten (in grams)}

\item{\code{cornmeal,cornmeal_tsp,cornmeal_Tbsp,cornmeal_cup}}{\link[base]{numeric} scalar, weight of cornmeal (in grams)}

\item{\code{coconut}}{\link[base]{numeric} scalar, weight (in grams) of coconut flour or shredded coconut}

\item{\code{riceFlour}}{\link[base]{numeric} scalar, weight of Erawan rice flour (in grams)}

\item{\code{glutinousRiceFlour}}{\link[base]{numeric} scalar, weight of Erawan glutinous rice flour (in grams)}

\item{\code{starch,starch_tsp,starch_Tbsp,starch_cup}}{\link[base]{numeric} scalar or \link[base]{vector}, named weight (in grams) and volume of various starch}

\item{\code{grain}}{\link[base]{numeric} scalar or \link[base]{vector}, named weight of various grains}

\item{\code{soybean}}{\link[base]{numeric} scalar, weight of dry soy beans (in grams)}

\item{\code{chickpea}}{\link[base]{numeric} scalar, weight of dry chickpea (in grams)}

\item{\code{adzukibean}}{\link[base]{numeric} scalar, weight of dry adzuki (red) bean (in grams)}

\item{\code{mungbean}}{\link[base]{numeric} scalar, weight of dry mung (green) beans (in grams)}

\item{\code{redKidneyBean}}{..}

\item{\code{cashew}}{\link[base]{numeric} scalar, weight of unsalted unroasted cashew (in grams)}

\item{\code{nut}}{\link[base]{numeric} scalar, weight of various dry nuts (in grams)}

\item{\code{blackRice}}{\link[base]{numeric} scalar, weight of black rice (in grams)}

\item{\code{brownRice}}{\link[base]{numeric} scalar, weight of brown rice (in grams)}

\item{\code{sugar,sugar_tsp,sugar_Tbsp,sugar_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of 10x powdered confectioners sugar}

\item{\code{brownSugar,brownSugar_tsp,brownSugar_Tbsp,brownSugar_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of dark brown sugar}

\item{\code{syrup,syrup_tsp,syrup_Tbsp,syrup_cup}}{\link[base]{numeric} scalar or \link[base]{vector}, weight (in grams) and volume of various (maple) syrup}

\item{\code{NaHCO3,NaHCO3_tsp,NaHCO3_Tbsp,NaHCO3_cup}}{\link[base]{numeric} scalars, weight (in grams) and volume of Arm and Hammer baking soda}

\item{\code{Na2CO3,Na2CO3_tsp,Na2CO3_Tbsp,Na2CO3_cup}}{\link[base]{numeric} scalars,
weight (in grams) and volume of Na2CO3, respectively.
Na2CO3 is made from baking Arm and Hammer baking soda, 200F for 30 minutes}

\item{\code{bakingPowder,bakingPowder_tsp,bakingPowder_Tbsp,bakingPowder_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of baking powder}

\item{\code{salt,salt_tsp,salt_Tbsp,salt_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of salt}

\item{\code{msg,msg_tsp,msg_Tbsp,msg_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of monosodium glutamate (MSG)}

\item{\code{vanilla,vanilla_tsp,vanilla_Tbsp,vanilla_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of vanilla extract}

\item{\code{blackSesame}}{\link[base]{numeric} scalar, weight (in grams) of Greenmax powdered black sesame seed}

\item{\code{cocoa,cocoa_tsp,cocoa_Tbsp,cocoa_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Dutch-processed cocoa powder}

\item{\code{matcha,matcha_tsp,matcha_Tbsp,matcha_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of culinary matcha powder}

\item{\code{ginger,ginger_tsp,ginger_Tbsp,ginger_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Simply Organic ginger powder}

\item{\code{garlic,garlic_tsp,garlic_Tbsp,garlic_cup}}{\link[base]{numeric} scalar, weight of garlic powder (in grams)}

\item{\code{onion,onion_tsp,onion_Tbsp,onion_cup}}{\link[base]{numeric} scalar, weight of onion powder (in grams)}

\item{\code{coriander,coriander_tsp,coriander_Tbsp,coriander_cup}}{..}

\item{\code{cumin,cumin_tsp,cumin_Tbsp,cumin_cup}}{..}

\item{\code{cilantro,cilantro_tsp,cilantro_Tbsp,cilantro_cup}}{..}

\item{\code{spiceItalian,spiceItalian_tsp,spiceItalian_Tbsp,spiceItalian_cup}}{..}

\item{\code{clove,clove_tsp,clove_Tbsp,clove_cup}}{..}

\item{\code{cinnamon,cinnamon_tsp,cinnamon_Tbsp,cinnamon_cup}}{..}

\item{\code{whitePepper,whitePepper_tsp,whitePepper_Tbsp,whitePepper_cup}}{..}

\item{\code{blackPepper,blackPepper_tsp,blackPepper_Tbsp,blackPepper_cup}}{..}

\item{\code{turmeric,turmeric_tsp,turmeric_Tbsp,turmeric_cup}}{..}

\item{\code{paprika,paprika_tsp,paprika_Tbsp,paprika_cup}}{..}

\item{\code{spice5,spice5_tsp,spice5_Tbsp,spice5_cup}}{..}

\item{\code{pumpkinSpice,pumpkinSpice_tsp,pumpkinSpice_Tbsp,pumpkinSpice_cup}}{..}

\item{\code{spice,spice_tsp,spice_Tbsp,spice_cup}}{named \link[base]{numeric} \link[base]{vector}, weight (in grams) and volume of compound spices}

\item{\code{chiliMix,chiliMix_tsp,chiliMix_Tbsp,chiliMix_cup}}{..}

\item{\code{curry,curry_tsp,curry_Tbsp,curry_cup}}{..}

\item{\code{beet,beet_tsp,beet_Tbsp,beet_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Wegmans Organic beet root powder}

\item{\code{acai,acai_tsp,acai_Tbsp,acai_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Wegmans Organic acai root powder}

\item{\code{creamTartar,creamTartar_tsp,creamTartar_Tbsp,creamTartar_cup}}{..}

\item{\code{coffee,coffee_tsp,coffee_Tbsp,coffee_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of Nescafe Tasters Choice Decaf Medium Roast}

\item{\code{pork}}{\link[base]{numeric} vector, weight of one or more cuts of pork (in grams)}

\item{\code{beef}}{\link[base]{numeric} vector, weight of one or more cuts of beef (in grams)}

\item{\code{lamb}}{\link[base]{numeric} vector, weight of one or more cuts of lamb (in grams)}

\item{\code{chicken}}{\link[base]{numeric} vector, weight of one or more cuts of chicken (in grams)}

\item{\code{shrimp}}{\link[base]{numeric} vector, weight of shrimp (in grams)}

\item{\code{seafood}}{\link[base]{numeric} vector, weight of one or more other sea food (in grams)}

\item{\code{vegetable}}{\link[base]{numeric} vector, weight of one or more vegetables (in grams)}

\item{\code{water,water_tsp,water_Tbsp,water_cup}}{\link[base]{numeric} scalar, weight of water (in grams)}

\item{\code{water_extra}}{\link[base]{numeric} scalar, weight of extra water (in grams) to hydrate powders in a dough}

\item{\code{water40}}{\link[base]{numeric} scalar, weight of warm (100F–110F, 37.8C-43.3C) water (in grams)}

\item{\code{water70}}{\link[base]{numeric} scalar, weight of hot (70C-75C) water (in grams)}

\item{\code{water80,water80_tsp,water80_Tbsp,water80_cup}}{\link[base]{numeric} scalar, weight of hot (80C, 175F) water (in grams)}

\item{\code{water90}}{\link[base]{numeric} scalar, weight of hot (90C, 195F) water (in grams)}

\item{\code{water95}}{\link[base]{numeric} scalar, weight of hot (95C, 203F) water (in grams)}

\item{\code{boilingWater}}{\link[base]{numeric} scalar, weight of boiling water (in grams)}

\item{\code{iceWater}}{\link[base]{numeric} scalar, weight of ice water (in grams)}

\item{\code{carbonatedWater}}{\link[base]{numeric} scalar, weight of carbonated water (in grams)}

\item{\code{shavedIce}}{\link[base]{numeric} scalar, weight of shaved ice (in grams)}

\item{\code{ice}}{\link[base]{numeric} scalar, weight of ice (in grams)}

\item{\code{waterLost}}{\link[base]{numeric} scalar, weight of water (in grams) lost in cooking process, \strong{before dividing}}

\item{\code{fatLost}}{\link[base]{numeric} scalar, weight of oil (in grams) drained in cooking process}

\item{\code{sugarLost}}{\link[base]{numeric} scalar, weight of sugar (in grams) consumed by yeast in fermentation}

\item{\code{sauce,sauce_tsp,sauce_Tbsp,sauce_cup}}{\link[base]{numeric} vector, weight (in grams) and volume of one or more sauces}

\item{\code{liqueur,liqueur_tsp,liqueur_Tbsp,liqueur_cup}}{\link[base]{numeric} vector, weight (in grams) and volume of one or more liqueurs}

\item{\code{yeast,yeast_tsp,yeast_Tbsp,yeast_cup}}{\link[base]{numeric} scalar, weight (in grams) and volume of yeast}

\item{\code{gelatin_leaf}}{\link[base]{numeric} scalar, number of gold gelatin leaves,
see more about gelatin leaves at \url{https://dessertisans.com/insight/how-to-convert-gelatin/}
\describe{
\item{\code{'titanium'}}{leaves have a bloom strength of 100 and weigh 5 grams.}
\item{\code{'bronze'}}{leaves have a bloom strength of 125 and weigh 3.3 grams.}
\item{\code{'silver'}}{leaves have a bloom strength of 160 and weigh 2.5 grams.}
\item{\code{'gold'}}{leaves have a bloom strength of 200 and weigh 2 grams.}
\item{\code{'platinum'}}{leaves have a bloom strength of 250 and weigh 1.7 grams.}
}}

\item{\code{gelatin}}{..}

\item{\code{lemon_pc}}{\link[base]{numeric} scalar, number of fresh lemon (each contains 48 grams of juice)}

\item{\code{lime_pc}}{\link[base]{numeric} scalar, number of fresh lime (each contains 44 grams of juice)}

\item{\code{avocado_pc}}{\link[base]{numeric} scalar, number of fresh avocado (each contains 140 grams of pulp)}

\item{\code{machine}}{\link[base]{list} of \link[base]{character} scalar or \link[base]{vector}, machine(s) used}

\item{\code{waterBath}}{\linkS4class{tool}}

\item{\code{KSM8990}}{\linkS4class{tool}, Kitchen Aid commercial stand mixer KSM8990, 8 quart}

\item{\code{KSM3316X}}{\linkS4class{tool}, Kitchen Aid stand mixer KSM3316X, 3.5 quart}

\item{\code{KSMICM}}{\linkS4class{tool}, Kitchen Aid ice cream maker KSMICM}

\item{\code{CuisinartICE70}}{\linkS4class{tool}, Cuisinart ice cream maker ICE70}

\item{\code{JoyoungDJ13U}}{\linkS4class{tool}, Joyoung soymilk maker DJ13U-P10}

\item{\code{JoyoungDJ06M}}{\linkS4class{tool}, Joyoung mini soymilk maker DJ06M}

\item{\code{JoyoungCJA9U}}{\linkS4class{tool}, Joyoung stir-fry machine CJ-A9U}

\item{\code{nutribullet20,nutribullet24,Stanley14,Stanley20,Stanley40}}{\linkS4class{tool}}

\item{\code{PhilipsHD9867}}{\linkS4class{tool}}

\item{\code{Staub_vertRoaster}}{\linkS4class{tool}}

\item{\code{RobamCT763}}{\linkS4class{tool}}

\item{\code{InstantPot}}{\linkS4class{tool}}

\item{\code{note}}{\link[base]{character} scalar or \link[base]{vector}, additional note to chef}

\item{\code{instruction}}{\link[base]{character} scalar or \link[base]{vector},}

\item{\code{review}}{\link[base]{character} scalar or \link[base]{vector}, people's comments}

\item{\code{pros}}{\link[base]{character} scalar or \link[base]{vector}, pros}

\item{\code{cons}}{\link[base]{character} scalar or \link[base]{vector}, cons}

\item{\code{portion}}{\link[base]{numeric} scalar or \link[base]{vector}, weight of raw portion (in grams)}

\item{\code{url}}{\link[base]{character} scalar or \link[base]{vector}, URL of original recipe}

\item{\code{acme}}{\link[base]{integer} scalar}

\item{\code{allrecipes}}{\link[base]{character} scalar}

\item{\code{daatgo}}{\link[base]{character} scalar}

\item{\code{dad1966}}{\link[base]{character} scalar}

\item{\code{guga}}{\link[base]{character} scalar}

\item{\code{happytears}}{\link[base]{character} scalar}

\item{\code{ippodotea,ippodoteajpn}}{\link[base]{character} scalar}

\item{\code{joshuaweissman}}{\link[base]{character} scalar}

\item{\code{julieseatsandtreats}}{\link[base]{character} scalar}

\item{\code{juniorscheesecakecookbook}}{\link[base]{integer} scalar}

\item{\code{just1cookbook}}{\link[base]{character} scalar}

\item{\code{kingarthur}}{\link[base]{character} scalar or \link[base]{vector}, link from \url{https://www.kingarthurbaking.com} of original recipe}

\item{\code{laofangu}}{\link[base]{character} scalar}

\item{\code{natashaskitchen}}{\link[base]{character} scalar}

\item{\code{nytimes}}{\link[base]{character} scalar}

\item{\code{pino}}{\link[base]{character} scalar}

\item{\code{preppykitchen}}{\link[base]{character} scalar, link from \url{preppykitchen.com} of original recipe}

\item{\code{quakeroats}}{\link[base]{character} scalar}

\item{\code{shangshikitchen}}{\link[base]{character} scalar}

\item{\code{wegmans}}{\link[base]{character} scalar}

\item{\code{xiaogaojie}}{\link[base]{character} scalar}

\item{\code{youtube}}{\link[base]{character} scalar or \link[base]{vector}, YouTube ID of original recipe}
}}

\references{
\url{https://dessertisans.com/insight/how-to-convert-gelatin/}
}
