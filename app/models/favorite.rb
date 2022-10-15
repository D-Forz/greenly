class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :favoritable, polymorphic: true

  validates :user, uniqueness: { scope: %i[favoritable_id favoritable_type] }
end
