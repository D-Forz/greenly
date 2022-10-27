class Post < ApplicationRecord
  belongs_to :user
  include ImageType
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :favorites, as: :favoritable, dependent: :destroy
  has_one_attached :photo

  validates :content, presence: true, length: { minimum: 3, maximum: 1000 }
end
