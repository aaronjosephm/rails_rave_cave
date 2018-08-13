class Warehouse < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  validates :description, presence: true
  validates :user_id, presence: true, uniqueness: true
end
