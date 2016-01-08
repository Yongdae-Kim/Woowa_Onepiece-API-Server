# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bus.create(
  bus_key: 'B1',
  bus_nm: '37번',
  day_of_week_id: 1
)
Bus.create(
  bus_key: 'B2',
  bus_nm: '31번',
  day_of_week_id: 1
)

DayOfWeek.create(
  dow_nm: '월',
  dow_cd_id: 1
)
DayOfWeek.create(
  dow_nm: '화',
  dow_cd_id: 2
)

BusStop.create(
  bus_stop_key: 'BS1',
  bus_stop_nm: '이호이동',
  bus_stop_addr: '제주시 이호이동',
  bus_stop_lng: '126.3715251',
  bus_stop_lat: '33.3753023'
)
BusStop.create(
  bus_stop_key: 'BS2',
  bus_stop_nm: '제주시외버스터미널',
  bus_stop_addr: '제주시 서광로 174',
  bus_stop_lng: '126.5126539',
  bus_stop_lat: '33.4997291'
)

Ad.create(
  ad_cd_id: 1,
  ad_title: 'BFC 할인쿠폰',
  ad_start_dt: '20150101',
  ad_end_dt: '20150110',
  bus_stop_id: 'BS1'
)
Ad.create(
  ad_cd_id: 3,
  ad_title: '13형 맥프로 증정',
  ad_start_dt: '20150110',
  ad_end_dt: '20150115',
  bus_stop_id: 'BS1'
)

AdDet.create(
  ad_det_addr: 'addr',
  ad_det_lng: '126.2111605',
  ad_det_lat: '33.4468617',
  ad_det_ct1: 'comment1',
  ad_det_ct2: 'comment2',
  ad_id: 1
)
AdDet.create(
  ad_det_addr: 'addr',
  ad_det_lng: '126.5140419',
  ad_det_lat: '33.503211',
  ad_det_ct1: 'comment1',
  ad_det_ct2: 'comment2',
  ad_id: 2
)

Img.create(
  img_nm_user: 'woowa.png',
  img_nm_server: '20160108woowa.png',
  img_size: '1024',
  img_root_path: 'http://www.woowahan.com/',
  img_up_path: 'upload_path',
  img_dn_path: 'download_path',
  ad_id: 1
)
Img.create(
  img_nm_user: 'baemin.png',
  img_nm_server: '20160108baemin.png',
  img_size: '512',
  img_root_path: 'http://www.woowahan.com/',
  img_up_path: 'upload_path',
  img_dn_path: 'download_path',
  ad_id: 1
)
