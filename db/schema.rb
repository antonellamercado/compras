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

ActiveRecord::Schema.define(version: 20150801214619) do

  create_table "books", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "pline_id"
    t.string   "name"
    t.float    "price"
    t.integer  "stock"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "books", ["pline_id"], name: "index_books_on_pline_id"
  add_index "books", ["provider_id"], name: "index_books_on_provider_id"

  create_table "plines", force: :cascade do |t|
    t.integer  "purchase_id"
    t.integer  "units"
    t.float    "subtotal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "plines", ["purchase_id"], name: "index_plines_on_purchase_id"

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "provider_id"
    t.float    "total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "purchases", ["provider_id"], name: "index_purchases_on_provider_id"

end
