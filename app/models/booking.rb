class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, class_name: "User"
end
