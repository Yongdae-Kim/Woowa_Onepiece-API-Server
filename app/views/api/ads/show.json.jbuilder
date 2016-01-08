json.ad_id @ad.id
json.ad_cd_id @ad.ad_cd_id
json.ad_title @ad.ad_title
json.ad_start_dt @ad.ad_start_dt
json.ad_end_dt @ad.ad_end_dt
json.ad_ct1 @ad.ad_det.ad_det_ct1
json.ad_ct2 @ad.ad_det.ad_det_ct2
json.ad_addr @ad.ad_det.ad_det_addr
json.ad_lng @ad.ad_det.ad_det_lng
json.ad_lat @ad.ad_det.ad_det_lat
json.ad_imgs @ad.imgs do |img|
  json.img_id img.id
  json.img_nm_user img.img_nm_user
  json.img_nm_server img.img_nm_server
  json.img_size img.img_size
  json.img_root_path img.img_root_path
  json.img_dn_path img.img_dn_path
end
