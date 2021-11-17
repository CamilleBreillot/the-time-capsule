class Machine < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  geocoded_by :place
  after_validation :geocode, if: :will_save_change_to_place?
end
