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

ActiveRecord::Schema.define(version: 20250419104224) do

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.string   "frequency"
    t.integer  "duration_seconds"
    t.string   "category"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "category_id"
  end

  add_index "activities", ["category_id"], name: "index_activities_on_category_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "day_plans", force: :cascade do |t|
    t.integer  "day_number"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "day_plans", ["activity_id"], name: "index_day_plans_on_activity_id"

  create_table "user_activities", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.integer  "day_number"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_activities", ["activity_id"], name: "index_user_activities_on_activity_id"
  add_index "user_activities", ["user_id"], name: "index_user_activities_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
