class Reservation < ApplicationRecord
  belongs_to :car
  # validates :username, presence: true
  # validates :car_id, presence: true

  def is_valid?
    return true unless username.empty?

    false
  end
end

Reservation.create!(username: 'John', car_id: 9)
