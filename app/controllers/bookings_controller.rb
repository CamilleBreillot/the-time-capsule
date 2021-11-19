class BookingsController < ApplicationController
  before_action :set_booking, only: [ :show, :update, :destroy, :declinebooking ]

  def show
    authorize @booking # for pundit
  end

  def index
    @booking.all
  end

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
    redirect_to booking_path(@booking)
    authorize @booking # for pundit
  end

  def update
    @booking.booking_confirmed = true
    @booking.save!
    authorize @booking # for pundit
    redirect_to bookingrequest_path
  end

  def declinebooking
    @booking.booking_confirmed = false
    @booking.save!
    authorize @booking # for pundit
    redirect_to bookingrequest_path
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
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
