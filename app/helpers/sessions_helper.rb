module SessionsHelper

  def server_authenticate!
    redirect_to server_log_in_path unless current_server
  end

  def manager_authenticate!
    redirect_to manager_log_in_path unless current_manager
  end

  def current_server
    if session[:server_id]
      @current_server = Server.find(session[:server_id])
    end
  end

  def current_manager
    if session[:manager_id]
      @current_manager = Manager.find(session[:manager_id])
    end
  end

end
