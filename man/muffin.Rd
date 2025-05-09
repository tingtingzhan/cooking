% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/recipe_muffin.R
\docType{class}
\name{muffin}
\alias{muffin}
\alias{muffin-class}
\alias{cornbreadMix}
\alias{cornbread}
\title{\linkS4class{muffin} Recipes}
\usage{
cornbreadMix()

cornbread()
}
\description{
Muffin, or batter bread recipes.
}
\examples{
cornbreadMix()
cornbread()

diagnose(
 cornbreadMix,
 subtract(TraderJoes_cornbreadMix, sugar = 10.2),
 subtract(WholeFoods365_cornbreadMix, sugar = 4),
 subtract(Krusteaz_southern_cornbreadMix, sugar = .5),
 BobsRedMill_cornbreadMix,
 subtract(Stonewall_cornbreadMix, sugar = 8.1),
 subtract(Jiffy_cornMuffinMix, sugar = 5.5),
 subtract(Fleischmanns_cornbreadMix, sugar = 5.1)
)

diagnose(
 cornbread,
 subtract(PreppyKitchen_cornbread, sugar = 17),
 subtract(BethanyWeathersby_cornbread, sugar = 105),
 subtract(bluegirl_cornbread, sugar = 108),
 subtract(JoshuaWeissman_cornbread, sugar = 64, brownSugar = 23),
 subtract(nutrition(Jiffy_cornMuffin), sugar = 32),
 subtract(Wegmans_cornbread_recipe, sugar = 88),
 subtract(Wegmans_cornbread, sugar = 10.5),
 subtract(nutrition(WholeFoods365_cornbread), sugar = 64),
 subtract(nutrition(Stonewall_cornbread), sugar = 117),
 subtract(nutrition(TraderJoes_cornbread), sugar = 108),
 subtract(nutrition(Krusteaz_southern_cornbread), sugar = 23),
 subtract(nutrition(BobsRedMill_cornbread), sugar = 7),
 subtract(Albertsons_cornbread, sugar = 25),
 subtract(nutrition(Fleischmanns_cornbread), sugar = 100),
 Quaker_cornbread
)
}
\references{
\url{https://en.wikipedia.org/wiki/Batter_bread}
}
