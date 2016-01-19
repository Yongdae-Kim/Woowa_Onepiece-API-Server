json.array! @buses do |bus|
  json.id bus.id
  json.cd_id bus.day_of_week.dow_cd_id
  json.key bus.bus_key
  json.name bus.bus_nm
  json.day_of_week bus.day_of_week.dow_nm
end
