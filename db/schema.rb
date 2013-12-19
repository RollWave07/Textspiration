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

ActiveRecord::Schema.define(version: 20131217004817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: true do |t|
    t.integer  "user_id"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "channels", ["type_id"], name: "index_channels_on_type_id", using: :btree
  add_index "channels", ["user_id"], name: "index_channels_on_user_id", using: :btree

  create_table "messages", force: true do |t|
    t.string   "quote"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["type_id"], name: "index_messages_on_type_id", using: :btree

  create_table "types", force: true do |t|
    t.string   "message_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.float    "time"
    t.integer  "key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phone",      limit: 8
  end

end
