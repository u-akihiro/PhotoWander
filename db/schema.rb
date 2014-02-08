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

ActiveRecord::Schema.define(version: 20140208160500) do

  create_table "checkpoints", force: true do |t|
    t.string   "ucode"
    t.string   "name"
    t.decimal  "lat"
    t.decimal  "lng"
    t.integer  "radius"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entry_cards", force: true do |t|
    t.boolean  "finish_flag"
    t.integer  "user_id"
    t.integer  "rally_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rallies", force: true do |t|
    t.string   "title"
    t.text     "detail"
    t.datetime "opening"
    t.datetime "ending"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stamps", force: true do |t|
    t.string   "file_name"
    t.string   "file_type"
    t.integer  "file_size"
    t.integer  "file_width"
    t.integer  "file_height"
    t.integer  "checkpoint_id"
    t.integer  "entry_card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "mail"
    t.text     "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
