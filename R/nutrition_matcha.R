
# matcha of my choice!

Ippodo_ikuyo <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  ippodoglobal = 'matcha175512', ippodojpn = 'matcha105033', ippodousa = 'ikuyo-100',
  name = 'Ikuyo', alias = '\u5e7e\u4e16\u306e\u6614',
  servingGram = 2, servingTbsp = 2/7, # actual 1Tbsp = 7g
  #servingTsp = 1, # packaging
  usd = 81/100*2, jpy = 6000/100*2, # global site, shipping excluded
  date = as.Date('2026-09-02'),
  review = c('a cheaper sado-grade matcha I like; use in baking, for now'))



Marukyu_tenju <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  marukyu = '1111020c1', name = 'Tenju', alias = '\u5929\u6388',
  servingGram = 2, 
  servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 40120/40*2, date = as.Date('2026-09-02'),
  review = 'the most expensive product of Marukyu Koyama-En')


# all other matcha

Sencha_matcha <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  brand = style_hyperlink(url = 'https://senchanaturals.com/collections/shop-all/products/emperors-matcha-4oz', text = 'Sencha Naturals\U1f1fa\U1f1f8') |> c(),
  name = 'Emperor\'s Matcha\U1f375',
  usd = 54.95/120*1.5, date = as.Date('2026-09-02'), # 120g package
  servingGram = 1.5, servingTsp = .5, # on package
  calorie = 5, carbohydrate = 1)

Sencha_everyday_matcha <- \() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  #brand = style_hyperlink(url = 'https://senchanaturals.com/collections/pure-matcha-powders/products/organic-matcha-powder', text = 'Sencha Naturals\U1f1fa\U1f1f8') |> c(), 
  brand = 'Sencha Naturals\U1f1fa\U1f1f8', # no longer on official website, Sep 2026
  name = '\u62b9\u8336\u7c89 Matcha\U1f375 Powder',
  extra = new(Class = 'extra', water = 4/3), # tested on bao()
  usd = 54.99/(3*340)*1.5, costco = '100705701', date = as.Date('2026-09-02'),
  servingGram = 1.5, 
  #servingTsp = .5, # on package
  servingTsp = 1.5/7.5*3, # experiment: 1Tbsp = 7.5grams
  calorie = 5, carbohydrate = 1,
  superior = 'Ippodo_ikuyo',
  review = 'too bitter'
)


ItoEn_matcha <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  itoen = 'matcha-love-organic', name = 'Ceremonial Matcha\U1f375',
  servingGram = 2, servingTsp = 1,#, # packaging
  usd = 17/20*2)

maeda_matcha <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Ceremonial Matcha\U1f375',
  maeda = 'maeda-en-ceremonial-matcha', jfc = '18422',
  servingGram = 2, servingTsp = 1, # packaging, also accurate!!
  usd = 23.24/28*2)

Ippodo_sayaka <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  ippodoglobal = 'matcha173512', ippodojpn = 'matcha103644', ippodousa = 'sayaka-100g',
  name = 'Sayaka', alias = '\u660e\u6614',
  servingGram = 2, servingTbsp = 2/7, # actual 1Tbsp = 7g
  #servingTsp = 1, # packaging
  usd = 119/100*2, jpy = 11000/100*2, date = as.Date('2026-09-22'),
  superior = 'Ippodo_ikuyo')

Ippodo_seiun <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  ippodoglobal = 'matcha102044', ippodojpn = 'matcha102044',
  ippodousa = 'seiun',
  name = 'Seiun', alias = '\u9752\u96f2',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  usd = 67/40*2, date = as.Date('2026-09-22'))


Marukyu_kiwamiChoan <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  marukyu = '1g36020c1', name = 'Kiwami Choan', alias = '\u6975\u9577\u5b89',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 24720/40*2, date = as.Date('2026-09-22'))


Marukyu_choan <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  marukyu = '1121020c1', name = 'Choan', alias = '\u9577\u5b89',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 3180/20*2,
  superior = 'Marukyu_tenju')

Marukyu_unkaku <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  marukyu = '1141020c1', name = 'Unkaku', alias = '\u96f2\u9db4',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 1730/20*2,
  superior = 'Marukyu_tenju')

Marukyu_eiju <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  marukyu = '1131020c1', name = 'Eiju', alias = '\u6c38\u5bff',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 2380/20*2,
  superior = 'Marukyu_tenju')


Marukyu_kinrin <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  marukyu = '1151020c1', name = 'Kinrin', alias = '\u91d1\u8f2a',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 1380/20*2,
  superior = 'Marukyu_tenju')









ItoEn_culinary_matcha <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Culinary Matcha\U1f375', 
  itoen = 'matcha-love-culinary', jfc = '40360',
  servingGram = 2, servingTsp = 1, # packaging
  usd = 19/100*2)

maeda_culinary_matcha <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Culinary Matcha\U1f375',
  maeda = 'culinary-matcha', jfc = '18424',
  servingGram = 2, servingTsp = 1, # packaging?
  usd = 9/28*2)

maeda_universal_matcha <- \() new(
  Class = 'nutrition', call = match.call()[[1L]],
  name = 'Universal Matcha\U1f375',
  maeda = 'maeda-en-shiki-matcha', jfc = '05448',
  servingGram = 2, servingTsp = 1, # packaging?
  usd = 14.20/28*2)
