# create_table "users", force: :cascade do |t|
#   t.string "email", default: "", null: false
#   t.string "encrypted_password", default: "", null: false
#   t.string "reset_password_token"
#   t.datetime "reset_password_sent_at"
#   t.datetime "remember_created_at"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.string "username", null: false
#   t.string "first_name", null: false
#   t.string "last_name", null: false
#   t.integer "phone"
#   t.integer "sash_id"
#   t.integer "level", default: 0
#   t.string "slug"
#   t.string "bio"
#   t.string "title"
#   t.string "city"
#   t.index ["email"], name: "index_users_on_email", unique: true
#   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   t.index ["slug"], name: "index_users_on_slug", unique: true
# end

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    # username only with letters and numbers
    username { Faker::Internet.username(specifier: 5..10, separators: %w[_]) }
  end
end
