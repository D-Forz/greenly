# create_table "posts", force: :cascade do |t|
#   t.text "content"
#   t.bigint "user_id", null: false
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["user_id"], name: "index_posts_on_user_id"
# end

FactoryBot.define do
  factory :post do
    content { Faker::Lorem.sentence }
    user
    after(:build) do |post|
      post.photo.attach(
        io: File.open(Rails.root.join('app', 'assets', 'images', 'posts', 'playas.jpg')),
        filename: 'my_image.jpg',
        content_type: 'image/jpeg'
       )
    end
  end
end
