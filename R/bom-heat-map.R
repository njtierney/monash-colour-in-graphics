## read original image
## Code by Achim Zeileis
img_location <- here::here("slides",
                           "imgs",
                           "bom-heat-map.png")
img <- png::readPNG(img_location)
img <- matrix(
  rgb(img[,,1], img[,,2], img[,,3]),
  nrow = nrow(img), ncol = ncol(img)
)

## extract original palette
pal_orig <- img[seq(108, 510, length.out = 19), 800]


## better alternatives
library("colorspace")
pal_ylorrd <- sequential_hcl(19, "YlOrRd")   ## for light background
pal_inferno <- sequential_hcl(19, "Inferno") ## for dark background

# 50 shades of gray
pal_gray <- gray(0:50/50)

## HCL coordinates for image and palette
img_luv <- coords(as(hex2RGB(as.vector(img)), "LUV"))
pal_luv <- coords(as(hex2RGB(c(pal_orig, pal_gray)), "LUV"))

## Manhattan distance matrix
dm <- matrix(NA, nrow = nrow(img_luv), ncol = nrow(pal_luv))
for(i in 1:nrow(pal_luv)) dm[, i] <- rowSums(abs(t(t(img_luv) - pal_luv[i,])))
idx <- apply(dm, 1, which.min)

## replace palette and write to PNG
pal_to_png <- function(pal, file = "bom-heat-hcl.png", rev = FALSE) {
  ret <- img
  pal <- if(rev) c(rev(pal), rev(pal_gray)) else c(pal, pal_gray)
  ret[] <- pal[idx]
  ret <- coords(hex2RGB(ret))
  dim(ret) <- c(dim(img), 3)
  png::writePNG(ret, target = file)
}

pal_to_png(           pal_ylorrd,   "bom-heat-hcl-ylorrd.png")
pal_to_png(desaturate(pal_ylorrd),  "bom-heat-hcl-ylorrd-gray.png")
pal_to_png(    deutan(pal_ylorrd),  "bom-heat-hcl-ylorrd-deutan.png")

pal_to_png(           pal_inferno,  "bom-heat-hcl-inferno.png", rev = TRUE)
pal_to_png(desaturate(pal_inferno), "bom-heat-hcl-inferno-gray.png", rev = TRUE)
pal_to_png(    deutan(pal_inferno), "bom-heat-hcl-inferno-deutan.png", rev = TRUE)
