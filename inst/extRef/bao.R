

# source('./inst/extRef/bao.R')

#' @title Other Bao Recipes
#' 
#' @description
#' ..
#' 
#' @examples
#' 
#' diagnose_(
#'  bao,
#'  Daat_bao1, Daat_bao2, Daat_bao3, Daat_bao4,
#'  PinNuo_bao1, PinNuo_bao2, PinNuo_bao3,
#'  KingArthur_bao,
#'  shangshi_bao,
#'  laofangu_bao1,
#'  xiaogaojie_bao,
#'  Dad_bao1, Dad_bao2, Dad_bao3, Dad_bao4, Dad_bao5, Dad_bao6, Dad_bao7
#' )
#' 
#' diagnose_(
#'  lotusBun,
#'  Daat_lotusBun
#' )
#' 
#' KingArthur_huajuan() # this is a different thing
#' 
#' @name Ref_bao
#' @export
xiaogaojie_bao <- function() new(
  Class = 'xiaogaojie', alias_flavor = '\u5305\u5b50', youtube = 'M6DD504lDac',
  flour = 750,
  water = 450,
  yeast = 4,
  portion = c(baozi = 50))

#' @rdname Ref_bao
#' @export
laofangu_bao1 <- function() new(
  Class = 'laofangu', alias_flavor = '\u5305\u5b501', youtube = 'F_4A-tuLJWU',
  pastryFlour = 500,
  yeast = 5,
  sugar_Tbsp = 1,
  bakingPowder = 10,
  water = 270,
  milk = 30,
  portion = c(baozi = 50))



# @rdname Ref_bao
# @export
#laofangu_bao2 <- function() new(
#  Class = 'laofangu', alias_flavor = '\u5305\u5b502', youtube = 'FhTVAgRwg6Q',
# flour = 500, # did not say..
#  yeast = 10,
#  sugar = 7.5,
#bakingPowder = 10, # did not say..
#  water = 300)


#' @rdname Ref_bao
#' @export
Dad_bao1 <- function() new(
  Class = 'dad1966', alias_flavor = '\u9171\u8089\u5305\u5b50', youtube = '1oZPlcHmHZc',
  flour = 500, # either all-purpose flour or high-protein flour: 3:38,
  yeast = 5, sugar = 5, lard = 10, water = 300
)

#' @rdname Ref_bao
#' @export
Dad_bao2 <- function() new(
  Class = 'dad1966', alias_flavor = '\u732a\u8089\u5927\u8471/\u8304\u5b50\u8089\u9985\u5305', 
  youtube = c(a = 'l9gWI891tkE', b = 'YKi0Cn0iNIg'),
  flour = 500, # either all-purpose flour or high-protein flour: 0:32,
  yeast = 5, water = 300)

#' @rdname Ref_bao
#' @export
Dad_bao3 <- function() new(
  Class = 'dad1966', alias_flavor = '\u9999\u83c7\u8089\u4e01\u5305\u5b50', youtube = 'ciBRu8y9ibs',
  flour = 500, yeast = 5, water = 270)

#' @rdname Ref_bao
#' @export
Dad_bao4 <- function() new(
  Class = 'dad1966', alias_flavor = '\u8377\u53f6\u84b8\u5305\u5b50', youtube = 'pARmud-OmB8',
  flour = 500, yeast = 5, water = 280)

#' @rdname Ref_bao
#' @export
Dad_bao5 <- function() new(
  Class = 'dad1966', alias_flavor = '\u7c89\u6761\u7d20\u714e\u5305\u5b50', youtube = 'fr65f2cIduk',
  flour = 500, yeast = 5, sugar = 5, salt = 1, water = 280)

#' @rdname Ref_bao
#' @export
Dad_bao6 <- function() new(
  Class = 'dad1966', alias_flavor = '\u8c46\u6c99\u5305\u5b50', youtube = 'oW2Q_ZpXU74',
  breadFlour = 500, yeast = 5, sugar = 5, water = 270)


#' @rdname Ref_bao
#' @export
Dad_bao7 <- function() new(
  Class = 'dad1966', alias_flavor = '\u7d20\u841d\u535c\u5305', youtube = '2_h05UfwaSE',
  flour = 500, yeast = 5, water = 350)



