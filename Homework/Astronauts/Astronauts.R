library(tidyverse)

astronauts <- read_csv("HomeWork/Astronauts/Astronauts.csv", show_col_types = F)

dim(astronauts)
## There are 357 Astronauts and 19 columns

head(astronauts)

str(astronauts)

female_astronauts <- astronauts %>% 
  filter(Gender == "Female")

female_astronauts
nrow(female_astronauts) ## There are 50 Female Astronauts


female_astronauts %>% 
  select(Name, `Military Rank`, `Military Branch`)


female_astronauts %>% 
  filter(Status == "Active") %>% 
  nrow()
## There are 13 Active Female Astronauts

astronauts %>% 
  ggplot() +
  geom_bar(aes(x = `Space Walks`, fill = Gender))


female_astronauts %>% 
  filter(`Space Walks` >= 1 ) %>% 
  select(Name, Gender, `Space Walks`) %>% 
  arrange(Name)


## 8
astronauts %>% 
  ggplot(aes(x = `Space Walks`)) +
  geom_boxplot() +
  coord_flip()

IQR(astronauts$`Space Walks`)


astronauts %>% 
  ggplot(aes(x = `Space Walks`, color = Gender)) +
  geom_boxplot() +
  coord_flip()


astronauts %>% 
  ggplot() +
  geom_histogram(aes(x = `Space Walks`), binwidth = 1, fill = "red")


astronauts %>% 
  group_by(Gender) %>% 
  summarise(Average = mean(`Space Walks`))


astronauts %>% 
  ggplot() +
  geom_point(aes(x = `Space Flights`, y = `Space Walks`))

## There is no linear relationship between Space flights and Space Walks


female_astronauts %>% 
  filter(Name == 'Mae C. Jemison') %>% 
  select(`Undergraduate Major`, `Graduate Major`, `Alma Mater`)


(astronauts$`Military Branch`)

female_astronauts %>% 
  filter(`Military Branch` == "US Air Force (Retired)" | `Military Branch` == "US Air Force") %>% 
  nrow(.)
