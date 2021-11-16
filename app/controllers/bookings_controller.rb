class BookingsController < ApplicationController
  before_action :set_booking, only: [ :update, :destroy ]

  def new
    @booking = Booking.new
    @machine = Machine.find(params[:machine_id])
    authorize @booking # for pundit
  end

  def create
    @booking = Booking.new(booking_params)
    @machine = Machine.find(params[:machine_id])
    @booking.user = current_user
    @booking.machine = @machine
    @booking.save!
    redirect_to machines_path
    authorize @booking # for pundit
  end

  def update
    @booking.update(booking_params)
    redirect_to machine_booking_path(@booking)
    authorize @booking # for pundit
  end

  def destroy
    @booking.destroy
    redirect_to machines_path
    authorize @booking # for pundit
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking # for pundit
  end

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date, :booking_price, :booking_confirmed)
  end
end
