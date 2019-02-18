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

ActiveRecord::Schema.define(version: 20180706094521) do

  create_table "cmtcoms", force: :cascade do |t|
    t.string   "content"
    t.integer  "competition_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "cmtcoms", ["competition_id"], name: "index_cmtcoms_on_competition_id"

  create_table "cmtdas", force: :cascade do |t|
    t.string   "content"
    t.integer  "daily_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cmtdas", ["daily_id"], name: "index_cmtdas_on_daily_id"

  create_table "cmtlans", force: :cascade do |t|
    t.string   "content"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "cmtlans", ["language_id"], name: "index_cmtlans_on_language_id"

  create_table "cmtlis", force: :cascade do |t|
    t.string   "content"
    t.integer  "license_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cmtlis", ["license_id"], name: "index_cmtlis_on_license_id"

  create_table "cmtmas", force: :cascade do |t|
    t.string   "content"
    t.integer  "major_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cmtmas", ["major_id"], name: "index_cmtmas_on_major_id"

  create_table "competitions", force: :cascade do |t|
    t.string   "category"
    t.date     "day"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dailies", force: :cascade do |t|
    t.string   "category"
    t.date     "day"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "category"
    t.date     "day"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licenses", force: :cascade do |t|
    t.string   "category"
    t.date     "day"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majors", force: :cascade do |t|
    t.date     "day"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
