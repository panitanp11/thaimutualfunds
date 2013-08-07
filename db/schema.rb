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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130806165808) do

  create_table "funds", :force => true do |t|
    t.string   "name",               :null => false
    t.string   "abbr",               :null => false
    t.integer  "management_firm_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "funds", ["management_firm_id"], :name => "index_funds_on_management_firm_id"

  create_table "management_firms", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "abbr",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "management_firms", ["abbr"], :name => "index_management_firms_on_abbr"

  create_table "unit_prices", :force => true do |t|
    t.integer "fund_id"
    t.decimal "price",    :precision => 12, :scale => 6
    t.date    "nav_date"
  end

  add_index "unit_prices", ["fund_id", "nav_date"], :name => "index_unit_prices_on_fund_id_and_nav_date", :unique => true
  add_index "unit_prices", ["nav_date"], :name => "index_unit_prices_on_nav_date"

end
