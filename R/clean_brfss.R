clean_brfss <- function() {
  source(here::here("R", "brfss_values.R"))

  apply_value_labels <- function(data, labels_list) {
    for (var_name in names(labels_list)) {
      if (var_name %in% names(data) && var_name != "Missing_Codes") {
        data[[var_name]] <- factor(
          data[[var_name]],
          levels = names(labels_list[[var_name]]),
          labels = labels_list[[var_name]]
        )
      }
    }
    return(data)
  }

  unzip(
    here::here("data", "raw", "LLCP2023.XPT.zip"),
    exdir = here("data", "raw")
  )

  dat_brfss <- here::here("data", "raw", "LLCP2023.XPT") |>
    haven::read_xpt() |>
    janitor::clean_names()

  file.remove(here::here("data", "raw", "LLCP2023.XPT"))

  brfss_value_labels_df <- create_value_labels_df(brfss_value_labels)

  dat_brfss_clean <- dat_brfss |>
    rename(!!!setNames(brfss_codebook$old_column, brfss_codebook$new_column)) |>
    select(all_of(brfss_codebook$new_column)) |>
    # count Non-applicable and Non-responding as NA
    mutate(across(where(is.numeric), ~ na_if(., 77))) |>
    mutate(across(where(is.numeric), ~ na_if(., 88))) |>
    mutate(across(where(is.numeric), ~ na_if(., 99))) |>
    apply_value_labels(brfss_value_labels)
}

write_team_files <- function(data, n_teams, n_rows = 1e4, seed = 365) {
  if (!is.null(seed)) {
    set.seed(seed)
  }

  map(
    1:n_teams,
    ~ {
      slice_sample(data, n = n_rows) |>
        write_excel_csv(
          file = here::here("data", "clean", paste0("Team_", .x, ".xlsx"))
        )
    }
  )
}
