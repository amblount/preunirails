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

ActiveRecord::Schema.define(version: 20161117211453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "form_field_instances", force: :cascade do |t|
    t.integer  "form_field_id"
    t.integer  "form_instance_id"
    t.string   "signature"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["form_field_id"], name: "index_form_field_instances_on_form_field_id", using: :btree
    t.index ["form_instance_id"], name: "index_form_field_instances_on_form_instance_id", using: :btree
  end

  create_table "form_fields", force: :cascade do |t|
    t.string   "name"
    t.integer  "location"
    t.integer  "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "content"
    t.index ["form_id"], name: "index_form_fields_on_form_id", using: :btree
  end

  create_table "form_instances", force: :cascade do |t|
    t.integer  "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "content"
    t.index ["form_id"], name: "index_form_instances_on_form_id", using: :btree
  end

  create_table "forms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "form_field_instances", "form_fields"
  add_foreign_key "form_field_instances", "form_instances"
  add_foreign_key "form_fields", "forms"
  add_foreign_key "form_instances", "forms"
end
