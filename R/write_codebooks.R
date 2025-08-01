write_codebooks <- function() {
  source(here::here("R", "brfss_values.R"))

  # write primary code book
  write_csv(brfss_codebook, here("data", "brfss_clean_codebook.csv"))

  # write values code book
  brfss_value_labels_df <- create_value_labels_df(brfss_value_labels)
  write_csv(brfss_value_labels_df, here("data", "brfss_clean_value_labels.csv"))
}
