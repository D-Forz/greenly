class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :user, uniqueness: { scope: :event }
  validates :attendance_status, presence: true, inclusion: { in: %w[Going Maybe] }
end
