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

ActiveRecord::Schema.define(version: 20160414224942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animes", force: :cascade do |t|
    t.string   "name"
    t.integer  "mal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "animes", ["mal_id"], name: "index_animes_on_mal_id", unique: true, using: :btree

  create_table "answers", force: :cascade do |t|
    t.string   "answer"
    t.integer  "specific_1"
    t.integer  "specific_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "tag_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.integer  "anime_id"
    t.integer  "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "recommendations", ["anime_id"], name: "index_recommendations_on_anime_id", using: :btree
  add_index "recommendations", ["answer_id"], name: "index_recommendations_on_answer_id", using: :btree

  create_table "reommendations", force: :cascade do |t|
    t.integer  "anime_id"
    t.integer  "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reommendations", ["anime_id"], name: "index_reommendations_on_anime_id", using: :btree
  add_index "reommendations", ["answer_id"], name: "index_reommendations_on_answer_id", using: :btree

  create_table "responses", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "answer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "responses", ["answer_id"], name: "index_responses_on_answer_id", using: :btree
  add_index "responses", ["question_id"], name: "index_responses_on_question_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "anime_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["anime_id"], name: "index_taggings_on_anime_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  add_foreign_key "recommendations", "animes"
  add_foreign_key "recommendations", "answers"
  add_foreign_key "reommendations", "animes"
  add_foreign_key "reommendations", "answers"
  add_foreign_key "responses", "answers"
  add_foreign_key "responses", "questions"
  add_foreign_key "taggings", "animes"
  add_foreign_key "taggings", "tags"
end
