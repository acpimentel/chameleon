# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_06_164023) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mood_movies", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "mood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mood_id"], name: "index_mood_movies_on_mood_id"
    t.index ["movie_id"], name: "index_mood_movies_on_movie_id"
  end

  create_table "mood_quotes", force: :cascade do |t|
    t.bigint "quote_id"
    t.bigint "mood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mood_id"], name: "index_mood_quotes_on_mood_id"
    t.index ["quote_id"], name: "index_mood_quotes_on_quote_id"
  end

  create_table "mood_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "mood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mood_id"], name: "index_mood_users_on_mood_id"
    t.index ["user_id"], name: "index_mood_users_on_user_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "mood_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.string "director"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "quote_text"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "mood_movies", "moods"
  add_foreign_key "mood_movies", "movies"
  add_foreign_key "mood_quotes", "moods"
  add_foreign_key "mood_quotes", "quotes"
  add_foreign_key "mood_users", "moods"
  add_foreign_key "mood_users", "users"
end
