class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  # validates :localisation, presence: true
  validates :daily_price, presence: true
  validates :category, presence: true, inclusion: { in: %w(VTT Electric Mountain BMX Family Atypical Kids),
    message: "%{value} is not a valid category" }
end
