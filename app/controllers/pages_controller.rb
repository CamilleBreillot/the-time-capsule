class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = Booking.where(user_id: current_user)
    @machines = Machine.where(user_id: current_user)
  end

  def bookingrequest
    @user = current_user
    @machines = @user.machines
  end
end
