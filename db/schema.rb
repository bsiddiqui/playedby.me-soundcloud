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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130219051238) do

  create_table "beta", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "guests", :force => true do |t|
    t.string   "user_id"
    t.string   "party_profile_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "party_profiles", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "location"
    t.string   "date"
    t.string   "host"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.string   "artist"
    t.string   "length"
    t.string   "upVotes"
    t.string   "downVotes"
    t.string   "totalVotes"
    t.string   "user_id"
    t.string   "party_profile_id"
    t.boolean  "played",           :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "soundcloud_id"
  end

  create_table "user_votes", :force => true do |t|
    t.string   "user_id"
    t.string   "party_profile_id"
    t.string   "soundcloud_id"
    t.integer  "totalVotes",       :default => 0
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
  end

end
