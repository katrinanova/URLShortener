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

ActiveRecord::Schema.define(version: 20150610214040) do

  create_table "shorten_urls", force: true do |t|
    t.string  "long_url"
    t.string  "short_url"
    t.integer "submitter_id"
  end

  add_index "shorten_urls", ["short_url"], name: "index_shorten_urls_on_short_url", unique: true
  add_index "shorten_urls", ["submitter_id"], name: "index_shorten_urls_on_submitter_id"

  create_table "tag_topics", force: true do |t|
    t.string   "tag_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tag_topics", ["tag_name"], name: "index_tag_topics_on_tag_name", unique: true

  create_table "taggings", force: true do |t|
    t.string "tag_topic_id"
    t.string "short_url_id"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "visits", force: true do |t|
    t.string   "visitor_id"
    t.string   "visited_url_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visits", ["visited_url_id"], name: "index_visits_on_visited_url_id"
  add_index "visits", ["visitor_id"], name: "index_visits_on_visitor_id"

end
