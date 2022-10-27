module ImageType
  extend ActiveSupport::Concern

  included do
    validate :images_type, :images_size
  end

  private

  def images_type
    return unless photo.attached?
    errors.add(:photos, 'needs to be a JPEG or PNG') unless photo.content_type.in?(%('image/png image/jpeg'))
  end

  def images_size
    return unless photo.attached?
    errors.add(:photos, 'needs to be less than 5MB') unless photo.byte_size <= 5.megabytes
  end
end
