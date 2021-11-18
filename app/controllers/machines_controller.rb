class MachinesController < ApplicationController
  before_action :set_machine, only: [:show, :edit, :update, :destroy]
  def index
    @machines = Machine.all
    @machines = policy_scope(Machine)
    @markers = @machines.geocoded.map do |machine|
      {
        lat: machine.latitude,
        lng: machine.longitude,
        info_window: render_to_string(partial: "info_window", locals: { machine: machine }),
        image_url: helpers.asset_url("neonmarker.png")
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @booking = Booking.new
    @machine = Machine.new
    @places = CS.countries.values #lists countries from the gem 'city-state'
    authorize @machine
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.user = current_user
    if @machine.save
      redirect_to machine_path(@machine)
    else
      render "machines/new"
    end
    authorize @machine
  end

  def edit
  end

  def update
    @machine.update(machine_params)
    redirect_to machine_path(@machine)
    authorize @machine
  end

  def destroy
    @machine.destroy
    redirect_to machines_path
    authorize @machine
  end

  private

  def set_machine
    @machine = Machine.find(params[:id])
    authorize @machine
  end

  def machine_params
    params.require(:machine).permit(:name, :details, :period_century, :period_specific, :place, :price, photos: [])
  end
end
