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

ActiveRecord::Schema.define(version: 20180927003826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.integer "request_id", null: false
    t.string "entry_user", null: false
    t.string "entry_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "index"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date", null: false
    t.text "name"
    t.string "email"
    t.text "department"
    t.string "phone"
    t.text "manager"
    t.text "chief"
    t.string "mailing"
    t.text "purpose", default: "", null: false
    t.text "reason", default: "", null: false
    t.boolean "range"
    t.string "content"
    t.string "status", default: "未完了", null: false
    t.string "managecheck", default: "未承認", null: false
    t.string "chiefcheck", default: "未承認", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.text "department", default: "", null: false
    t.string "phone"
    t.boolean "status", default: false, null: false
    t.string "roll", default: "normal", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
