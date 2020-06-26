read_tidy_photowave <- function(path){
  readr::read_csv(file = path,
                  col_names = c("wavelength_nm",
                                "cone_s",
                                "cone_m",
                                "cone_l")) %>% 
    tidyr::pivot_longer(cols = cone_s:cone_l,
                        names_to = "type",
                        values_to = "response")
}
# data provided from http://cvrl.ucl.ac.uk/cones.htm
# 10-deg fundamentals based on the Stiles & Burch 10-deg CMFs
# units: energy (linear)
# stepsize: 0.1 nm
# Format: csv
