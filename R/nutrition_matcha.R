
# matcha of my choice!

Ippodo_ikuyo <- function() new(
  Class = 'nutrition',
  ippodoglobal = 'matcha175512', ippodojpn = 'matcha105033', ippodousa = 'ikuyo-100',
  name = '\u5e7e\u4e16\u306e\u6614 Ikuyo',
  servingGram = 2, servingTbsp = 2/7, # actual 1Tbsp = 7g
  #servingTsp = 1, # packaging
  usd = 50/100*2, jpy = 3300/100*2, # global site, shipping excluded
  review = c('a cheaper sado-grade matcha I like; use in baking, for now'))
  #review = c(a = 'abc', b = 'abc'))

Koyama_tenju <- function() new(
  Class = 'nutrition',
  koyamaen = '1111020c1',
  name = '\u5929\u6388 Tenju',
  servingGram = 2, 
  servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 6180/20*2,
  review = 'the most expensive product of Koyama-En')

# https://global.ippodo-tea.co.jp/collections/matcha/products/matcha387424
# this is the most expensive product of ippodo (20g 6000JPY)
# but it's not offered on www.ippodo-tea.co.jp
# and it does not have a name ???







# some recipes/commercial sweetened matcha

Ippodo_sayakaThin <- function() new(
  Class = 'ippodo', alias_flavor = '\u660e\u6614 \u8584\u8336\u306e\u70b9\u3066\u65b9',
  matchaSado = c(Ippodo_sayaka = 2), water80 = 60,
  url = 'www.ippodo-tea.co.jp/products/matcha103644')

Ippodo_sayakaThick <- function() new(
  Class = 'ippodo', alias_flavor = '\u660e\u6614 \u6fc3\u8336\u306e\u7df4\u308a\u65b9',
  matchaSado = c(Ippodo_sayaka = 4), water80 = 30,
  url = 'www.ippodo-tea.co.jp/products/matcha103644')


# all other matcha







Sencha_matcha <- function() new(
  Class = 'nutrition', 
  brand = 'Sencha Naturals\U0001f1fa\U0001f1f8', name = '\u62b9\u8336\u7c89 Matcha\U0001f375 Powder',
  extra = new(Class = 'extra', water = 4/3), # tested on bao()
  costco = '100705701',
  url = 'senchanaturals.com/collections/matcha/products/matcha-powder-everyday-organic-4ozbag',
  # usd = 19.95/113*1.5, # official website, Feb 2024
  usd = 49.99/(3*340)*1.5, # Costco, Feb 2024
  servingGram = 1.5, 
  #servingTsp = .5, # on package
  servingTsp = 1.5/7.5*3 # experiment: 1Tbsp = 7.5grams
)




ItoEn_matchaSado <- function() new(
  Class = 'nutrition',
  itoen = 'matcha-love-organic', name = '\u8336\u9053\u7ea7\u62b9\u8336\u7c89 Ceremonial Matcha\U0001f375',
  servingGram = 2, servingTsp = 1,#, # packaging
  usd = 17/20*2)

maeda_matchaSado <- function() new(
  Class = 'nutrition',
  brand = 'maeda-en\u524d\u7530\u5712\U0001f1ef\U0001f1f5', name = '\u8336\u9053\u7ea7\u62b9\u8336\u7c89 Ceremonial Matcha\U0001f375',
  url = 'maeda-en.com/collections/matcha-powder/products/maeda-en-ceremonial-matcha', # usd = 26.30/28*2, 
  servingGram = 2, servingTsp = 1, # packaging, also accurate!!
  usd = 23.24/28*2)

Ippodo_sayaka <- function() new(
  Class = 'nutrition',
  ippodoglobal = 'matcha173512', ippodojpn = 'matcha103644', ippodousa = 'sayaka-100g',
  name = '\u660e\u6614 Sayaka',
  servingGram = 2, servingTbsp = 2/7, # actual 1Tbsp = 7g
  #servingTsp = 1, # packaging
  usd = 75/100*2, jpy = 6000/100*2) # global site, shipping excluded

Ippodo_seiun <- function() new(
  Class = 'nutrition',
  ippodoglobal = 'matcha102044', ippodojpn = 'matcha102044', ippodousa = 'seiun',
  name = '\u9752\u96f2 Seiun',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  usd = 45/40*2, jpy = 3000/40*2) # global site, shipping excluded



Koyama_kiwamiChoan <- function() new(
  Class = 'nutrition',
  koyamaen = '1g36020c1', name = '\u6975\u9577\u5b89 Kiwami Choan',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 4680/20*2)

Koyama_choan <- function() new(
  Class = 'nutrition',
  koyamaen = '1121020c1-1121040c1', name = '\u9577\u5b89 Choan',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 3180/20*2)

Koyama_unkaku <- function() new(
  Class = 'nutrition',
  koyamaen = '1141020c1-1141100c6', name = '\u96f2\u9db4 Unkaku',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 1730/20*2)



Koyama_eiju <- function() new(
  Class = 'nutrition',
  koyamaen = '1131020c1-1131040c1', name = '\u6c38\u5bff Eiju',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 2380/20*2)

Koyama_kinrin <- function() new(
  Class = 'nutrition',
  koyamaen = '1151020c1-1151100c6', name = '\u91d1\u8f2a Kinrin',
  servingGram = 2, servingTbsp = 2/7, # using ikuyo/sayaka data
  jpy = 1380/20*2)












ItoEn_culinary_matcha <- function() new(
  Class = 'nutrition',
  name = '\u70d8\u57f9\u7ea7\u62b9\u8336\u7c89 Culinary Matcha\U0001f375', itoen = 'matcha-love-culinary',
  servingGram = 2, servingTsp = 1, # packaging
  usd = 19/100*2)

maeda_culinary_matcha <- function() new(
  Class = 'nutrition',
  brand = 'maeda-en\u524d\u7530\u5712\U0001f1ef\U0001f1f5', name = '\u70d8\u57f9\u7ea7\u62b9\u8336\u7c89 Culinary Matcha\U0001f375',
  url = 'maeda-en.com/collections/matcha-powder/products/culinary-matcha',
  servingGram = 2, servingTsp = 1, # packaging?
  usd = 9/28*2)

maeda_universal_matcha <- function() new(
  Class = 'nutrition',
  brand = 'maeda-en\u524d\u7530\u5712\U0001f1ef\U0001f1f5', name = '\u56db\u5b63\u7ea7\u62b9\u8336\u7c89 Universal Matcha\U0001f375',
  url = 'maeda-en.com/collections/matcha-powder/products/maeda-en-shiki-matcha',
  servingGram = 2, servingTsp = 1, # packaging?
  usd = 14.20/28*2)
