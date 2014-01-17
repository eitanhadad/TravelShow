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

ActiveRecord::Schema.define(version: 20140101011843) do

  create_table "data", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_files", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.string   "travel_id"
    t.string   "title"
    t.string   "country"
    t.string   "area"
    t.string   "hotel"
    t.string   "car"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firstdaylasttravels", force: true do |t|
    t.string   "friend_name"
    t.string   "last_travel"
    t.integer  "first_day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", force: true do |t|
    t.string   "user_name"
    t.string   "friend_user_name"
    t.integer  "active"
    t.date     "active_since"
    t.datetime "created_at"
    t.string   "image"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "pictures", force: true do |t|
    t.string   "travel_id"
    t.string   "image_url"
    t.string   "day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "subject"
    t.string   "message"
    t.string   "posted_by"
    t.date     "posted_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "travel_id"
  end

  create_table "travels", force: true do |t|
    t.string   "travel"
    t.string   "title"
    t.string   "friend"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "travel_intro"
    t.integer  "friend_id"
    t.string   "front_page_image"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "password"
    t.string   "email_address"
    t.integer  "active"
    t.text     "address"
    t.date     "dob"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
