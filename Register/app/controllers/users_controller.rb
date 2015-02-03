class UsersController < ApplicationController
  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:userid] = @user.id
      @user.api_key = ApiKey.create
      redirect_to apikey_path
    else
      render :action => "new"
    end
  end

  ##Methods for handling a login
  def login
    u = User.find_by_email(params[:email])
    if u && u.authenticate(params[:password])
      session[:userid] = u.id
      redirect_to apikey_path
    else
      #Flash notice
      redirect_to root_path
    end
  end

  def logout
    session[:userid] = nil
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
