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

ActiveRecord::Schema.define(version: 20130107184316) do

  create_table "chords", force: true do |t|
    t.string   "root_note"
    t.string   "alt"
    t.string   "chord_quality"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "chord_name"
    t.text     "component_notes"
    t.string   "symbol"
  end

  create_table "notes", force: true do |t|
    t.string   "name"
    t.string   "alt_name"
    t.integer  "scale_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voicings", force: true do |t|
    t.text     "fingering"
    t.text     "meta"
    t.string   "bass"
    t.string   "open"
    t.integer  "frets"
    t.integer  "fretposition"
    t.string   "formula"
    t.integer  "chord_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
