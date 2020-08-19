class AuthController < ApplicationController
  def login
    user = User.find_by( email: user_params[:email] )
    if user.blank?
      render json: { error: 'Invalid email' }, status: :unauthorized
    elsif user.authenticate( user_params[:password] )
      render json: { message: "Credentials correct!" }
    else
      render json: { message: "Wrong password!" }
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
