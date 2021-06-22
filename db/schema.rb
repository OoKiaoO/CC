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

ActiveRecord::Schema.define(version: 2021_06_22_064956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_entries", force: :cascade do |t|
    t.bigint "record_id", null: false
    t.integer "quantity"
    t.integer "weight_unit"
    t.string "food_name"
    t.integer "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "foods_id"
    t.index ["foods_id"], name: "index_food_entries_on_foods_id"
    t.index ["record_id"], name: "index_food_entries_on_record_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "food_name"
    t.integer "quantity"
    t.string "serving_unit"
    t.integer "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "records", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "meal_type"
    t.date "date"
    t.integer "total_cal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_records_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.integer "height"
    t.integer "weight"
    t.integer "age"
    t.string "gender"
    t.integer "weight_goal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "food_entries", "foods", column: "foods_id"
  add_foreign_key "food_entries", "records"
  add_foreign_key "records", "users"
end
