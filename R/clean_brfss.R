clean_brfss <- function() {
  source(here::here("R", "brfss_values.R"))

  apply_value_labels <- function(data, labels_list) {
    # Define variables that should remain numeric
    numeric_vars <- c(
      "Number_of_Children",
      "Physical_Health_Days",
      "Mental_Health_Days",
      "Poor_Health_Days",
      "BMI",
      "Diabetes_Age",
      "Falls_12_Months",
      "Average_Drinks",
      "Max_Drinks",
      "Binge_Drinking"
    )

    for (var_name in names(labels_list)) {
      if (
        var_name %in%
          names(data) &&
          var_name != "Missing_Codes" &&
          !var_name %in% numeric_vars
      ) {
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
    arrange(desc(fmonth)) |>
    filter(row_number() == 1, .by = seqno) |>
    rename(!!!setNames(brfss_codebook$old_column, brfss_codebook$new_column)) |>
    select(all_of(brfss_codebook$new_column)) |>
    # count Non-applicable and Non-responding as NA
    mutate(across(where(is.numeric), ~ na_if(., 77))) |>
    mutate(across(where(is.numeric), ~ na_if(., 88))) |>
    mutate(across(where(is.numeric), ~ na_if(., 99))) |>
    apply_value_labels(brfss_value_labels) |>
    mutate(BMI = BMI / 100)

  # Grab State abbreviations
  state_lookup <- tidycensus::fips_codes |>
    distinct(state, state_code) |>
    mutate(state_code = as.numeric(state_code))

  dat_brfss_clean <- dat_brfss_clean |>
    left_join(state_lookup, by = c("State" = "state_code")) |>
    select(-State) |>
    rename(State = state) |>
    relocate(State, .after = ID)
}

write_team_files <- function(data, nteams, seed = 365) {
  if (!is.null(seed)) {
    set.seed(seed)
  }

  dir.create(
    here::here("data", "clean"),
    showWarnings = FALSE,
    recursive = TRUE
  )

  filtered_data <- data |>
    filter(State %in% c("AZ", "CT", "MN", "FL"))

  # Get WA data for the 4 WA teams
  wa_data <- data |> filter(State == "WA")

  team_counter <- 1

  # Create one file for each of AZ, CT, MN, FL (Teams 1-4)
  for (state in c("AZ", "CT", "MN", "FL")) {
    state_data <- filtered_data |> filter(State == state)

    writexl::write_xlsx(
      state_data,
      path = here::here(
        "data",
        "clean",
        paste0("Team_", team_counter, ".xlsx")
      )
    )

    team_counter <- team_counter + 1
  }

  # Create 4 samples from WA (Teams 5-8)
  for (i in 1:4) {
    wa_sample <- wa_data |>
      slice_sample(n = min(2500, nrow(wa_data)))

    writexl::write_xlsx(
      wa_sample,
      path = here::here(
        "data",
        "clean",
        paste0("Team_", team_counter, ".xlsx")
      )
    )

    team_counter <- team_counter + 1
  }
}
