

sweetPotatoNoodle_soaked <- function() new(
  Class = 'recipe',
  alias_flavor = '\u7ea2\u85af\u7c89', 
  alias_class = '\u6ce1\u53d1',
  grain = c(JayOne_sweetPotato = 50),
  water95 = 100
)


sweetPotatoNoodle <- function() new(
  Class = 'recipe',
  homemade = c(sweetPotatoNoodle_soaked = 150),
  boilingWater = 50
)