#
# CLEAN DATA
#


library('tidyverse')

fs::dir_create("app/data")

attach(faithful)


faithful2 <- faithful %>% 
  as_tibble() %>% 
  mutate(waiting.minute = waiting / 60)


saveRDS(faithful2, "app/data/faithful2.rds")


