class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances
  has_many :comments, as: :commentable, dependent: :destroy

  validates :title, :description, :date, :time, :address, presence: true
end
