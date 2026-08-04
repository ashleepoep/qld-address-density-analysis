



pal <- colorNumeric(palette = "YlOrRd", domain = localities_map_data$density_per_sqkm, na.color = "transparent")

leaflet(localities_map_data) %>%
  addProviderTiles(providers$CartoDB.Positron) %>%
  setView(lng = 153.05, lat = -27.60, zoom = 9) %>%  # centered on South East Queensland
  addPolygons(
    fillColor = ~pal(density_per_sqkm),
    fillOpacity = 0.7,
    color = "white",
    weight = 0.5,
    label = ~paste0(locality, ": ", round(density_per_sqkm, 1), " addr/km²") %>% lapply(htmltools::HTML)
  ) %>%
  addLegend(pal = pal, values = ~density_per_sqkm, title = "Addresses per km²", position = "bottomright")