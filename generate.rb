

def dive(zxy, stop)
  2.times {|dx|
    2.times {|dy|
      r = [zxy[0] + 1, 2 * zxy[1] + dx, 2 * zxy[2] + dy]
      if r[0] == stop
        yield r
      else
        dive(r, stop) {|zxy| yield zxy}
      end
    }
  }
end

dive([2, 3, 1], 7) {|zxy|
  url = "https://maps.gsi.go.jp/xyz/cp/#{zxy.join('/')}.geojson"
  print `curl #{url} | tippecanoe-json-tool`
}

