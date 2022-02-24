class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy
  validates :price, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :image, presence: true
end
