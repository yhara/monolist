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

ActiveRecord::Schema.define(version: 20140415023051) do

  create_table "folders", force: true do |t|
    t.string   "ancestry"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "folders", ["ancestry"], name: "index_folders_on_ancestry"

  create_table "items", force: true do |t|
    t.integer  "folder_id"
    t.string   "name"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.integer  "item_id"
    t.string   "filepath"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
