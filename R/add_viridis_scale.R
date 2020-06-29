##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param map_low_temp
##' @return
##' @author Nicholas Tierney
##' @export
add_viridis_scale <- function(map_temp) {

  map_temp +
    ggplot2::scale_fill_manual(
      values = get_bom_viridis_palette(),
      name = "",
      guide = guide_legend(reverse = TRUE)
    )

}
