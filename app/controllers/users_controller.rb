class UsersController < ApplicationController
  def profile
    authorize current_user
    @warehouses = current_user.warehouses
    @bookings = current_user.bookings
  end
<<<<<<< HEAD

  def warehouses

=======

  def warehouses
>>>>>>> e071de9f3aefccc965f83f3fc76c6e54dc23f7cf
    authorize current_user
    @warehouses = current_user.warehouses
    @bookings = current_user.bookings
  end
end
