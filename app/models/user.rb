class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bikes
  has_many :reservations

  validates :name, presence: true

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

end
