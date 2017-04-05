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

ActiveRecord::Schema.define(version: 20170404182109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employers", force: :cascade do |t|
    t.string   "company_name"
    t.string   "website_url"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.text     "about"
    t.string   "photo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "location_id"
    t.string   "password_digest"
    t.string   "token"
    t.index ["location_id"], name: "index_employers_on_location_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "transportation", default: false
    t.boolean  "active"
    t.integer  "employer_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "location_id"
    t.index ["employer_id"], name: "index_jobs_on_employer_id", using: :btree
    t.index ["location_id"], name: "index_jobs_on_location_id", using: :btree
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skillings", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "skillable_id"
    t.string   "skillable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["skill_id"], name: "index_skillings_on_skill_id", using: :btree
    t.index ["skillable_id", "skillable_type"], name: "index_skillings_on_skillable_id_and_skillable_type", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "bio"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "location_id"
    t.string   "username"
    t.string   "token"
    t.index ["location_id"], name: "index_users_on_location_id", using: :btree
  end

  add_foreign_key "employers", "locations"
  add_foreign_key "jobs", "employers"
  add_foreign_key "jobs", "locations"
  add_foreign_key "skillings", "skills"
  add_foreign_key "users", "locations"
end
