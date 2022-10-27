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

ActiveRecord::Schema[7.0].define(version: 2022_10_26_232852) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rental_cars", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "renter_id"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.string "vehicle_type"
    t.string "color"
    t.integer "rating"
    t.string "picture"
    t.string "description"
    t.string "transmission"
    t.string "engine_type"
    t.integer "price"
    t.integer "mileage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "renters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.boolean "insurance"
    t.boolean "driver_license"
    t.integer "age"
    t.integer "birthdate"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
