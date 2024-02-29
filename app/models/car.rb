class Car < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :bookings
  has_many_attached :photos
  validates :model, :brand, :km, :year, :doors, :seats, :photos, presence: true
  validates :price_per_day, :power, :carburant, :description, :address, presence: true
  validates :price_per_day, comparison: { greater_than: 5 }
  validates :km, :seats, :doors, :power, numericality: { only_integer: true }
  validates :price_per_day, numericality: true
  validates :power, comparison: { greater_than: 50 }
  validates :doors, :seats, comparison: { greater_than: 0 }
end
