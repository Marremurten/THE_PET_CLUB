class Pet < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :species, presence: true
  validates :age, presence: true, inclusion: 0..200
  validates :description, presence: true
end
