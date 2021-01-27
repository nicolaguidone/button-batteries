library(tidyverse)
library(skimr)
library(janitor)


load("C:/Users/nicola.guidoni/Desktop/db/20210125_SSR-Batteries-Data.RData")


#creare var somma delle complicazioni
batteries <- data_ssr %>% 
  select( -accTime, -arrivalTime, -removalTime) %>% 
  clean_names() %>% 
  mutate(
    across(
      c(
        "id_row", "origin", "caseid", "doc_id", "hos_country", "dc_number",
        "cn8", "sh2", "sh4"
      )
      , as.numeric 
    ),
    across(
      c(
        "gender", "anaesthesia", "death", "complication", "object_removed_nat",
        "f_bremoved", "specify_f_bremoved", "f_bremoved_oseopha_rf", 
        "f_bremoved_bronco_rf", "handicap", "fb_type", "fb_type_recoded",
        "hospitalised"
        )  
        , as.factor
    )
  )

str(batteries)

glimpse(batteries)

''
skim(batteries)













