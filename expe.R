library(googleway)
library(webshot)
library(sf)
library(mapview)

api_key <- "AIzaSyCWn5a45kf3Jezx7G-2313XzTt0xwVFz2Q" # 15 août 2023 sur developers.google.com Maps Javascript API

set_key(api_key)

kml_file <- "data/2023-08-15-XFH-000-01.kml"

mapview(kml_file, map = "Google")

layers <- st_layers(kml_file)

track <- st_read(kml_file, layer = "Track")


google_map(data = track)

webshot::webshot(url = "https://www.google.com/earth/", file = "img/yo.jpg")

# pas fonctionnel.

# Tester Google earth API
# et maybe voir https://developers.google.com/earth-engine/reference/rest