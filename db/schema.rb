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

ActiveRecord::Schema.define(version: 2024_05_13_193517) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backgrounds", force: :cascade do |t|
    t.text "image"
    t.text "sound"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.text "image"
    t.boolean "right"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "choices", force: :cascade do |t|
    t.text "text_choice"
    t.bigint "scene_id"
    t.bigint "next_scene_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["next_scene_id"], name: "index_choices_on_next_scene_id"
    t.index ["scene_id"], name: "index_choices_on_scene_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.text "sound"
    t.text "mode"
    t.bigint "background_id"
    t.bigint "character_id"
    t.boolean "auto_next", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["background_id"], name: "index_scenes_on_background_id"
    t.index ["character_id"], name: "index_scenes_on_character_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "login"
    t.text "password"
    t.bigint "current_screen_id", default: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["current_screen_id"], name: "index_users_on_current_screen_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "choices", "scenes"
  add_foreign_key "choices", "scenes", column: "next_scene_id"
  add_foreign_key "users", "scenes", column: "current_screen_id"
end
