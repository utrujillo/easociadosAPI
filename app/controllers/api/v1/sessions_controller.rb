module Api
  module V1

    class SessionsController < ApplicationController
      def create
        user = User.where( email: user_params[:email] ).first
        
        if user&.valid_password? user_params[:password] 
          jwt = JWT.encode(
            { user_id: user.id, exp: (Time.now + 3.hours).to_i }, 
            Rails.application.secrets.secret_key_base,
            'HS256'
          ) 
          render json: { user: UserSerializer.new(user), token: jwt }
          # render :create, locals: { token: jwt }, status: :created
        else
          head(:unauthorized)
        end
        
      end

      def destroy
      end

      private
        def user_params
          params.require(:user).permit(:email, :nombre, :apellidos, :nickname, :password)
        end
    end

  end
end