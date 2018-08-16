class AddEventNameToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :event_name, :string
  end
end
