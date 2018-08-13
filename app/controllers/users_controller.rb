class UsersController < ApplicationController
  def profile
    @warehouses = current_user.warehouses
    @bookings = current_user.bookings
  end
end
