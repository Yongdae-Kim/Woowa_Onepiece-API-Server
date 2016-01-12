# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160107064608) do

  create_table "ad_dets", force: :cascade do |t|
    t.text     "ad_det_addr", null: false
    t.text     "ad_det_lng",  null: false
    t.text     "ad_det_lat",  null: false
    t.text     "ad_det_ct1"
    t.text     "ad_det_ct2"
    t.integer  "ad_id",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["ad_id"], name: "index_ad_dets_on_ad_id"
  end

  create_table "ads", force: :cascade do |t|
    t.integer  "ad_cd_id",    null: false
    t.text     "ad_title",    null: false
    t.date     "ad_start_dt", null: false
    t.date     "ad_end_dt",   null: false
    t.integer  "bus_stop_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bus_stop_id"], name: "index_ads_on_bus_stop_id"
  end

  create_table "bus_stops", force: :cascade do |t|
    t.string   "bus_stop_key",              null: false
    t.text     "bus_stop_nm",               null: false
    t.text     "bus_stop_addr",             null: false
    t.text     "bus_stop_lat",              null: false
    t.text     "bus_stop_lng",              null: false
    t.integer  "ads_count",     default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "buses", force: :cascade do |t|
    t.string   "bus_key",        null: false
    t.text     "bus_nm",         null: false
    t.integer  "day_of_week_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["day_of_week_id"], name: "index_buses_on_day_of_week_id"
  end

  create_table "day_of_weeks", force: :cascade do |t|
    t.string   "dow_nm",     null: false
    t.integer  "dow_cd_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imgs", force: :cascade do |t|
    t.text     "img_nm_user",   null: false
    t.text     "img_nm_server", null: false
    t.string   "img_size",      null: false
    t.text     "img_root_path", null: false
    t.text     "img_up_path",   null: false
    t.text     "img_dn_path",   null: false
    t.integer  "ad_id",         null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["ad_id"], name: "index_imgs_on_ad_id"
  end

end
