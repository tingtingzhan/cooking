


# Gelatin leaves 
# \url{https://dessertisans.com/insight/how-to-convert-gelatin/}
# \describe{
# \item{`'titanium'`}{leaves have a bloom strength of 100 and weigh 5 grams.}
# \item{`'bronze'`}{leaves have a bloom strength of 125 and weigh 3.3 grams.}
# \item{`'silver'`}{leaves have a bloom strength of 160 and weigh 2.5 grams.}
# \item{`'gold'`}{leaves have a bloom strength of 200 and weigh 2 grams.}
# \item{`'platinum'`}{leaves have a bloom strength of 250 and weigh 1.7 grams.}
# }





Champion_gold_gelatin <- \() new(
  Class = 'nutrition', 
  name = 'Gold Leaf Gelatin', alias = '\u5409\u5229\u4e01\u7247',
  brand = style_hyperlink(url = 'https://www.championproteins.com/store/p5/GelatinSheetsGoldLeaf.html', text = 'Champion Proteins\U1f1fa\U1f1f8') |>
    c(), 
  amazon = 'B00A3WZTJM',
  usd = 58.99/1000*100,
  pieceGram = 2, piece_fmt = '%.1f\U1F343',
  servingGram = 100, protein = 89, carbohydrate = .5, sugar = .5, sodium = .15)
