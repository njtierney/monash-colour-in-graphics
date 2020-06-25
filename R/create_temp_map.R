##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param fig_map
##' @param low_temp
##' @return
##' @author Nicholas Tierney
##' @export
create_temp_map <- function(temperature_data) {

  ggplot(data = na.omit(temperature_data),
         aes(y = lat,
             x = long)) +
    geom_tile(aes(fill = cuts)) +
    labs(fill = "Temperature") +
    theme_void() + 
    theme(legend.position = "right",
          aspect.ratio = 1)
    # coord_map()

}
