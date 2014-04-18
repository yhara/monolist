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

ActiveRecord::Schema.define(version: 20140418073754) do

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
    t.date     "added_on"
    t.date     "removed_on"
  end

  create_table "photos", force: true do |t|
    t.integer  "item_id"
    t.string   "body_file_name"
    t.string   "body_content_type"
    t.integer  "body_file_size"
    t.datetime "body_updated_at"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

end
