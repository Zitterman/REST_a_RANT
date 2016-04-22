class ManagersController < ApplicationController

  include SessionsHelper

  def index
  end

  def new
    @manager = Manager.new
  end

  def create
    Manager.create(manager_params)
    redirect_to manager_log_in_path
  end

  def profile
    manager_authenticate!
    @manager = current_manager
  end

  def log_in
  end

  private

  def manager_params
    params.require(:manager).permit(:name, :password)
  end

end
