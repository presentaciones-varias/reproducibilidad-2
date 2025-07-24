library(targets)

# Load custom functions
source("functions.R")

# Seteamos opciones que se aplicarán en cada target 
tar_option_set(
  packages = c("dplyr", "readr"),  # paquetes que usaremos
  error = 'continue', # cómo gestionamos errores
  format = 'feather' # Cómo se exportan e importan resultados de targets.
  # ... hay varias opciones más
)

# Definimos pipeline
list(
  tar_target(
    raw_data,
    read_my_data("data/data.csv")
  ),
  tar_target(
    processed_data,
    process_data(raw_data)
  ),
  tar_target(
    final_data,
    edit_data(processed_data)
  )
)