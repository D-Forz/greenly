class User < ApplicationRecord
  has_merit
  extend FriendlyId
  friendly_id :username, use: :slugged
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one_attached :photo

  validates :first_name, :last_name, :username, presence: true
  validates :username, uniqueness: true
  validates :username, format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" },
                       length: { minimum: 3, maximum: 20 }
  before_save :attach_default_photo

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def attach_default_photo
    return if photo.attached?

    photo.attach(
      io: File.open(
        Rails.root.join("app", "assets", "images", "blank_profile.jpg")
      ),
      filename: "default-profile.jpg", content_type: "image/jpg"
    )
  end
end
