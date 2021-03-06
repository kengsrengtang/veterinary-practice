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

ActiveRecord::Schema.define(version: 20140208195046) do

  create_table "appointments", force: true do |t|
    t.integer  "doctor_id"
    t.date     "date_visit"
    t.string   "pet"
    t.string   "customer"
    t.boolean  "reminder"
    t.text     "reason_for_visit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "school_received_degree"
    t.integer  "years_in_practice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "doctor_id"
    t.string   "pet_name"
    t.string   "pet_type"
    t.text     "breed"
    t.integer  "age"
    t.float    "weight"
    t.date     "last_visit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
