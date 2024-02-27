class Car < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :model, :brand, :km, :year, :doors, :seats, presence: true
  validates :price_per_day, :power, :carburant, :description, :address, presence: true

end
