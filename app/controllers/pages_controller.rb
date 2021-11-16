class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = bookings.where(user: current_user)
    @machines = machines..where(user: current_user)
  end
end
