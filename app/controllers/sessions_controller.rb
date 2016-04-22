class SessionsController < ApplicationController

  def create
    name = params[:name]
    password = params[:password]

    server = Server.find_by({name: name})

    if server && server.authenticate(password)
      session[:server_id] = server_id

      #now decide where we route the user based on their role
      # if server.manager?
      #   redirect_to manager_profile_path
      # else
        redirect_to server_profile_path
      # end

    else
      redirect_to server_log_in_path
    end

    # manager = Manager.find_by({name: name})
    # if manager && manager.authenticate(password)
    #   session[:manager_id] = manager_id
    #   redirect_to manager_profile_path
    # else
    #   redirect_to manager_log_in_path
    # end
  end

  def destroy
    session[:server_id] = nil
    redirect_to server_log_in_path

    session[:manager_id] = nil
    redirect_to manager_log_in_path
  end

end
