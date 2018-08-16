class Warehouse < ApplicationRecord
  has_many :bookings
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :price, presence: true
  validates :address, presence: true
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
end
