class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_after_start_date



  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
 end


end

# s'assurer que end_date > start_date (flatpickr dans librairie du wagon pour le form de la view)
