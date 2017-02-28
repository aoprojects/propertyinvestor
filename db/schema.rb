# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170228003912) do

  create_table "properties", force: :cascade do |t|
    t.string   "deal_title"
    t.string   "address_street_number"
    t.string   "address_street_name"
    t.string   "address_unit_number"
    t.string   "address_city"
    t.string   "address_us_state"
    t.integer  "address_us_zipcode"
    t.boolean  "off_market"
    t.integer  "property_finished_sf"
    t.integer  "property_land_sf"
    t.string   "property_condition"
    t.string   "deal_type"
    t.string   "deal_urgency"
    t.integer  "property_current_value"
    t.integer  "property_estimated_arv"
    t.integer  "property_renovations_needed"
    t.boolean  "deal_repair_estimate"
    t.text     "property_description"
    t.text     "deal_additional_details"
    t.text     "financial_calculations"
    t.integer  "estimated_profit"
    t.text     "property_features"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "under_direct_contract"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
