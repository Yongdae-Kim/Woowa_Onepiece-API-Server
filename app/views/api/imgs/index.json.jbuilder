json.array! @imgs do |img|
  json.id img.id
  json.ad_id img.ad_id
  json.fname_user img.img_fname_user
  json.fname_server img.img_fname_server
  json.size img.img_size
  json.path_root img.img_path_root
  json.path_up img.img_path_up
  json.path_dn img.img_path_dn
end
