

MgCl2 <- function() new(
  Class = 'nutrition',
  name = '\u76d0\u5364 Magnesium Chloride MgCl\u2082',
  pubchem = 'Magnesium-chloride-_MgCl2',
  servingGram = 1)
  

Ohsawa_nigari <- function() new(
  Class = 'nutrition',
  brand = unclass(style_hyperlink(url = 'https://www.goldminenaturalfoods.com/collections/ohsawa/products/3004-1001', text = 'Ohsawa\u6afb\u6fa4\u5982\u4e00\U1f1ef\U1f1f5')), 
  name = '\u82e6\u6c41/\u6ef7\u6c41 Nigari',
  amazon = 'B0019L8KUG',
  usd = 8.79/454*6,
  servingGram = 6,
  servingTsp = 1, # packaging
  sodium = 1.966)

Morton_salt <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(text = 'Morton\U1f1fa\U1f1f8', url = 'https://www.mortonsalt.com/article/mortonplain-table-salt-nutritional-facts/')),
  name = '\u76d0 Salt\U1f9c2',
  servingTsp = 1/4, 
  servingGram = 1.5, # packaging!
  # different size of salt rock has different density!!!
  sodium = 23/(23+35.5) * 1.5)


Ajinomoto_msg <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(url = 'https://www.ajinomoto.com/msg', text = 'Ajinomoto\u5473\u306e\u7d20\U1f1ef\U1f1f5')), 
  name = '\u5473\u7cbe Monosodium Glutamate',
  # 'www.yamibuy.com/zh/p/msg-aji-no-motot-in-bag-1lb/1148033131'
  usd = 3.99/454,
  servingGram = 1, 
  servingTsp = 1/4, # packaging
  pubchem = 'Monosodium-Glutamate',
  # MSG is C5H8NO4Na
  # sodium 23/(12*5+2*8+14+16*4+23) = 12.99%
  sodium = .125)


ArmHammer_NaHCO3 <- function() new(
  Class = 'nutrition', 
  brand = unclass(style_hyperlink(url = 'https://www.armandhammer.com/en/baking-soda/baking-soda-products/pure-baking-soda/baking-soda-box-8-oz', text = 'Arm & Hammer\U1f1fa\U1f1f8')),
  name = '\u5c0f\u82cf\u6253 Baking Soda, NaHCO\u2083',
  pubchem = '516892',
  servingGram = .6, 
  servingTsp = 1/8, # packaging
  sodium = 23/(23+1+12+16*3) * .6)

Na2CO3 <- function() new(
  Class = 'nutrition', # presume no volumn change when baking
  name = '\u78b1\u9762 Soda Ash Na\u2082CO\u2083',
  pubchem = '10340',
  # 2 NaHCO3 = Na2CO3 + H2O + CO2
  # weight on left: 2 * (23+1+12+16*3)
  # weight on right: (23*2+12+16*3)
  servingTsp = ArmHammer_NaHCO3()@servingTsp, 
  servingGram = ArmHammer_NaHCO3()@servingGram * (23*2+12+16*3) / (2*(23+1+12+16*3)),
  sodium = ArmHammer_NaHCO3()@sodium,
  review = 'Made from baking Arm and Hammer baking soda, 200\u00b0F/30min')


Wegmans_bakingPowder <- function() new(
  Class = 'nutrition', 
  name = '\u6ce1\u6253\u7c89 Baking Powder, 2x Acting',
  wegmans = 23397L, usd = 1.99/383,
  contain = c('NaHCO\u2083', 'Ca(H\u2082PO\u2084)\u2082', 'corn starch'),
  servingTsp = 1/8, servingGram = 230/383, sodium = .05)


TraderJoes_bakingPowder <- function() new(
  Class = 'nutrition', fdc = 172804L,
  brand = 'Trader Joe\'s\U1f1fa\U1f1f8', 
  name = '\u6ce1\u6253\u7c89 Baking Powder, 2x Acting', 
  contain = c('NaHCO\u2083', 'Ca(H\u2082PO\u2084)\u2082', 'corn starch'),
  amazon = 'B00AAOVIB6', usd = 12.93/(2*383),
  servingGram = 230/383, # 0.6g 
  servingTsp = 1/8, # packaging
  sodium = .055)


Wegmans_water <- function() new(
  Class = 'nutrition', 
  name = 'Purified Water',
  wegmans = 259520L, usd = 1.29, # 2023-11-09
  servingGram = 3785.41, servingCup = 16, # one gallon 
  water = 3785.41)

