helpers do

  def authenticate_user
    user = User.where(username: params[:username]).first
    if user && user.password == params[:password]
      session[:user_id] = user.id
    end
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def create_user
    current_user = User.new(params[:user])
    current_user.save
    if current_user
      session[:user_id] = current_user.id
    else
      current_user.error
      p current_user.errors
      p current_user.errors.messages
    end
  end

  def clear_session
      session.delete(:user_id)
      @current_user = nil
  end

end
