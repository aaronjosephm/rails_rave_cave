class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy]
 # received bookings are the bookings that the creator of the warehouse receive
  def received
  end

  def show
  end

  def new
   @booking = Booking.new
   authorize @booking
   @warehouse = Warehouse.find(params[:warehouse_id])
  end

  def sent
    @just_created = params[:just_created]
    @user = current_user
    @bookings = @user.bookings
    authorize @bookings
  end

  def warehouse_bookings_index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = User.find(current_user[:id])
    @booking.warehouse = Warehouse.find(params[:warehouse_id])
    if @booking.save
      redirect_to bookings_sent_url(just_created: true)
    else
      @warehouse = Warehouse.find(params[:warehouse_id])
      redirect_to warehouse_path(@booking.warehouse, just_created: true)
    end
  end

  def destroy
    @booking.destroy
    redirect_to profile_warehouses_url
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:date, :event_name)
  end
end
