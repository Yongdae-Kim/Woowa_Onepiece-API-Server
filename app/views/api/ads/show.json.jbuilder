json.id @ad.id
json.cd_id @ad.ad_cd_id
json.title @ad.ad_title
json.start_dt @ad.ad_start_dt
json.end_dt @ad.ad_end_dt
json.content1 @ad.ad_det.ad_det_ct1
json.content2 @ad.ad_det.ad_det_ct2
json.loc do
  json.addr @ad.ad_det.ad_det_addr
  json.lng @ad.ad_det.ad_det_lng
  json.lat @ad.ad_det.ad_det_lat
end
json.imgs @ad.imgs do |img|
  json.uri img.img_path_root + img.img_path_dn + img.img_fname_server
end
