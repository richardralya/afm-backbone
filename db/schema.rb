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

ActiveRecord::Schema.define(version: 20161212000616) do

  create_table "channels", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.text     "ui_content"
    t.boolean  "is_private"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "criteria", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "name"
    t.text     "content"
    t.integer  "cardinality"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "topic_id"
    t.integer  "user_id"
    t.string   "name"
    t.text     "content"
    t.string   "media_link"
    t.string     "author"
    t.integer  "status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orgs", force: :cascade do |t|
    t.integer  "channel_id", null: false
    t.string   "name"
    t.text     "address"
    t.string   "plan"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "criterium_id"
    t.integer  "user_id"
    t.decimal  "user_rank"
    t.integer  "rating"
    t.integer  "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "topics", force: :cascade do |t|
    t.integer  "channel_id"
    t.integer  "org_id"
    t.integer  "user_id"
    t.string   "name"
    t.text     "content"
    t.boolean  "is_private"
    t.string   "topic_type"
    t.string   "media_link"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "deadline_date"
    t.integer  "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "language"
    t.string   "timezone"
    t.string   "auth_type"
    t.string   "account_status"
    t.integer  "login_status"
    t.decimal  "organic_rank"
    t.decimal  "rank_boost"
    t.integer  "org_id"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "view_statuses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
