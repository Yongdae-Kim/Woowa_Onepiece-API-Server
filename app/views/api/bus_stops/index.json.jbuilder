json.array! @bus_stops do |bus_stop|
  json.id bus_stop.id
  json.key bus_stop.bus_stop_key
  json.name bus_stop.bus_stop_nm
  json.loc do
    json.addr bus_stop.bus_stop_addr
    json.lng bus_stop.bus_stop_lng
    json.lat bus_stop.bus_stop_lat
  end
  json.ads_cnt bus_stop.ads.size
end
