ZOOM=3

generate: 
	ruby generate.rb > tmp.geojsons

pmtiles:
	tippecanoe -o docs/jpcors.pmtiles -f -l cors -z $(ZOOM) -Z $(ZOOM) --base-zoom=$(ZOOM) tmp.geojsons

