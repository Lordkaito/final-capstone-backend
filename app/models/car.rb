class Car < ApplicationRecord
  has_many :reservations
end

Car.create!(price: 100, brand: 'Toyota', model: 'Corolla', image: 'imageurl')
