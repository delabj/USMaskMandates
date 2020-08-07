library(tidyverse)
library(lubridate)
library(googlesheets4)

# load the raw data

raw_mandates_df <- googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/1CYmIiNDeBrUcVyazo21jCXyE4eemE1hmc71jCOnoGW8/edit#gid=796552815",
  sheet = "earliestpolicy_08042020",
  col_names = TRUE,
  col_types = "icicccccccicccciiic") %>%
  as.data.frame()

readr::write_csv(mandate_sheets, here::here("inst", "extdata", "raw_mandates.csv"))



# clean up the data

raw_mandates_df %>%
  transmute(state_fips   = stringr::str_pad(state_fips, width = 2, pad = "0"),
            state_name   = stringr::str_to_title(state_name),
            county_fips  = stringr::str_pad(county_fips, width = 5, pad ="0"),
            country_name = stringr::str_to_title(county_name),
            county_policy_start = lubridate::mdy(county_mask_policy_start),
            county_policy_end   = lubridate::mdy(county_mask_policy_end),
            county_policy_conditions = county_conditions,
            county_policy_source     = county_source,
            county_policy_defiance   = county_defiance,
            county_policy_escalation = county_escalation,
            state_policy_start = lubridate::mdy(`state_mask_policy_start`, truncated = 1),
            state_policy_end   = lubridate::mdy(state_mask_policy_end, truncated = 1),
            state_policy_conditions = state_conditions,
            state_policy_source = state_source,
            earliest_policy_date = lubridate::as_date(earliest_policy_edate, origin="1960-01-01")

            ) %>%
  as.data.frame()-> mask_mandates_df


readr::write_csv(cleaned, here::here("inst", "extdata", "mask_mandates.csv"))


usethis::use_data(raw_mandates_df, mask_mandates_df, internal = TRUE, overwrite = TRUE)
