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

ActiveRecord::Schema.define(version: 2019_02_07_095152) do

  create_table "board_comments", force: :cascade do |t|
    t.integer "community_id", null: false
    t.integer "user_id", null: false
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category", null: false
    t.string "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "communities", force: :cascade do |t|
    t.integer "hobby_id", null: false
    t.string "name", null: false
    t.text "introduction", null: false
    t.integer "image_id"
    t.boolean "is_active", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "first_steps", force: :cascade do |t|
    t.integer "community_id", null: false
    t.integer "user_id", null: false
    t.text "introduction", null: false
    t.string "item"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hobbies", force: :cascade do |t|
    t.string "name", null: false
    t.string "image_id"
    t.integer "category_id", null: false
    t.string "introduction", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "narrows", force: :cascade do |t|
    t.integer "hobby_id", null: false
    t.integer "active_point", null: false
    t.integer "major_point", null: false
    t.integer "gain_point", null: false
    t.integer "appeal_point", null: false
    t.integer "health_point", null: false
    t.integer "relax_point", null: false
    t.integer "concentration_point", null: false
    t.integer "cooperate_point", null: false
    t.integer "consider_point", null: false
    t.integer "cost_point", null: false
    t.integer "artistic_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "hobby_id", null: false
    t.integer "time", null: false
    t.date "date", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name", null: false
    t.integer "age", null: false
    t.string "introduction"
    t.string "text"
    t.string "sex", null: false
    t.string "job", null: false
    t.string "address", null: false
    t.string "image_id"
    t.string "string"
    t.string "is_active", default: "t", null: false
    t.string "boolean", default: "t", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_communities", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "community_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_hobbies", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "hobby_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
