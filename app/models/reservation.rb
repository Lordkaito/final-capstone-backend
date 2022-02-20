class Reservation < ApplicationRecord
  belongs_to :car
end

Reservation.create!(username: 'John', car_id: 9)