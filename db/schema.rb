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

ActiveRecord::Schema.define(version: 20161128025151) do

  create_table "departments", force: :cascade do |t|
    t.string   "num_depto"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "municipalities", force: :cascade do |t|
    t.integer  "Department_id"
    t.string   "num_municip"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["Department_id"], name: "index_municipalities_on_Department_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.integer  "Municipality_id"
    t.string   "num_sector"
    t.string   "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["Municipality_id"], name: "index_sectors_on_Municipality_id"
  end

  create_table "sub_sectors", force: :cascade do |t|
    t.integer  "Sector_id"
    t.string   "num_subsector"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["Sector_id"], name: "index_sub_sectors_on_Sector_id"
  end

end
