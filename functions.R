read_my_data <- function(path) {
  read.csv(path)
}

process_data <- function(df) {
  df[df$age > 28, ]  # Mantenemos mayores a 28
}

edit_data <- function(df) {
  df$score_scaled <- df$score / 100  # normalizamos score

  return(df)
}