

#gdb load for locality boundaries
localities_sf <- st_read("data/LocalityBoundaries.gdb", layer = "Locality_Boundaries")

# Reading directly from an ArcGIS Feature Service REST endpoint
localities_web <- read_sf("https://spatial-gis.information.qld.gov.au/arcgis/rest/services/Boundaries/AdministrativeBoundaries/MapServer/2/query?where=lga+IN+%28%27Brisbane+City%27%2C+%27Gold+Coast+City%27%2C+%27Somerset+Regional%27%2C+%27Sunshine+Coast+Regional%27%2C+%27Moreton+Bay+City%27%2C+%27Redland+City%27%2C+%27Logan+City%27%2C+%27Noosa+Shire%27%2C+%27Scenic+Rim+Regional%27%2C+%27Ipswich+City%27%2C+%27Lockyer+Valley+Regional%27%2C+%27Toowoomba+Regional%27%29&outFields=*&returnGeometry=true&f=geojson")

#Read in text file and state delimeter.
addresses_raw <- read_delim(
  "data/Property_address_Queensland.txt",
  delim = "|",
  col_types = cols(LATITUDE = col_double(), LONGITUDE = col_double(), .default = col_character())
)

#add lat and longs from table
addresses_sf <- st_as_sf(
  addresses_raw,
  coords = c("LONGITUDE", "LATITUDE"),
  crs = 4283,
  remove = FALSE
)


