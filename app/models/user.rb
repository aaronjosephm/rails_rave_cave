class User < ApplicationRecord
  has_many :bookings
  has_many :warehouses
  has_many :booked_warehouses, through: :bookings, class_name: "Warehouse"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
