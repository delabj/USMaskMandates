# library(tidyverse)
#
#
# raw_mandates <- read_csv(
#   "C:/Users/merta/Downloads/earliestpolicy_08042020 - earliestpolicy_08042020.csv",
#   )
#
# raw_mandates %>%
#   transmute(state_fips   = stringr::str_pad(state_fips, width = 2, pad = "0"),
#             state_name   = stringr::str_to_title(state_name),
#             county_fips  = stringr::str_pad(county_fips, width = 5, pad ="0"),
#             country_name = stringr::str_to_title(county_name),
#             county_policy_start = lubridate::myd(county_mask_policy_start),
#             county_policy_end   = lubridate::myd(county_mask_policy_end),
#             county_policy_conditions = county_conditions,
#             county_policy_source     = county_source,
#             county_policy_defiance   = county_defiance,
#             county_policy_escalation = county_escalation,
#             state_policy_start = lubridate::myd(state_mask_policy_start),
#             state_policy_end   = lubridate::myd(state_mask_policy_end),
#             state_policy_conditions = state_conditions,
#             state_policy_source = state_source,
#             earliest_policy_edate = if_else(
#               coalesce(county_policy_start, lubridate::ymd("4000-12-31")) < coalesce(state_policy_start, lubridate::ymd("4000-12-31")),
#               county_policy_start, state_policy_start
#                        )
#
#             )->test
# mask_mandates
