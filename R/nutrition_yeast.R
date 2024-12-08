


# https://www.fleischmannsyeast.com/product-page/
# https://www.fleischmannsyeast.com/frequently-asked-questions/
# Q: WHAT IS THE DIFFERENCE BETWEEN INSTANT YEAST, BREAD MACHINE YEAST AND RAPIDRISE® INSTANT YEAST?
# A: Mainly names, but these are all the same yeast! Use interchangeably.


Fleischmanns_instant <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], 
  fleischmannsyeast = 4L,
  name = 'Instant Yeast', alias = '\u901f\u53d1\u9175\u6bcd',
  servingGram = 7.09, servingTsp = 2.25#,
  #machine = function(x) 'Protect Fleischmanns RapidRise instant yeast with flour'
  )



Fleischmanns_active <- function() new(
  Class = 'nutrition', call = match.call()[[1L]], fleischmannsyeast = 2L,
  name = 'Active Dry Yeast',
  servingGram = 7.09, servingTsp = 2.25)







  
