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

ActiveRecord::Schema.define(version: 2023_07_13_034336) do

  create_table "deliveries", force: :cascade do |t|
    t.text "description"
    t.text "address"
    t.date "delivered_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "trip_id", null: false
    t.index ["trip_id"], name: "index_deliveries_on_trip_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "route_id", null: false
    t.index ["route_id"], name: "index_trips_on_route_id"
  end

  create_table "withdrawals", force: :cascade do |t|
    t.text "description"
    t.text "address"
    t.date "withdrawal_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "trip_id", null: false
    t.index ["trip_id"], name: "index_withdrawals_on_trip_id"
  end

  add_foreign_key "deliveries", "trips"
  add_foreign_key "trips", "routes"
  add_foreign_key "withdrawals", "trips"
end
