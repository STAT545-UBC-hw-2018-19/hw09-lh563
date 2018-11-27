gap_tsv <- system.file("extdata", "gapminder.tsv", package = "gapminder")
write.table(gap_tsv, "gapminder.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)


library(gapminder)
library(dplyr)
p <- gapminder %>% 
	filter(country=="Canada") %>% 
	select(country, year, lifeExp)

write.table(p, "Canada_gap_data.tsv",
						sep = "\t", row.names = FALSE, quote = FALSE)
