library(tidyverse)
census_all = read_csv("../98-401-X2021006_Ontario_eng_CSV/98-401-X2021006_English_CSV_data_Ontario.csv")
characteristics = census_all %>% distinct(CHARACTERISTIC_NAME)
census_DA_short = census_all %>%
  filter(GEO_LEVEL == "Dissemination area" &
           CHARACTERISTIC_NAME %in% c("Population, 2021",
                                      "Median after-tax income in 2020 among recipients ($)",
                                      "Total - Main mode of commuting for the employed labour force aged 15 years and over with a usual place of work or no fixed workplace address - 25% sample data",
                                      "Walked",
                                      "Public transit",
                                      "Total - Visible minority for the population in private households - 25% sample data",
                                      "Total visible minority population",
                                      "Total - Age groups of the population - 100% data",
                                      "5 to 9 years",
                                      "10 to 14 years",
                                      "15 to 19 years")) %>%
  select(DGUID, GEO_NAME, CHARACTERISTIC_NAME, C1_COUNT_TOTAL, C10_RATE_TOTAL)
saveRDS(census_DA_short, "./snow_clearing_dataset.rds")
