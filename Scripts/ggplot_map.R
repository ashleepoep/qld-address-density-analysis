#For use in address_density_analysis if leaflet wasn't suitable 
ggplot(localities_map_data) +
  geom_sf(aes(fill = density_per_sqkm), color = "white", linewidth = 0.1) +
  scale_fill_distiller(palette = "YlOrRd", direction = 1, name = "Addresses per km2") +
  coord_sf(xlim = c(152.7, 153.5), ylim = c(-28.2, -26.9)) +
  theme_minimal() +
  labs(title = "Address Density by Locality, South East Queensland") + 
  theme(legend.position = "bottom")