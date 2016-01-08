json.array! @buses do |bus|
  json.id bus.id
  json.bus_key bus.bus_key
  json.bus_nm bus.bus_nm
  json.day_of_week_nm bus.day_of_week.dow_nm
end
