MINZOOM=3
MAXZOOM=16

generate: 
	ruby generate.rb > tmp.geojsons

pmtiles:
	tippecanoe -o docs/jpcors.pmtiles -f -l cors \
	--minimum-zoom=$(MINZOOM) --maximum-zoom=$(MAXZOOM) \
	--base-zoom=$(MAXZOOM) tmp.geojsons

