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

ActiveRecord::Schema.define(version: 20161121193958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "centers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "full_address"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "country"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "neighborhood_id"
    t.string   "website"
    t.integer  "capacity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "provider_id"
    t.index ["neighborhood_id"], name: "index_centers_on_neighborhood_id", using: :btree
    t.index ["provider_id"], name: "index_centers_on_provider_id", using: :btree
  end

  create_table "children", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "date_of_birth"
    t.integer  "center_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["center_id"], name: "index_children_on_center_id", using: :btree
  end

  create_table "families", force: :cascade do |t|
    t.string   "last_name"
    t.integer  "center_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["center_id"], name: "index_families_on_center_id", using: :btree
  end

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
    t.index ["form_id"], name: "index_form_instances_on_form_id", using: :btree
  end

  create_table "forms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gaurdians", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.integer  "neighborhood_id"
    t.string   "phone"
    t.string   "full_address"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "country"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_gaurdians_on_email", unique: true, using: :btree
    t.index ["neighborhood_id"], name: "index_gaurdians_on_neighborhood_id", using: :btree
    t.index ["reset_password_token"], name: "index_gaurdians_on_reset_password_token", unique: true, using: :btree
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "phone"
    t.string   "full_address"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "country"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "neighborhood_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "center_id"
    t.index ["center_id"], name: "index_providers_on_center_id", using: :btree
    t.index ["email"], name: "index_providers_on_email", unique: true, using: :btree
    t.index ["neighborhood_id"], name: "index_providers_on_neighborhood_id", using: :btree
    t.index ["reset_password_token"], name: "index_providers_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "centers", "neighborhoods"
  add_foreign_key "centers", "providers"
  add_foreign_key "children", "centers"
  add_foreign_key "families", "centers"
  add_foreign_key "form_field_instances", "form_fields"
  add_foreign_key "form_field_instances", "form_instances"
  add_foreign_key "form_fields", "forms"
  add_foreign_key "form_instances", "forms"
  add_foreign_key "providers", "centers"
end
