class ServersController < ApplicationController

  def index
  end

  def show
    @server = current_user
    @tables = Table.where( server_id params[:id] )
  end

end
