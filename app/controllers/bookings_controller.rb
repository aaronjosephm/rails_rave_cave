class BookingsController < ApplicationController

 # received bookings are the bookings that the creator of the warehouse receive
  def received
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
   @booking = Booking.new
   @warehouse = Warehouse.find(params[:warehouse_id])
  end

  def sent
    @user = current_user
    @bookings = @user.bookings
  end

  def warehouse_bookings_index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = User.find(current_user[:id])
    @booking.warehouse = Warehouse.find(params[:warehouse_id])
    if @booking.save
      redirect_to warehouse_path(@booking.warehouse)
    else
      @warehouse = Warehouse.find(params[:warehouse_id])
      redirect_to warehouse_path(@booking.warehouse)
    end
  end

  # def destroy
  #   @booking.destroy
  #   redirect_to booking_path
  # end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
