# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_25_144949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "associations", force: :cascade do |t|
    t.bigint "food_id", null: false
    t.bigint "bottle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bottle_id"], name: "index_associations_on_bottle_id"
    t.index ["food_id"], name: "index_associations_on_food_id"
  end

  create_table "bottles", force: :cascade do |t|
    t.string "name"
    t.string "vineyard"
    t.integer "year"
    t.text "description"
    t.integer "peak_year"
    t.text "preservation_advice"
    t.bigint "wine_type_id", null: false
    t.bigint "region_id", null: false
    t.bigint "grape_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grape_id"], name: "index_bottles_on_grape_id"
    t.index ["region_id"], name: "index_bottles_on_region_id"
    t.index ["wine_type_id"], name: "index_bottles_on_wine_type_id"
  end

  create_table "cellars", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cellars_on_user_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grapes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "cellar_id", null: false
    t.bigint "bottle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bottle_id"], name: "index_stocks_on_bottle_id"
    t.index ["cellar_id"], name: "index_stocks_on_cellar_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wine_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "associations", "bottles"
  add_foreign_key "associations", "foods"
  add_foreign_key "bottles", "grapes"
  add_foreign_key "bottles", "regions"
  add_foreign_key "bottles", "wine_types"
  add_foreign_key "cellars", "users"
  add_foreign_key "stocks", "bottles"
  add_foreign_key "stocks", "cellars"
end
