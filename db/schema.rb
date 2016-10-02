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

ActiveRecord::Schema.define(version: 20161002075923) do

  create_table "appointments", force: :cascade do |t|
    t.string   "doctor_name"
    t.datetime "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "feelings", force: :cascade do |t|
    t.datetime "day"
    t.float    "moring_feeling"
    t.float    "sentiment_analysis"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "illnesses", force: :cascade do |t|
    t.text     "symptom"
    t.boolean  "hospital"
    t.text     "data"
    t.integer  "appointment_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.float    "weight"
    t.float    "height"
    t.boolean  "smoke"
    t.boolean  "fit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "user_token"
  end

end
