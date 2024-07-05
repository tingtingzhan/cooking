



if (FALSE) {
  diagnose_(
    Daat_soupBao,
    xiaogaojie_soupBao,
    PinNuo_soupBao,
    shangshi_soupBao,
    amanda_soupBao
    # whiteSwan_soupBao, # not correct??
  )
  
}


Daat_soupBao <- function() new(
  Class = 'daatgo', alias_flavor = '\u704c\u6c64\u5305',
  youtube = 'duldrFRGipM',
  flour = 300,
  salt = 3,
  water40 = 175,
  lard = 10)

xiaogaojie_soupBao <- function() new(
  Class = 'xiaogaojie', alias_flavor = '\u704c\u6c64\u5305',
  youtube = 'OMeWvORraxk',
  flour = 400,
  water70 = 250)

PinNuo_soupBao <- function() new(
  Class = 'pino', alias_flavor = '\u704c\u6c64\u5305',
  youtube = 'EyG2mTF23Vc',
  flour = 500,
  boilingWater = 100,
  salt = 3,
  water = 150)

shangshi_soupBao <- function() new(
  Class = 'shangshikitchen', alias_flavor = '\u704c\u6c64\u5305',
  youtube = 'SXCS1MFtA6s',
  flour = 300,
  water70 = 160,
  salt_tsp = 1/4,
  oil_tsp = c(Wegmans_vegetable = 1)
)

amanda_soupBao <- function() new(
  Class = 'recipe', author = '\u66fc\u98df\u6162\u8bed', alias_flavor = '\u704c\u6c64\u5305',
  youtube = 'C4khQGM-K20',
  flour = 200,
  water70 = 105,
  salt_tsp = 1/8)

whiteSwan_soupBao <- function() new(
  Class = 'recipe', author = '\u5929\u9e45\u7f8e\u98df', alias_flavor = '\u704c\u6c64\u5305',
  youtube = 'WVPhZdQQ5pc',
  flour = 250,
  boilingWater = 160,
  water = 160,
  eggWhite_pc = 1,
  oil = c(Wegmans_corn = 3))
