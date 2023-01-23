# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_23_180245) do
  create_table "airport_flights", force: :cascade do |t|
    t.integer "flight"
    t.integer "departure_airport"
    t.integer "arrival_airport"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "location"
    t.string "countryCode"
    t.string "countryName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_airports_on_code"
  end

  create_table "flights", force: :cascade do |t|
    t.string "departure_id"
    t.string "arrival_id"
    t.datetime "date"
    t.integer "duration_hr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end