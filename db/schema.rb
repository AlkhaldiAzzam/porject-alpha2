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

ActiveRecord::Schema.define(version: 2019_07_23_073049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animes", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.string "poster"
    t.string "trailer"
    t.text "plot"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imdb_link"
  end

  create_table "dashboards", force: :cascade do |t|
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_dashboards_on_users_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.text "plot"
    t.integer "rating"
    t.string "trailer"
    t.string "poster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "imdb_link"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.string "poster"
    t.string "trailer"
    t.text "plot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imdb_link"
  end

  create_table "tv_shows", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.string "poster"
    t.string "trailer"
    t.text "plot"
    t.integer "user_id"
    t.integer "seasons"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imdb_link"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "films_id", default: [], array: true
    t.integer "animes_id", default: [], array: true
    t.integer "games_id", default: [], array: true
    t.integer "TvShows_id", default: [], array: true
    t.string "username"
    t.string "img", default: "https://stayhipp.com/wp-content/uploads/2019/06/f35.jpg"
    t.string "first_name"
    t.string "last_name"
    t.string "bio"
    t.integer "followers", default: [], array: true
    t.integer "followees", default: [], array: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dashboards", "users", column: "users_id"
end
