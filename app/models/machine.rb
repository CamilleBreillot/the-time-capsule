class Machine < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  validates :name, uniqueness: true, presence: true
  validates :details, :country, :price, :period_century, :period_specific, :photos, presence: true
end
