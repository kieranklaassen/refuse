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

ActiveRecord::Schema.define(version: 20170919190441) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "cues", force: :cascade do |t|
    t.boolean  "active"
    t.string   "name"
    t.integer  "position"
    t.string   "partial_name"
    t.string   "duration"
    t.string   "integer"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "gesture",             default: 0
    t.string   "subtitle"
    t.text     "text"
    t.string   "youtube_indentifier"
    t.string   "youtube_start"
    t.string   "youtube_end"
    t.string   "speak_options"
    t.integer  "room_id"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_cues_on_user_id"
  end

  create_table "highlights", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_highlights_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text     "value"
    t.integer  "user_id"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_messages_on_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.text     "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speeches", force: :cascade do |t|
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_speeches_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.integer  "step"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.boolean  "director",               default: false, null: false
    t.integer  "room_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_rooms", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_users_rooms_on_room_id"
    t.index ["user_id"], name: "index_users_rooms_on_user_id"
  end

end
