
vanillaExtract_ <- function() new(
  Class = 'nutrition',
  fdc = 173471L,
  servingGram = 100,
  servingCup = 100/208, # see tab 'Measures' on fdc website
  water = 52.6, fat = .06, sugar = 12.6, sodium = .009, protein = .06
)

NielsenMassey_vanilla <- function() new(
  Class = 'nutrition', vanillaExtract_(),
  nielsenmassey = 'pure-vanilla-extract',
  name = '\u9999\u8349\u7cbe Vanilla')

NielsenMassey_Madagascar <- function() new(
  Class = 'nutrition', vanillaExtract_(),
  nielsenmassey = 'madagascar-bourbon-pure-vanilla-extract',
  name = '\u9999\u8349\u7cbe Madagascar\U0001f1f2\U0001f1ec Bourbon Vanilla')

NielsenMassey_Indonesian <- function() new(
  Class = 'nutrition', vanillaExtract_(),
  nielsenmassey = 'indonesian-pure-vanilla-extract',
  name = '\u9999\u8349\u7cbe Indonesian\U0001f1ee\U0001f1e9 Bourbon Vanilla')

NielsenMassey_Tahitian <- function() new(
  Class = 'nutrition', vanillaExtract_(),
  nielsenmassey = 'tahitian-pure-vanilla-extract',
  name = '\u9999\u8349\u7cbe Tahitian\U0001f1f5\U0001f1eb Bourbon Vanilla')

NielsenMassey_Ugandan <- function() new(
  Class = 'nutrition', vanillaExtract_(),
  nielsenmassey = 'ugandan-pure-vanilla-extract',
  name = '\u9999\u8349\u7cbe Ugandan\U0001f1fa\U0001f1ec Bourbon Vanilla')


# https://www.mccormick.com/spices-and-flavors/extracts-and-food-colors/extracts/pure-vanilla-extract
