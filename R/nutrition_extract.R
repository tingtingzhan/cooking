


setClass(Class = 'vanilla', contains = 'nutrition', prototype = prototype(
  alias = '\u9999\u8349\u7cbe',
  fdc = 173471L,
  servingGram = 100,
  servingCup = 100/208, # see tab 'Measures' on fdc website
  water = 52.6, fat = .06, sugar = 12.6, sodium = .009, protein = .06
))



NielsenMassey_vanilla <- \() new(
  Class = 'vanilla', 
  nielsenmassey = 'pure-vanilla-extract',
  name = 'Vanilla Extract')

NielsenMassey_vanilla_paste <- \() new(
  Class = 'vanilla', 
  alias = '\u9999\u8349\u6ce5',
  nielsenmassey = 'pure-vanilla-bean-paste',
  name = 'Vanilla Bean Paste')


NielsenMassey_Madagascar <- \() new(
  Class = 'vanilla',  
  nielsenmassey = 'madagascar-bourbon-pure-vanilla-extract',
  name = 'Madagascar\U0001f1f2\U0001f1ec Bourbon Vanilla Extract',
  costco = '100854905')

NielsenMassey_Madagascar_paste <- \() new(
  Class = 'vanilla',
  alias = '\u9999\u8349\u6ce5',
  nielsenmassey = 'madagascar-bourbon-pure-vanilla-bean-paste',
  name = 'Madagascar\U0001f1f2\U0001f1ec Bourbon Vanilla Bean Paste',
  costco = '4201023881')


NielsenMassey_Madagascar_powder <- \() new(
  Class = 'vanilla',  
  alias = '\u9999\u8349\u7c89',
  nielsenmassey = 'madagascar-bourbon-pure-vanilla-powder',
  name = 'Madagascar\U0001f1f2\U0001f1ec Bourbon Vanilla Powder',
  walmart = '36527805')



NielsenMassey_Indonesian <- \() new(
  Class = 'vanilla',  
  nielsenmassey = 'indonesian-pure-vanilla-extract',
  name = 'Indonesian\U0001f1ee\U0001f1e9 Vanilla Extract')


NielsenMassey_Tahitian <- \() new(
  Class = 'vanilla',  
  nielsenmassey = 'tahitian-pure-vanilla-extract',
  name = 'Tahitian\U0001f1f5\U0001f1eb Vanilla Extract')


NielsenMassey_Ugandan <- \() new(
  Class = 'vanilla',  
  nielsenmassey = 'ugandan-pure-vanilla-extract',
  name = 'Ugandan\U0001f1fa\U0001f1ec Vanilla Extract')


NielsenMassey_Mexican <- \() new(
  Class = 'vanilla',  
  nielsenmassey = 'mexican-pure-vanilla-extract',
  name = 'Mexican\U1f1f2\U1f1fd Vanilla Extract',
  costco = '4000138522')



# https://www.mccormick.com/spices-and-flavors/extracts-and-food-colors/extracts/pure-vanilla-extract
