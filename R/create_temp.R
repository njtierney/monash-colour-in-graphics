##' @title
##' @param map map to cut the temperatures down to
##' @param type temperature type, "low", "avg", or "high". Default is "low".
##' @return
##' @author Adam Sparks & Nicholas Tierney
##' @export
create_temp <- function(map, date) {

  temperatures <- fetch_temperature(date)

  map_mask <- raster::mask(temperatures, map)

  # Crop the AWAP grid to remove several outlying territories + small islands
  # not of interest, so we have a much smaller plot when mapping
  map_mask_crop <- raster::crop(map_mask, temperatures)

  # `rasterToPoints` pulls data from a gridded format and creates a data frame
  # with latitude, longitude and the temperature value at that point.
  map_mask_crop_df <- as.data.frame(raster::rasterToPoints(map_mask_crop))
  colnames(map_mask_crop_df) <- c("long", "lat", "temperature")

  # As BOM maps in 3 degree increments, we cut data into these bins.
  map_mask_crop_df$cuts <- endtherainbow::cut_temps(map_mask_crop_df$temperature)

  map_mask_crop_df

}
