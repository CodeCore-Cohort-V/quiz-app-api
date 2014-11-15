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

ActiveRecord::Schema.define(version: 20141115193514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attempts", force: true do |t|
    t.integer  "user_id"
    t.integer  "choice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attempts", ["choice_id"], name: "index_attempts_on_choice_id", using: :btree
  add_index "attempts", ["user_id"], name: "index_attempts_on_user_id", using: :btree

  create_table "bundles", force: true do |t|
    t.string   "difficulty"
    t.boolean  "approved"
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "choices", force: true do |t|
    t.string   "corrent"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "content"
    t.string   "type"
    t.integer  "bundle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "queuers", force: true do |t|
    t.integer  "user_id"
    t.integer  "bundle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
