#' Dates of county and state level mask mandates for United States during the COVID-19 pandemic
#'
#' Includes start and end dates, as well as conditions and sources for county mask mandates.
#' Updates and corrections can be made with the original data source at https://forms.gle/DtUSyvHDj9rj1Akq8.
#'
#' @format A tibble with 3308 observations of 19 variables:
#' \describe{
#'   \item{state_fips} FIPS code for the state of the observed county
#'   \item{state_name} Name of the state of the observed county
#'   \item{county_fips} FIPS code for the observed county
#'   \item{county_name} Name of the observed county
#'   \item{county_mask_policy_start} start date of the county mask policy
#'   \item{county_mask_policy_end} end date of the county mask policy
#'   \item{county_conditions} specific conditions of the county mask policy
#'   \item{county_source} source for the county mask policy
#'   \item{county_escalation} Did the county escalate an exsisiting mandate
#'   \item{county_defiance} Is the county publicly defying or refusing to enforce a mandate
#'   \item{county_edate} Unclear from source documentation, possible end date?
#'   \item{state_mask_policy_start} State date of state mask mandate
#'   \item{state_mask_policy_end} End date of state mask mandate
#'   \item{state_conditions} Conditions of state mask mandate
#'   \item{state_source} source for state mask mandate
#'   \item{state_edate}
#'   \item{earliest_policy_edate}
#'   \item{county_fips_str}
#'   \item{date_format}
#' }
#'
"raw_mandates"
