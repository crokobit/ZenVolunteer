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

ActiveRecord::Schema.define(version: 20150608131834) do

  create_table "volunteer_vote_zen_period_relationships", force: :cascade do |t|
    t.integer  "zen_period_id"
    t.integer  "volunteer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.integer  "age"
    t.string   "name"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zen_period_volunteer_relationships", force: :cascade do |t|
    t.integer  "zen_period_id"
    t.integer  "volunteer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "zen_periods", force: :cascade do |t|
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.string   "name"
    t.string   "zen_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
