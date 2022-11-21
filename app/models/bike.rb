class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  # validates :localisation, presence: true
  validates :daily_price, presence: true
  validates :type, presence: true
end
