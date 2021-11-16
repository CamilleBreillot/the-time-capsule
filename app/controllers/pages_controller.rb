class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = booking.where(user: current_user)
    @machines = machine..where(user: current_user)
  end
end
