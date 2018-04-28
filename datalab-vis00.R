library(babynames)
library(dplyr)
library(ggplot2)

glimpse(babynames)

head(babynames)

tail(babynames)

names(babynames)

alison <- babynames %>%
  filter(name == "Alison" | name == "Allison") %>%
  arrange(desc(prop))

plot<-ggplot(alison, aes(x=year, y=prop ,group=name, color=name))+geom_line()

ggsave("datalab-vis00.pdf",plot)