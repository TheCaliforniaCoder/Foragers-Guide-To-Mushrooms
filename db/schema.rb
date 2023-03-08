# Tables

ActiveRecord::Schema[7.0].define(version: 2023_03_07_132736) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mushrooms", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "body"
    t.boolean "psychedelic"
    t.boolean "deadly"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_default", default: true
    t.index ["user_id"], name: "index_mushrooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "mushrooms", "users"
end
