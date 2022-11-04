class Like < ApplicationRecord
  belongs_to :user
  belongs_to :likeable, polymorphic: true

  validates :user, uniqueness: { scope: %i[likeable_id likeable_type] }
end
