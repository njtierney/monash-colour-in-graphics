the_plan <-
  drake_plan(
    fig_map = create_map(),
    high_temp = create_temp(fig_map, date = "2017-02-11"),
    map_high_temp = create_temp_map(high_temp),
    map_high_temp_bom = add_bom_scale(map_high_temp),
    map_high_temp_viridis = add_viridis_scale(map_high_temp),
    cvd_bom_map = colorspace::cvd_emulator("slides/imgs/bom-heat-map.png"),
    cone_response = read_tidy_photowave("slides/data/linss2_10e_fine.csv"),
    # render the gganimate drawings?
    # render the slide deck as well?
    
    slideshow = target(
      command = {
        rmarkdown::render(knitr_in("slides/index.Rmd"))
        file_out("slides/index.html")
      }
    )
)
