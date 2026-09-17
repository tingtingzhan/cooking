


Wegmans_pumpkin_cheesecake <- \() new(
  Class = 'nutrition',  
  wegmans = '26402', usd = 1.31/28.3495 * 130, # 1.31/oz
  name = 'Pumpkin\U1f383 Cheesecake',
  servingGram = 132,
  calorie = 470,
  fat = 29, cholesterol = .12, sodium = .33,
  carbohydrate = 47, sugar = 27, addedSugar = 19, protein = 6)




CheesecakeFactory_pumpkin <- \() new(
  Class = 'nutrition',  
  name = 'Pumpkin\U1f383',
  cheesecakefactoryfreezer = 'pumpkin-cheesecake',
  bjs = 'the-cheesecake-factory-at-home-6-pumpkin-cheesecake/3000000000003370251', 
  usd = 16.99/6, # 6 serving's per container
  servingGram = 123, 
  fat = 25, cholesterol = .105, sodium = .26, sugar = 25, addedSugar = 23, protein = 5)




Junior_original <- \() new(
  Class = 'nutrition',  
  wegmans = '656229', usd = 14.29/5,
  juniorscheesecake = 'original-ny-plain-cheesecake',
  # watch this carefully!!! https://www.youtube.com/watch?v=hktm2mvQKc0
  name = 'Original Cheesecake',
  servingGram = 136, 
  calorie = 460,
  fat = 33, cholesterol = .135, sodium = .38, carbohydrate = 30, sugar = 24, addedSugar = 22, protein = 7)



Junior_strawberrySwirl <- \() new(
  Class = 'nutrition',  
  wegmans = '900269', usd = 14.29/5,
  brand = 'Junior\'s', name = 'Strawberry Swirl New York Cheesecake',
  servingGram = 136, fat = 28, cholesterol = .11, sodium = .33, sugar = 29, protein = 6)


