class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :bike

  validates :start_date, presence: true
  validates :end_date, presence: true
end

# s'assurer que end_date > start_date (flatpickr dans librairie du wagon pour le form de la view)
