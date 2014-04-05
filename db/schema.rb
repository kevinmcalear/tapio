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

ActiveRecord::Schema.define(version: 20140405145419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: true do |t|
    t.string   "name"
    t.string   "listing_pic_url"
    t.text     "description"
    t.string   "timestamps"
    t.string   "city"
    t.string   "state"
    t.string   "address"
    t.string   "zip"
    t.integer  "rate"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "vendor_id"
  end

  create_table "timeslots", force: true do |t|
    t.string   "date"
    t.string   "start_time"
    t.string   "stop_time"
    t.boolean  "booked"
    t.integer  "listing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "timeslots", ["listing_id"], name: "index_timeslots_on_listing_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "phone_number"
    t.string   "profile_pic_url"
    t.text     "description"
    t.string   "timestamps"
    t.string   "city"
    t.string   "state"
    t.string   "address"
    t.string   "zip"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
