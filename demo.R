# Demo - picking colours
colorspace::hcl_color_picker()

# Demo - evaluating colours
# http://hclwizard.org/
  
# Demo - evaluating ggplots
loadd(map_high_temp)
loadd(map_high_temp_bom)
loadd(map_high_temp_viridis)

# Assessing colour palettes?
## Demoplot
## Specplot
## Protan/Deutan/Tritan (w demoplot / specplot)


# How to assess existing images / plots?
#   - If it's a ggplot object, `colorblindr::cvd_fig`

# How to create your own?
#   - Specify start/end points to travel through:
#   - qualitative_hcl()
# - sequential_hcl()
# - diverge_hcl()

# - Tweak Hue/Chroma/Luminance?
#   - lighten/darken
# - desaturate() (by chroma removal)

# - Want to pick and point at an app?
#   - hclwizard
# - colorspace::choose_color()
# - colorspace::choose_palette()
# - colorspace::hcl_wizard()


