class LoginController < ApplicationController
  def new


  end

  def create
    user = User.find_by_email(user_params[:email])
    if user.present? and user.authenticate(user_params[:password])
      session[:user_id] = user.id
      redirect_to playerslist_path
    else
      flash[:error] = ['Вероятно вы что-то ввели неправильно']
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def omniauth
    @user = User.from_omniauth(auth)
    @user.save
    session[:user_id] = @user.id
    redirect_to home_path
  end
  private
  def auth
    request.env['omniauth.auth']
  end
  def user_params
    params.require(:user).permit(:email, :password)
  end
end