class Booking < ApplicationRecord
  belongs_to :user
  has_one :user_as_owner, through: :machines
  belongs_to :machine
end
