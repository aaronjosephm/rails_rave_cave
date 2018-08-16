class UsersController < ApplicationController
  def profile
    authorize current_user
    @warehouses = current_user.warehouses
    @bookings = current_user.bookings
  end

  def warehouses

    authorize current_user
    @warehouses = current_user.warehouses
    @bookings = current_user.bookings
  end
end
