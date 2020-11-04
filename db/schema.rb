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

ActiveRecord::Schema.define(version: 20201022172857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "neighborhood"
    t.string   "street"
    t.string   "street_number"
    t.string   "cep"
    t.string   "phone"
    t.string   "deliverer_fee"
    t.boolean  "blocked",       default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "deliverers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "phone"
    t.boolean  "blocked",     default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "ordered_products", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "product_total_quantity"
    t.float    "product_total_price"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "deliverer_id"
    t.integer  "products_total_quantity"
    t.float    "order_total_price"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "unit_price"
    t.string   "description"
    t.boolean  "dish_day"
    t.boolean  "blocked"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
