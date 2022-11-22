class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo


  # validates :localisation, presence: true
  validates :daily_price, presence: true
  validates :category, presence: true
end
