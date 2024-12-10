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

ActiveRecord::Schema[7.2].define(version: 2024_12_04_195241) do
  create_table "active_sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "remember_token", null: false
    t.string "user_agent", null: false
    t.string "ip_address", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["remember_token"], name: "index_active_sessions_on_remember_token"
    t.index ["user_id"], name: "index_active_sessions_on_user_id"
  end

  create_table "member_communicants", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "address"
    t.integer "number"
    t.string "neighborhood"
    t.string "city"
    t.string "zip_code"
    t.string "phone"
    t.string "telephone"
    t.date "birth_date"
    t.string "sex"
    t.string "nationality"
    t.string "naturality"
    t.string "uf"
    t.string "scholarship"
    t.string "father_name"
    t.string "mother_name"
    t.integer "book_number"
    t.integer "record_number"
    t.date "reception_date"
    t.string "minister_rev"
    t.string "observation"
    t.string "profession"
    t.string "marital_status"
    t.string "marital_partner"
    t.string "partner_religious_confession"
    t.string "admitted_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "enabled", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "active_sessions", "users", on_delete: :cascade
end
