##' .. content for \description{} (no empty lines) ..
##'
##' .. content for \details{} ..
##'
##' @title
##' @param map_low_temp
##' @return
##' @author Nicholas Tierney
##' @export
add_bom_scale <- function(map_temp) {

  map_temp +
    ggplot2::scale_fill_manual(
      values = get_bom_standard_palette(),
      name = "",
      guide = guide_legend(reverse = TRUE)
        )

}
