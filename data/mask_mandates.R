delayedAssign("raw_mandates", local({
  if(requireNamespace("tibble", quietly = TRUE)){
    tibble::as_tibble(USMaskMandates:::raw_mandates_df)
  }
  else{
    USMaskMandates:::raw_mandates_df
  }
}))


delayedAssign("mask_mandates", local({
  if(requireNamespace("tibble", quietly = TRUE)){
    tibble::as_tibble(USMaskMandates:::mask_mandates_df)
  }
  else{
    USMaskMandates:::mask_mandates_df
  }
}))


