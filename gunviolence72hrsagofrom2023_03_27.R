library(tidyverse)
library(lubridate)

gunviolence <- read_csv('practice/GunViolence72.csv', show_col_types = FALSE)

dim(gunviolence)
glimpse(gunviolence)

gunviolence %>% 
  rename("incident_id" = `Incident ID`,
         "incident_date" = `Incident Date`,
         "state" = State,
         "city_or_county" = `City Or County`,
         "address" = "Address",
         "num_killed" = `# Killed`,
         "num_injured" = `# Injured`,
         "operations" = Operations) -> gunviolence_new

dim(gunviolence_new)
glimpse(gunviolence_new)  

gunviolence_new %>% 
  group_by(city_or_county) %>% 
  na.omit(num_killed) %>% 
  na.omit(num_injured) %>% 
  summarize(`Average Death` = mean(num_killed),
            `Average Injured` = mean(num_injured),
            `Total Killed` = sum(num_killed),
            `Total Injured` = sum(num_injured)) %>% 
  mutate(Total = (`Total Killed` + `Total Injured`)) %>% 
  arrange(desc(`Total Killed`), desc(`Total Injured`))
