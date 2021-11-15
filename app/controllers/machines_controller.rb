class MachinesController < ApplicationController
  before_action :set_machine, only: [:show]
  def index
    @machines = Machine.all
  end

  def show
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(machine_params)
    @machine.user = current_user
    @machine.save!
    redirect_to root_path
  end

  private

  def set_machine
    @machine = Machine.find(params[:id])
  end

  def machine_params
    params.require(:machine).permit(:name, :details, :period_century, :period_specific, :country, :price)
  end
end