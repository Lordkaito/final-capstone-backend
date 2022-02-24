class Reservation < ApplicationRecord
  validates :username, presence: true
  validates :reservation_date, presence: true
  validates :car_id, presence: true
  validates :city, presence: true

  belongs_to :car
end
