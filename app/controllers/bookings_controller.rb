class BookingsController < ApplicationController

 # received bookings are the bookings that the creator of the warehouse receive
 def received
 end

 def show
   @booking = Booking.find(params[:id])
 end

 def sent
   @user = current_user
   @bookings = @user.bookings
 end

 def warehouse_bookings_index
   @bookings = Booking.all
 end

 def new
   @bookings = Booking.new
 end

 def create
   @booking = Booking.new(booking_params)
   @booking.user = User.find(params[:user_id])
   @booking.warehouse = Warehouse.find(params[:warehouse_id])
   if @booking.save
     redirect_to booking_path(@booking)
   else
     render :new
   end
 end

   def destroy
     @booking.destroy
     redirect_to bookings_path
   end
end
