cleaning <- function(penguins_raw){
  penguins_raw %>%
    select(-starts_with("Delta")) %>%
    select(-Comments) %>%
    clean_names()}

remove_empty_flipper_length_and_mass <- function(penguins_clean){
  penguins_clean %>%
    filter(!is.na(flipper_length_mm)) %>%
    filter(!is.na(body_mass_g)) %>%
    select(body_mass_g, flipper_length_mm, species)
}

