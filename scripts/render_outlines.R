library(rgdal)
library(sf)
library(ggplot2)
outline <- st_read("output/outlines/cutout.dxf")
keys <- st_read("output/outlines/keycap_outlines.dxf")

ggplot() +
  geom_sf(data = outline) +
  geom_sf(data = keys)
ggsave("output/outlines/composite.png")