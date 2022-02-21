class Car < ApplicationRecord
  has_many :reservations
  # validates :price, presence: true
  # validates :brand, presence: true
  def is_valid?
    return true unless price <= 0 || brand.empty? || model.empty? || image.empty?
    false
  end
end

Car.create!(price: 100, brand: 'Toyota', model: 'Corolla', image: 'imageurl')
