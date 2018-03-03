class PagesController < ApplicationController

  def sign_up
    @user = User.new
  end

  def send_sign_up
    @user = User.new(user_params)
    if @user.save
      new_email = EmailAddress.create(user: @user, email: params[:email])
      redirect_to recipients_path
    else
      @errors = @user.errors.full_messages
      render 'sign_up'
    end
  end

  def recipients
    @users = User.all
  end

  private
    def user_params
      params.require(:user).permit(:firstname, :lastname)
    end
end
