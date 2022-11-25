class Bike < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model

pg_search_scope :search_by_bike_criteria,
  against: [ :category, :description, :address, :name ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }


  # validates :localisation, presence: true
  validates :daily_price, presence: true
  validates :category, presence: true, inclusion: { in: %w(VTT Electric Mountain BMX Family Atypical Kids),
    message: "%{value} is not a valid category" }
end
