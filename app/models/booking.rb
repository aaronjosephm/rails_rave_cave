class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :warehouse

  validates :date, presence: true
  validates :user_id, presence: true
  validates :warehouse, presence: true
  validates :user_id, uniqueness: { scope: :warehouse_id }
end
