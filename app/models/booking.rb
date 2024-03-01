class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
  #validate :no_overlapping

  private

  def end_date_after_start_date
    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end

  def start_date_after_today
    errors.add(:start_date, "cannot be in the past") if start_date < Date.today
  end

  #def no_overlapping
  #  overlap = Booking.all.any? { |booking| (start_date..end_date).overlaps?(booking.start_date..booking.end_date) }
  #  errors.add(:start_date, "Sorry those dates are already booked") if overlap
  #  errors.add(:end_date, "Sorry those dates are already booked") if overlap
  #end
end
