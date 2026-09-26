



if (FALSE) {
  nutritionlist(
    Daat_soupBao(),
    xiaogaojie_soupBao(),
    PinNuo_soupBao(),
    shangshi_soupBao(),
    amanda_soupBao()
    # whiteSwan_soupBao(), # not correct??
  )
  
}


Daat_soupBao <- \() new(
  Class = 'recipe', flavor = '\u704c\u6c64\u5305',
  daatgo = 'duldrFRGipM',
  flour = c(KingArthur_allPurposeFlr = 300),
  salt = 3,
  water40 = 175,
  lard = 10)

xiaogaojie_soupBao <- \() new(
  Class = 'recipe', flavor = '\u704c\u6c64\u5305',
  xiaogaojie = 'OMeWvORraxk',
  flour = c(KingArthur_allPurposeFlr = 400),
  water70 = 250)

PinNuo_soupBao <- \() new(
  Class = 'recipe', flavor = '\u704c\u6c64\u5305',
  pino = 'EyG2mTF23Vc',
  flour = c(KingArthur_allPurposeFlr = 500),
  boilingWater = 100,
  salt = 3,
  water = 150)

shangshi_soupBao <- \() new(
  Class = 'recipe', flavor = '\u704c\u6c64\u5305',
  shangshikitchen = 'SXCS1MFtA6s',
  flour = c(KingArthur_allPurposeFlr = 300),
  water70 = 160,
  salt_tsp = 1/4,
  oil_tsp = c(Wegmans_vegetable_oil = 1)
)

amanda_soupBao <- \() new(
  Class = 'recipe', author = '\u66fc\u98df\u6162\u8bed', flavor = '\u704c\u6c64\u5305',
  youtube = 'C4khQGM-K20',
  flour = c(KingArthur_allPurposeFlr = 200),
  water70 = 105,
  salt_tsp = 1/8)

whiteSwan_soupBao <- \() new(
  Class = 'recipe', author = '\u5929\u9e45\u7f8e\u98df', flavor = '\u704c\u6c64\u5305',
  youtube = 'WVPhZdQQ5pc',
  flour = c(KingArthur_allPurposeFlr = 250),
  boilingWater = 160,
  water = 160,
  egg_pc = c(eggWhite = 1),
  oil = c(Wegmans_corn_oil = 3))
