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

ActiveRecord::Schema.define(version: 2021_08_30_021645) do

  create_table "complex_addresses", force: :cascade do |t|
    t.string "street"
    t.string "street_ext"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.integer "property_complex_id"
    t.index ["property_complex_id"], name: "index_complex_addresses_on_property_complex_id"
  end

  create_table "property_complexes", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resident_vehicles", force: :cascade do |t|
    t.integer "property_complex_id"
    t.integer "residents_id"
    t.string "plate_text"
    t.string "plate_state"
    t.string "color"
    t.string "make"
    t.string "model"
    t.index ["property_complex_id"], name: "index_resident_vehicles_on_property_complex_id"
    t.index ["residents_id"], name: "index_resident_vehicles_on_residents_id"
  end

  create_table "residents", force: :cascade do |t|
    t.integer "property_complex_id"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_initial"
    t.integer "status"
    t.date "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_complex_id"], name: "index_residents_on_property_complex_id"
  end

  create_table "work_orders", force: :cascade do |t|
    t.integer "property_complex_id"
    t.integer "residents_id"
    t.string "location"
    t.string "description"
    t.boolean "completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_complex_id"], name: "index_work_orders_on_property_complex_id"
    t.index ["residents_id"], name: "index_work_orders_on_residents_id"
  end

end
