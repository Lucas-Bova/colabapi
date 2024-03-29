# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_13_122314) do

  create_table "breakthroughs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "lab_id"
    t.string "title"
    t.text "description"
    t.index ["lab_id"], name: "index_breakthroughs_on_lab_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "lab_id"
    t.integer "breakthrough_id"
    t.index ["breakthrough_id"], name: "index_comments_on_breakthrough_id"
    t.index ["lab_id"], name: "index_comments_on_lab_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "labs", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_labs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "lab_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "breakthroughs", "labs"
  add_foreign_key "comments", "breakthroughs"
  add_foreign_key "comments", "labs"
  add_foreign_key "comments", "users"
  add_foreign_key "user_labs", "labs"
  add_foreign_key "user_labs", "users"
end
