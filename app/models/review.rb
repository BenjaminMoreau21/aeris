class Review < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :rating, :comment, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
