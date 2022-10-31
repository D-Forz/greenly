class Event < ApplicationRecord
  extend FriendlyId
  include ImageType
  friendly_id :title, use: :slugged
  has_many :attendances, dependent: :destroy
  has_many :users, through: :attendances
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :favorites, as: :favoritable, dependent: :destroy
  has_one_attached :photo
  belongs_to :user

  validates :title, :description, :event_date, :address, :photo, presence: true
  validates :title, uniqueness: true, length: { minimum: 5, maximum: 80 }
  validates :description, length: { minimum: 10, maximum: 1000 }
  validate :event_date_cannot_be_in_the_past

  private

  def event_date_cannot_be_in_the_past
    return unless event_date.present? && event_date < Date.today

    errors.add(:event_date, "can't be in the past")
  end
end
