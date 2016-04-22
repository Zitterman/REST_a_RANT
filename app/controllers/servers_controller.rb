class ServersController < ApplicationController

  include SessionsHelper

  def index
  end

  def show
    # @server = current_user
    # @tables = Table.where( server_id params[:id] )
  end

  def new
    @server = Server.new
  end

  def create
    Server.create(server_params)
    redirect_to server_log_in_path
  end

  def profile
    server_authenticate!
    @server = current_server
  end

  def log_in

  end

  private

  def server_params
    params.require(:server).permit(:name, :password)
  end

end
