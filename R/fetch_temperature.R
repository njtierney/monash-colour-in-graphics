#' Fetch temperatures for a given day, return a raster file
#'
#' @param date date specified as "YYYY-MM-DD".
#'
#' @return grid file
#' @export
fetch_temperature <- function(date) {

  awaptools::get_awap_data(start = date,
                           end = date,
                           measure_i = "maxave")

  collapsed_date <- stringr::str_remove_all(date, pattern = "-")
  grid_file_name <- glue::glue("maxave_{collapsed_date}{collapsed_date}.grid")
  # can we save this file somewhere else?
  temperatures <- raster::raster(here::here(grid_file_name))
  temperatures
}
