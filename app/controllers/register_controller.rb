class RegisterController < ApplicationController

  def new


  end

  def create
    user = User.new(params[:user])
    if user.save
      redirect_to '/'
    else
      flash[:error] = user.errors.full_messages
      redirect_to register_path
    end



  end

  private

  def user_params
    params.require(:user).permit(:username, :email,
                                 :password, :password_confirmation)

  end

end
