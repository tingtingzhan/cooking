

#' @title \linkS4class{cookie} Recipes
#' 
#' @description ..
#' 
#' @examples 
#' ginger_cookie()
#' matcha_cookie()
#' adzukiBean_cookie()
#' mungBean_cookie()
#' EarlGrey_cookie2022_Twinings()
#' 
#' blackSesame_cookie2022()
#' # blackSesame_cookie2022() * .4 + Bourbon_cheesecake_Crown() # syrup not good, but idea great!!
#' blackSesame_cookie2022() * .4 + ryeWhisky_cheesecake()
#' 
#' Harney_Uva_cookie()
#' Assam_cookie()
#' Harney_PuErh_cookie()
#' cocoa_cookie()
#' Harney_LapSangSouChong_cookie()
#' Ceylon_cookie()
#' coffee_cookie()
#' lemon_cookie()
#' 
#' nutritionlist(
#'  ginger_cookie(),
#'  cooking:::YokuMoku_cigare()
#' )
#' 
#' new('cookie', flour = c(Wegmans_breadFlr = 200, DaoXiangCun_corn = 374), sugar = 110)
#'
#' 
#' new('cookie', misc = c(SunnyFruit_date = 200), flour = c(Wegmans_pastryFlr = 360), 
#'   dairy = c(Carnation_drymilk = 124))
#' new('cookie', misc = c(SunnyFruit_date = 324), flour = c(Wegmans_pastryFlr = 360))
#' 
#' new('cookie', misc = c(Kirkland_plum = 270), flour = c(Wegmans_pastryFlr = 360), 
#'   dairy = c(Carnation_drymilk = 54))
#'
#' @name cookie-class
#' @export
setClass(Class = 'cookie', contains = 'recipe', prototype = prototype(
  class2 = '\u997c\u5e72',
  dairy_brick = c(Kerrygold_butter = 1),
  egg_pc = c(eggYolk = 9),
  portion = c(
    # do NOT need pie weight!!
    
    # Emile Henry 9in pie dish: 1113; experimented with blackSesame_cookie()
    'Emile Henry 9in, full-edge' = 380,  # Robam: Air Fry 350F, 6min (7min, edge a little too brown after baking with cheesecake filling)
    # raw dough 400 (=1513-1113); baked 380 (=1493-1113); loose water 20/400 = 5%
    # Full edge, edge will crack after baking
    'Emile Henry 9in, half-edge' = 320, # TO CONFIRM!!!! Robam: Air Fry 350F, 7min (this time crust is buried under cheesecake filling!)
    # Half edge: raw dough 268 (=1381-1113); baked x2 (=x20-1113); loose water (x1-x2)/x1 = 5%
    
    'Emile Henry 5in, full-edge' = 445 - 320
  )
))


#' @rdname cookie-class
#' @export
Assam_cookie <- \() new(
  Class = 'cookie',
  review = c(
    'I say no less sugar',
    'Another friend says no more sugar',
    'Gloria wants slightly more sugar'
  ),
  tea = c(Harney_Assam = 52), 
  flour = c(Wegmans_breadFlr = 150, Wegmans_pastryFlr = 150),
  sugar = 126, 
  dairy = c(Carnation_drymilk = 146)#,
  #waterLost = 1007*.05 # yet to experiment and confirm
)



PreppyKitchen_cookie <- \() new(
  Class = 'recipe', author = 'Preppy Kitchen', flavor = 'Butter Cookie',
  flour = c(Wegmans_breadFlr = 120, Wegmans_pastryFlr = 120),
  dairy_brick = c(Kerrygold_butter = 1),
  sugar = 70,
  egg_pc = c(eggYolk = 2)
)





#' @rdname cookie-class
#' @export
cocoa_cookie <- \() new(
  Class = 'cookie',
  sugar = 130, dairy = c(Carnation_drymilk = 150), 
  cocoa = c(KingArthur_Bensdorp = 64),
  flour = c(Wegmans_breadFlr = 330),
  review = 'try')




#' @rdname cookie-class
#' @export
adzukiBean_cookie <- \() new( 
  # raw taste too strong. try cook powdered adzukiBean in butter
  Class = 'cookie',
  # note (to remove; use food processor) = 'Simmer butter and powdered bean over stove',
  bean = c(HaiTai_adzukibean = 240),
  # flour = c(Wegmans_breadFlr = 220), # dont need to be this strong
  flour = c(Wegmans_breadFlr = 100+60), # try.   Cooked adzukiBean+butter needs less flour
  sugar = 124, 
  dairy = c(Carnation_drymilk = 100),
  review = 'try'
)


#' @rdname cookie-class
#' @export
mungBean_cookie <- \() new(Class = 'cookie', adzukiBean_cookie(),
  url = 'https://m.fx361.com/news/2018/0324/3299096.html',
  bean = c(HaiTai_mungbean = 240))




