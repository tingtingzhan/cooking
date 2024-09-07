

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
#' Harney_UvaHighlands_cookie()
#' Assam_cookie()
#' Harney_PuErh_cookie()
#' cocoa_cookie()
#' Harney_LapSangSouChong_cookie()
#' Ceylon_cookie()
#' coffee_cookie()
#' lemon_cookie()
#' 
#' new('cookie', flour = c(Wegmans_bread = 200, DaoXiangCun_corn = 374), sugar = 110)
#'
#' 
#' new('cookie', flavor = c(SunnyFruit_date = 200), pastryFlour = 360, 
#'   drymilk = 124)
#' new('cookie', flavor = c(SunnyFruit_date = 324), pastryFlour = 360)
#' 
#' new('cookie', flavor = c(Kirkland_plum_dried = 270), pastryFlour = 360, 
#'   drymilk = 54)
#'
#' @name cookie
#' @aliases cookie-class
#' @export
setClass(Class = 'cookie', contains = 'recipe', prototype = prototype(
  alias_class = '\u997c\u5e72',
  butter = 227,
  eggYolk_pc = 9,
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


#' @rdname cookie
#' @export
Assam_cookie <- function() new(
  Class = 'cookie', alias_flavor = 'Assam',
  review = c(
    'I say no less sugar',
    'Inna says no more sugar',
    'Gloria wants slightly more sugar'
  ),
  flavor = c(Harney_Assam = 52), 
  flour = c(Wegmans_bread = 150, Wegmans_pastry = 150),
  sugar = 126, drymilk = 146,
  waterLost = 1007*.05 # yet to experiment and confirm
)



PreppyKitchen_cookie <- function() new(
  Class = 'recipe', author = 'Preppy Kitchen', alias_flavor = 'Butter Cookie',
  flour = c(Wegmans_bread = 120, Wegmans_pastry = 120),
  butter = 227,
  sugar = 70,
  eggYolk_pc = 2
)





#' @rdname cookie
#' @export
cocoa_cookie <- function() new(
  Class = 'cookie',
  sugar = 130, drymilk = 150, 
  cocoa = 64,
  flour = c(Wegmans_bread = 330),
  review = 'try')




#' @rdname cookie
#' @export
adzukiBean_cookie <- function() new( 
  # raw taste too strong. try cook powdered adzukiBean in butter
  Class = 'cookie',
  note = 'Simmer butter and powdered bean over stove',
  adzukibean = 240,
  # flour = c(Wegmans_bread = 220), # dont need to be this strong
  flour = c(Wegmans_bread = 100+60), # try.   Cooked adzukiBean+butter needs less flour
  sugar = 124, drymilk = 100,
  review = 'try'
)


#' @rdname cookie
#' @export
mungBean_cookie <- function() new(Class = 'cookie', adzukiBean_cookie(),
  url = 'https://m.fx361.com/news/2018/0324/3299096.html',
  mungbean = 240)




#' @rdname cookie
#' @export
coffee_cookie <- function() new(
  Class = 'cookie', coffee = 40, 
  pastryFlour = 384, sugar = 100, drymilk = 160,
  review = 'try')



#' @rdname cookie
#' @export
lemon_cookie <- function() new(
  Class = 'cookie', flavor = c(CountryTime_Lemonade = 150), 
  flour = c(Wegmans_bread = 200, Wegmans_pastry = 164), 
  drymilk = 160,
  review = 'a little bit too sour.'
) 






#' @rdname cookie
#' @export
matcha_cookie <- function() new(
  Class = 'cookie', 
  note = 'Water bath to melt butter only',
  matcha = c(Ippodo_ikuyo = 40), # not too much more expensive!!
  #matcha = c(Ippodo_sayaka = 40), # 
  pastryFlour = 344, 
  sugar = 140, drymilk = 160,
  pros = 'Lily Wu & Kuangyi Wen like the old recipe with Sencha_everyday_matcha',
  review = 'retry with ikuyo')


#' @rdname cookie
#' @export
blackSesame_cookie2022 <- function() new(
  Class = 'cookie',
  breadFlour = c(Wegmans_bread = 400),
  blackSesame = 150,
  eggYolk_pc = 10, 
  sugar = 117, drymilk = 90, 
  waterLost = 1157*.05,
  review = c(
    'Kuang-yi, Jun Yan, Qingyan Ma love very much!',
    '2023 Nov: I think this recipe has too much dry milk!!'
  ))




#' @rdname cookie
#' @export
Harney_UvaHighlands_cookie <- function() new(
  Class = 'cookie', 
  Assam_cookie(), 
  flavor = c(Harney_UvaHighlands = unname(Assam_cookie()@flavor)),
  review = 'Baked cookie lacks a signature flavor')



#' @rdname cookie
#' @export
Harney_PuErh_cookie <- function() new(
  Class = 'cookie', Assam_cookie(), flavor = c(Harney_PuErh = unname(Assam_cookie()@flavor)),
  review = 'Baked cookie lacks a signature flavor')




#' @rdname cookie
#' @export
Harney_LapSangSouChong_cookie <- function() new(
  Class = 'cookie', 
  flavor = c(Harney_LapSangSouChong = 20), 
  # pastryFlour = 380, 
  flour = c(Wegmans_bread = 160, Wegmans_pastry = 200), # try
  sugar = 140, drymilk = 144,
  review = 'Brody says very good (all pastry flour)'
) 
  



#' @rdname cookie
#' @export
Ceylon_cookie <- function() new(
  Class = 'cookie', 
  note = 'Blade grinder; Water bath',
  review = 'I like very much',
  flavor = c(Stassen_Ceylon = 52), 
  pastryFlour = 340, 
  sugar = 146, drymilk = 146)



#' @rdname cookie
#' @export
ginger_cookie <- function() new(
  Class = 'cookie', 
  note = 'Do NOT use bread flour.',
  review = 'Gloria & Mike\'s true love',
  ginger = 16, 
  pastryFlour = 370, sugar = 140, 
  drymilk = 158)


#' @rdname cookie
#' @export
EarlGrey_cookie2022_Twinings = function() new(
  Class = 'cookie', alias_flavor = 'Earl Grey',
  note = 'Blade grinder',
  review = 'Mike loves it. Gloria says cannot stop.  Do NOT try to reduce sugar or dry milk!!',
  tea = c(Twinings_EarlGrey = 48), 
  pastryFlour = 360, 
  sugar = 136, drymilk = 140)

EarlGrey_cookie_Twinings = function() new(
  Class = 'cookie', alias_flavor = 'Earl Grey',
  note = 'Blade grinder',
  review = 'new experiment.  I want to reduce drymilk a little',
  eggYolk_pc = 5, water = 35,
  tea = c(Twinings_EarlGrey = 48), 
  pastryFlour = 360, 
  sugar = 100, drymilk = 100)



   

PreppyKitchen_thumbprintCookie <- function() new(
  Class = 'recipe',
  butter = 227,
  sugar = 150,
  eggYolk_pc = 2,
  vanilla_tsp = 1,
  flour = 360,
  preppykitchen = c('vdR7Wx9PptY' = 'thumbprint-cookies'))






