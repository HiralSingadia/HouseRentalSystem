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

ActiveRecord::Schema.define(version: 2018_09_29_022455) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "address"
    t.string "size"
    t.string "founded_in"
    t.string "synopsis"
    t.string "revenue"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "househunters", force: :cascade do |t|
    t.string "phone"
    t.string "preferred_contact"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_househunters_on_user_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "sqft"
    t.string "address"
    t.string "location"
    t.string "style"
    t.string "price"
    t.string "floors"
    t.string "basement"
    t.integer "user_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_houses_on_company_id"
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "inquiry_details", force: :cascade do |t|
    t.text "content"
    t.text "subject"
    t.integer "house_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_inquiry_details_on_house_id"
    t.index ["user_id"], name: "index_inquiry_details_on_user_id"
  end

  create_table "inquiry_replies", force: :cascade do |t|
    t.text "reply"
    t.integer "user_id"
    t.integer "inquiry_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inquiry_detail_id"], name: "index_inquiry_replies_on_inquiry_detail_id"
    t.index ["user_id"], name: "index_inquiry_replies_on_user_id"
  end

  create_table "potential_buyers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_potential_buyers_on_house_id"
    t.index ["user_id"], name: "index_potential_buyers_on_user_id"
  end

  create_table "realtors", force: :cascade do |t|
    t.string "phone"
    t.integer "company_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_realtors_on_company_id"
    t.index ["user_id"], name: "index_realtors_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", null: false
    t.string "role", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
