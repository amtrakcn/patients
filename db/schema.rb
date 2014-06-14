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

ActiveRecord::Schema.define(version: 20140614025741) do

  create_table "locations", force: true do |t|
    t.integer  "code"
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name",    limit: 30,                 null: false
    t.string   "middle_name",   limit: 10
    t.string   "last_name",     limit: 30,                 null: false
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "status",                                   null: false
    t.integer  "location_id",                              null: false
    t.integer  "view_count",               default: 0
    t.boolean  "deleted",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