#' @rdname cookie-class
#' @export
coffee_cookie <- \() new(
  Class = 'cookie', coffee = 40, 
  flour = c(Wegmans_pastryFlr = 384), sugar = 100, 
  dairy = c(Carnation_drymilk = 160),
  review = 'try')



#' @rdname cookie-class
#' @export
lemon_cookie <- \() new(
  Class = 'cookie', 
  misc = c(CountryTime_Lemonade = 150), 
  flour = c(Wegmans_breadFlr = 200, Wegmans_pastryFlr = 164), 
  dairy = c(Carnation_drymilk = 160),
  review = 'a little bit too sour.'
) 






#' @rdname cookie-class
#' @export
matcha_cookie <- \() new(
  Class = 'cookie', 
  matcha = c(Ippodo_ikuyo = 40), # not too much more expensive!!
  #matcha = c(Ippodo_sayaka = 40), # 
  flour = c(Wegmans_pastryFlr = 344), 
  sugar = 140, dairy = c(Carnation_drymilk = 160),
  pros = 'Lily Wu & Kuangyi Wen like the old recipe with Sencha_everyday_matcha', # https://www.costco.com/p/-/sencha-naturals-everyday-matcha-green-tea-powder-3-pack-225-lbs-total/100705701
  review = 'retry with ikuyo')


#' @rdname cookie-class
#' @export
blackSesame_cookie2022 <- \() new(
  Class = 'cookie',
  flour = c(Wegmans_breadFlr = 400),
  seed = c(Greenmax_blackSesame = 150),
  egg_pc = c(eggYolk = 10), 
  sugar = 117, dairy = c(Carnation_drymilk = 90), 
  #waterLost = 1157*.05,
  review = c(
    'Kuang-yi, Jun Yan, Qingyan Ma love very much!',
    '2023 Nov: I think this recipe has too much dry milk!!'
  ))




#' @rdname cookie-class
#' @export
Harney_Uva_cookie <- \() new(
  Class = 'cookie', 
  Assam_cookie(), 
  tea = c(Harney_UvaHighlands = 52), 
  review = 'Baked cookie lacks a signature flavor')



#' @rdname cookie-class
#' @export
Harney_PuErh_cookie <- \() new(
  Class = 'cookie', 
  Assam_cookie(), 
  tea = c(Harney_PuErh = 52),
  review = 'Baked cookie lacks a signature flavor')




#' @rdname cookie-class
#' @export
Harney_LapSangSouChong_cookie <- \() new(
  Class = 'cookie', 
  tea = c(Harney_LapSangSouChong = 20), 
  # flour = c(Wegmans_pastryFlr = 380), 
  flour = c(Wegmans_breadFlr = 160, Wegmans_pastryFlr = 200), # try
  sugar = 140, dairy = c(Carnation_drymilk = 144),
  review = 'Brody says very good (all pastry flour)'
) 
  



#' @rdname cookie-class
#' @export
Ceylon_cookie <- \() new(
  Class = 'cookie', 
  # note (legacy) = 'Blade grinder',
  review = 'I like very much',
  tea = c(Stassen_Ceylon = 52), 
  flour = c(Wegmans_pastryFlr = 340), 
  sugar = 146, dairy = c(Carnation_drymilk = 146))



#' @rdname cookie-class
#' @export
ginger_cookie <- \() new(
  Class = 'cookie', 
  review = 'Gloria & Mike\'s true love',
  spice = c(SimplyOrganic_ginger = 16), 
  flour = c(Wegmans_pastryFlr = 370), sugar = 140, 
  dairy = c(Carnation_drymilk = 158))


#' @rdname cookie-class
#' @export
EarlGrey_cookie2022_Twinings <- \() new(
  Class = 'cookie',
  # note (legacy) = 'Blade grinder',
  review = 'Mike loves it. Gloria says cannot stop.  Do NOT try to reduce sugar or dry milk!!',
  tea = c(Twinings_EarlGrey = 48), 
  flour = c(Wegmans_pastryFlr = 360), 
  sugar = 136, dairy = c(Carnation_drymilk = 140))

EarlGrey_cookie_Twinings <- \() new(
  Class = 'cookie',
  # note (legacy) = 'Blade grinder',
  review = 'new experiment.  I want to reduce drymilk a little',
  egg_pc = c(eggYolk = 5), water = 35,
  tea = c(Twinings_EarlGrey = 48), 
  flour = c(Wegmans_pastryFlr = 360), 
  sugar = 100, dairy = c(Carnation_drymilk = 100))



   

PreppyKitchen_thumbprintCookie <- \() new(
  Class = 'recipe',
  dairy_brick = c(Kerrygold_butter = 1),
  sugar = 150,
  egg_pc = c(eggYolk = 2),
  vanilla_tsp = 1,
  flour = c(KingArthur_allPurposeFlr = 360),
  preppykitchen = c('vdR7Wx9PptY' = 'thumbprint-cookies'))






