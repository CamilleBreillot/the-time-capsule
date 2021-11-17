class Machine < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  # validates :name, :details, :place, :price, :period_century, :period_specific, :photos, presence: true
  geocoded_by :place
  after_validation :geocode, if: :will_save_change_to_place?
end
