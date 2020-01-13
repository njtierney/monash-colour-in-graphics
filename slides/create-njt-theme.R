library(xaringanthemer)


# colours inspired by
library(ochRe)
lorikeet <- ochre_palettes[["lorikeet"]]
# mono_light(
#   base_color = "#484878", # lorikeet purple
#   header_font_google = google_font("Josefin Sans"),
#   text_font_google   = google_font("Montserrat", "300", "300i"),
#   code_font_google   = google_font("Droid Mono")
# )


nipa <- list(red = "#c03018",
             orange = "#f0a800",
             green = "#609048",
             purple = "#484878",
             light_purple = "#A3A3BB",
             light_green = "#AFC7A3",
             light_orange = "#F7D37F",
             light_red = "#DF978B",
             pale_purple = "#ECECF1",
             pale_green = "#D7E3D1",
             pale_orange = "#FBE9BF",
             pale_red = "#EFCBC4")

write_xaringan_theme(
  text_color = nipa$purple,
  text_font_size = "30px",
  text_bold_color = nipa$red,
  text_slide_number_color = nipa$purple,
  text_slide_number_font_size = "0.7em",
  
  padding = "1em 2em 1em 2em",
  
  header_color = nipa$purple,
  
  background_color = nipa$pale_purple,
  link_color = nipa$green,
  
  code_highlight_color = nipa$pale_orange,
  code_inline_color = nipa$red,
  code_font_size = "0.9em",
  
  inverse_background_color = nipa$purple,
  inverse_header_color = nipa$pale_purple,
  inverse_text_color = nipa$pale_purple,
  
  blockquote_left_border_color = nipa$orange,
  
  footnote_font_size = "0.5em",
  footnote_position_bottom = "4em",
  
  # text_font_google = google_font("Raleway", "300", "300i"),
  text_font_google = google_font("Montserrat", "300", "300i"),
  header_font_google = google_font("Josefin Sans"),
  code_font_google = google_font("Fira Mono"),
  
  outfile = "njtheme.css"
  
)

extra_css <- list(
  ".red"   = list(color = "red"),
  ".small" = list("font-size" = "80%"),
  ".tiny" = list("font-size" = "60%"),
  ".large" = list("font-size" = "150%"),
  ".vlarge" = list("font-size" = "200%"),
  ".huge" = list("font-size" = "250%"),
  ".vhuge" = list("font-size" = "350%"),
  ".full-width" = list(
    display = "flex",
    width   = "100%",
    flex    = "1 1 auto"
  ),
  ".left-code" = list("width" = "38%",
                      "height" = "92%",
                      "float" = "left"),
  ".right-plot" = list("width" = "60%",
                       "float" = "right",
                       "padding-left" = "1%"),
  ".pull-left" = list("float" = "left",
                      "width" = "47%"),
  ".pull-right" = list("float" = "right",
                       "width" = "47%"),
  
  "div.my-footer" = list("background-color" = nipa$pale_purple,
                         "position" = "absolute",
                         "bottom" = "0px",
                         "left" = "0px",
                         "height" = "40px",
                         "width" = "100%"),
  
  "div.my-footer span" = list("font-size" = "16pt",
                              "color" = "#125972",
                              "position" = "absolute",
                              "left" = "20px",
                              "bottom" = "10px")

)

write_extra_css(extra_css, outfile = "extra.css")
