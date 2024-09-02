
#note = c(
#  'For 7.5mm cut, must use Thickness 8 or 9; Thickness 7 leaves groves on noodle'
#)


#' @title Various \linkS4class{pastalinda} Recipes
#' 
#' @description 
#' 
#' I am too lazy to properly rest the dough for hand-drawn noodle.
#' I rely on Pastalinda to knead-and-roll!
#' 
#' @details 
#' 
#' Wegmans bread flour has *much* greater water absorbency than King Arthur's bread flour!!!
#' Plus, Wegmans bread flour is much cheaper.
#' 
# King Arthur's high gluten flour (Sir Lancelot) and 
# King Arthur's bread flour
# have almost the same water absorbency.
#' 
#' \linkS4class{wrapperlinda}.
#' 
#' @note
#' 
#' Maximum wheat:bread flour 2:3.
#' 
#' @name pastalinda
#' @aliases pastalinda-class
#' @export
setClass(Class = 'pastalinda', contains = 'recipe', prototype = prototype(
  breadFlour = c(Wegmans_bread = 500), 
  salt_tsp = 1/4, Na2CO3_tsp = 1/4,
  KSM8990 = KSM8990(
    program = 'Level 2. Stop immediately after dough forms', 
    treatment = c(
      'Whisk together all dry powder, then add water/puree'
    ),
    operation = c(
      'Wrap and rest overnight in fridge'
    ),
    note = c(
      'Roll chilled-and-rested dough directly',
      'Store unused dough in fridge \u22642 days, or in freezer for \u22646 months'
    )
  )
))



#' @rdname pastalinda
#' 
#' @examples
#' # wrapper recipes
#' wrapperlinda()
#' pumpkin_wrapperlinda()
#' @aliases wrapperlinda-class
#' @export
setClass(Class = 'wrapperlinda', contains = 'pastalinda', prototype = prototype(
  alias_class = '\u6c64\u9762\U1f35c \u6c34\u997a\U1f95f\u6284\u624b\u76ae',
  key = '\U1f35e 57%',
  portion = c(
    '\u6284\u624b\u76ae wonton; 6x thru Thickness-2' = 5, # tried and nice.  Weigh to confirm
    
    '\u6c34\u997a\U1f95f\u76ae gyoza; 2x thru Thickness-8' = 8, # 1x thru Thickness 9 too thick
    
    'lasagna, Emile Henry Oval Individual, 2x thru Thickness-8' = 16, # 20g, Thickness 9, confirmed.  a little too thick for me
    
    '\u6e05\u6c64\u8584\u9762\U1f35c thin noodle; 2x thru Thickness-8' = 100 # 2x thru Thickness 9 too thin
  ), 
  youtube = c(
    'PinNuo makes wonton' = 'XzVsRPwGmuE', 
    'Another wonton' = 'TuDmgV3z-_s'
  )
))


#' @rdname pastalinda
#' @export
wrapperlinda <- function() new(
  Class = 'wrapperlinda',
  water = 285, # Wegmans bread flour
  review = 'a hypothetical model')

#' @rdname pastalinda
#' @export
pumpkin_wrapperlinda <- function() new(
  Class = 'wrapperlinda', 
  pumpkin = 380, # Wegmans bread flour
  review = c(
    'feels nice!!',
    'make shrimp gyoza and wonton next time!'
  ))

















#' @title \linkS4class{noodlelinda} Recipes
#' 
#' @description
#' Minimum starch dusting up to level-9.
#' 
#' @examples
#' # noodle recipes and analysis
#' noodlelinda()
#' 
#' @name noodlelinda
#' @aliases noodlelinda-class
#' @export
setClass(Class = 'noodlelinda', contains = 'pastalinda', prototype = prototype(
  alias_class = '\u5e7c\u9762\U1f35d',
  portion = c(
    '\u9762\u6761\U1f35d\U1f35c noodle' = 100
  ),
  instruction = c(
    '\u51c9\u9762\U1f35d Dry noodle: 
    Pastalinda-9, 2.5mm cut.
    Soak cooked noodle in cold water for 30sec. Drain.
    Mix with dressing',
    '\u6c64\u9762\U1f35c Noodle soup: 
    2-sheet through Pastalinda-7.5, 2.5mm cut'
  )
))




#' @rdname noodlelinda
#' @export
noodlelinda <- function() new(
  Class = 'noodlelinda', 
  water = 300,
  review = 'old experiment, retry to confirm')

#' @rdname noodlelinda
#' @export
noodlelinda_KingArthur <- function() new(
  Class = 'noodlelinda', breadFlour = c(KingArthur_bread = 500), 
  water = 225, # 220g too dry, 225g just right
  date = as.Date('2024-06-02'), pros = 'perfect wetness for KitchenAid KSM8990 and Pastalinda')

#' @rdname noodlelinda
#' @export
pumpkin_noodlelinda_KingArthur <- function() new(
  Class = 'noodlelinda', breadFlour = c(KingArthur_bread = 500),
  pumpkin = 270, # try with fresh can
  date = as.Date('2024-06-25'), pros = '280g for opened can'
  )



#' @rdname noodlelinda
#' @export
pumpkin_noodlelinda <- function() new(
  Class = 'noodlelinda', 
  pumpkin = 400,
  review = 'retry to confirm')


#' @rdname noodlelinda
#' @export
tomato_noodlelinda <- function() new(
  Class = 'noodlelinda', 
  tomato = 400, 
  review = 'try')

#' @rdname noodlelinda
#' @export
matcha_noodlelinda <- function() new(Class = 'noodlelinda', noodlelinda(), matcha_tsp = 7, review = 'retry!!')











# I have no interest to try traditional pasta (primarily egg)
#url = c(
#  'www.the-pasta-project.com/homemade-lasagne-pasta-sheets-lasagna/',
#  'www.allrecipes.com/recipe/266023/homemade-lasagna-sheets/',
#  'www.allrecipes.com/recipe/241920/easy-homemade-pasta-dough/',
#  'www.motherthyme.com/2011/11/lasagna-with-homemade-lasagna-noodlelindas.html'
#)


if (FALSE) {
  EmileHenry_oval = new( # lasanga recipe hasn't tested. but I am quite confident.
    Class = 'bakeware', 
    name = 'Emile Henry Henry Oval Individual',
    treatment = c(
      'Chop pork tenderloin or chicken breast',
      'Stir fry with one of Lee-Kum-Kee sauces',
      'Fried ground meat (hot). Lasagna. Shredded mozzarella. Repeat thrice'
    ),
    RobamCT763 = new(
      Class = 'oven', 
      name = 'Robam CT763',
      # 'Robam CT763. Steam, 210\u00b0F/10min. Bake 300\u00b0F/8min' # today
      # 'Robam CT763. Steam, 210\u00b0F/5min. Bake 300\u00b0F/8min' # wait
      # 'Robam CT763: Steam bake, 300\u00b0F/10min' # next time
      program = 'Steam Bake',
      fahrenheit = 300, 
      minute = c(
        7
      )
    )
  )
}
