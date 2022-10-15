class Event < ApplicationRecord
  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances
  has_many :comments, as: :commentable, dependent: :destroy
  has_one_attached :photo
  belongs_to :user

  validates :title, :description, :event_date, :address, presence: true
end
