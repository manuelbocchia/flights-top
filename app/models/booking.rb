class Booking < ApplicationRecord
  belongs_to :flight
  has_many :users
  accepts_nested_attributes_for :users
end
