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

ActiveRecord::Schema.define(version: 20170110162339) do

  create_table "properties", force: :cascade do |t|
    t.string   "address_unit"
    t.string   "address_street"
    t.string   "address_city"
    t.string   "address_us_state"
    t.integer  "address_us_zipcode"
    t.integer  "property_finished_sf"
    t.integer  "property_land_sf"
    t.string   "property_condition"
    t.string   "deal_type"
    t.string   "deal_urgency"
    t.integer  "property_current_value"
    t.integer  "property_estimated_arv"
    t.integer  "property_renovations_needed"
    t.boolean  "deal_repair_estimate"
    t.text     "proeprty_description"
    t.text     "deal_additional_details"
    t.boolean  "off_market"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
