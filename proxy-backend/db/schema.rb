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

ActiveRecord::Schema.define(version: 20150506063428) do

  create_table "entries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proxies", force: :cascade do |t|
    t.string   "proxy"
    t.boolean  "banned",      default: false
    t.datetime "banned_time"
    t.string   "proxy_type",  default: "http"
    t.float    "succ_ratio",  default: 0.0
    t.integer  "succ",        default: 0
    t.integer  "total",       default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "proxies", ["proxy"], name: "index_proxies_on_proxy", unique: true

  create_table "proxy_domains", force: :cascade do |t|
    t.string   "proxy"
    t.string   "domain"
    t.string   "proxy_type",  default: "http"
    t.float    "succ_ratio",  default: 0.0
    t.integer  "succ",        default: 0
    t.integer  "total",       default: 0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "banned"
    t.datetime "banned_time"
    t.integer  "in_use",      default: 0
  end

  add_index "proxy_domains", ["proxy"], name: "index_proxy_domains_on_proxy", unique: true

end
