class AuthController < ApplicationController
  def login
    user = User.find_by( email: user_params[:email] )
    if user.blank?
      render json: { error: 'Invalid email' }, status: :unauthorized
    elsif user.authenticate( user_params[:password] )
      secret_key = Rails.application.secrets.secret_key_base[0]
      # secret_key = "asociados"
      token = JWT.encode({
        user_id: user.id,
        nombre: user.nombre,
        apellidos: user.apellidos,
        email: user.email,
        nickname: user.nickname
      }, secret_key)
      render json: { token: token }
    else
      render json: { message: "Wrong password!" }
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end
