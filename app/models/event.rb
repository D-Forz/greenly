class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :favorites, as: :favoritable, dependent: :destroy
  has_one_attached :photo
  belongs_to :user

  validates :title, :description, :event_date, :address, presence: true
  validates :title, uniqueness: true, length: { minimum: 5, maximum: 50 },
                    format: { with: /\A[a-zA-Z0-9 ]+\z/, message: "only allows letters, numbers and spaces" }
end
