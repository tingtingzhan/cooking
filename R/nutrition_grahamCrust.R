


Keebler_grahamCrust <- \() new(
  Class = 'nutrition', 
  brand = 'Keebler', name = 'Graham Crust',
  url = 'https://www.keebler.com/en/sweet-treat/pie-crusts/graham/ready-crust-graham-cracker',
  wegmans = '872511', usd = 2.99/170*21,
  servingGram = 21, fat = 5, sodium = .115, sugar = 6, addedSugar = 5, protein = 1)



WholeFoods365_grahamCrust <- \() new(
  Class = 'nutrition',  wholefoods = 'b08ly5bys5',
  name = 'Graham Crust',
  servingGram = 21, 
  calorie = 110,
  fat = 6, sodium = .045, addedSugar = 6)



MiDel_grahamCrust <- \() new(
  Class = 'nutrition', 
  brand = style_hyperlink(url = 'https://midelcookies.com/products/graham-style-pie-crust/', text = 'MiDel') |> c(), 
  name = 'Graham Crust',
  servingGram = 25, 
  calorie = 120,
  fat = 5, sodium = .14, addedSugar = 8, protein = 1)


MiDel_chocolateCrust <- \() new(
  Class = 'nutrition',  
  url = 'https://midelcookies.com/products/chocolate-snap-pie-crust/',
  servingGram = 25, fat = 4.5, sodium = .07, sugar = 9, protein = 1)


DiamondNuts_chocolateCrust <- \() new(
  Class = 'nutrition',  
  url = 'https://shop.diamondnuts.com/collections/nut-pie-crusts/products/6-oz-ready-to-use-chocolate-nut-pie-crust',
  wegmans = '917605',
  servingGram = 21, fat = 7, sodium = .08, sugar = 4, protein = 2)
# https://shop.diamondnuts.com/collections/nut-pie-crusts

