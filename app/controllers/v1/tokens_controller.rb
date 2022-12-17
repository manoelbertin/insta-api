class V1::TokensController < ApplicationController
  def create
    @user = User.find_by_email(user_params[:email])
    if @user&.authenticate(user_params[:password])
      render json: {
        token: JsonWebToken.encode(user_id: @user_id),
        email: @user.email,
        name: @user.name
      }
    else
      head :unauthorized
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end