#' @rdname Ref_bao
#' @export
PinNuo_bao1 <- function() new(
  Class = 'pino', alias_flavor = '\u5305\u5b501', youtube = 'WC9vGp78AIk',
  flour = 500, yeast = 4, bakingPowder = 4, sugar = 2, lard = 15, water = 250)

#' @rdname Ref_bao
#' @export
PinNuo_bao2 <- function() new(
  Class = 'pino', alias_flavor = '\u5305\u5b502', youtube = 'Rn9f38LAWmo',
  flour = 1000, yeast = 4, sugar = 4, water = 520)

#' @rdname Ref_bao
#' @export
PinNuo_bao3 <- function() new(
  Class = 'pino', alias_flavor = '\u5305\u5b503', youtube = 'd3gxTvl3bCg',
  flour = 1000, yeast = 4, bakingPowder = 5,
  sugar = 3, oil = c(Wegmans_vegetable = 30), # original soybean oil
  water = 500)

#' @rdname Ref_bao
#' @export
KingArthur_bao <- function() new(
  Class = 'recipe', alias_flavor = '\u5305\u5b50', 
  kingarthur = 'steamed-pork-buns-xian-rou-bao-recipe',
  flour = 360, milk = 227,
  yeast_tsp = 1, salt_tsp = .5, bakingPowder_tsp = .5, oil = c(Wegmans_vegetable = 14))

#' @rdname Ref_bao
#' @export
KingArthur_huajuan <- function() new(
  Class = 'recipe', alias_flavor = '\u82b1\u5377',
  kingarthur = 'scallion-buns-recipe',
  breadFlour = 480,
  salt_tsp = 2,
  sugar_tsp = 2, # actually granulated sugar
  bakingPowder_tsp = 1/2,
  NaHCO3_tsp = 1/4,
  yeast_tsp = (3+1),
  water40 = 340)


#' @rdname Ref_bao
#' @export
Daat_bao1 <- function() new(
  Class = 'daatgo', alias_flavor = '\u5927\u5305', youtube = 'e5Y75U6GDzo',
  portion = c(bao = 90),
  flour = 400, milk = 226, sugar = 100, bakingPowder = 10, yeast = 6)

#' @rdname Ref_bao
#' @export
Daat_bao2 <- function() new(
  Class = 'daatgo', alias_flavor = '\u732a\u8089\u5305', youtube = 'sI1k0IIAqCs',
  pastryFlour = 510, starch = c(BobsRedMill_tapioca = 50),
  water = 300, sugar = 90, yeast = 5, bakingPowder = 8)


# @rdname Ref_bao
# @export
#Daat_bao3 <- function() new(
#Class = 'daatgo', alias_flavor = '\u53c9\u70e7\u5305', youtube = 'udq9v_Osaho',
# two-dough recipe)

#' @rdname Ref_bao
#' @export
Daat_bao3 <- function() new(
  Class = 'daatgo', alias_flavor = '\u6d41\u6c99\u5305', youtube = '1h6YFS2KGA0',
  pastryFlour = 410, milk = 200, sugar = 120, eggWhite_pc = 1, yeast = 6, bakingPowder = 11)


#' @rdname Ref_bao
#' @export
Daat_bao4 <- function() new(
  Class = 'daatgo', alias_flavor = '\u751f\u714e\u8089\u5305', youtube = 'IbkVuffYX7Y',
  pastryFlour = 410, water = 240, yeast = 4, sugar = 15, bakingPowder = 5, lard = 40)


#' @rdname Ref_bao
#' @export
Daat_lotusBun <- function() new(
  Class = 'daatgo', alias_flavor = '\u8377\u53f6\u997c',
  youtube = 'y9v_g3GSA8U',
  portion = c('\u8377\u53f6\u997c' = 35), # 20-22pcs
  pastryFlour = 400,
  milk = 240,
  sugar = 70,
  yeast = 8)


#' @rdname Ref_bao
#' @export
lotusBun <- function() new(
  Class = 'recipe', alias = 'lotus bun',
  pastryFlour = 400,
  water = 212,
  lard = 8,
  sugar = 25,
  yeast = 8
)

#' @rdname Ref_bao
#' @export
shangshi_bao <- function() new(
  Class = 'shangshikitchen', alias_flavor = '\u5305\u5b50',
  youtube = '-JsUNhE3Kj4',
  flour = 450,
  water = 250, 
  yeast = 6, 
  sugar_tsp = 1/2
)

