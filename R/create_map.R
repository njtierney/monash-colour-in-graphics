##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title

##' @return
##' @author Nicholas Tierney
##' @export
create_map <- function() {

  # Creates a map shapefile of Australia
  rnaturalearth::ne_states(geounit = "australia",
                           returnclass = "sf") %>%
    rmapshaper::ms_simplify()

}
