class PagesController < ApplicationController

  def sign_up
    @user = User.new
  end

  def send_sign_up
    @user = User.new(user_params)
    new_email = EmailAddress.new(user: @user, email: params[:email])
    binding.pry
    if @user.valid? && new_email.valid?
      @user.save
      new_email.save
      redirect_to recipients_path
    else
      @errors = @user.errors.full_messages && new_email.errors.full_messages
      render 'sign_up'
    end
    # if @user.valid?
    #   new_email = EmailAddress.new(user: @user, email: params[:email])
    #   if new_email.valid?
    #     @user.save
    #     new_email.save
    #     redirect_to recipients_path
    #   else
    #     @errors = @user.errors.full_messages && new_email.errors.full_messages
    #     render 'sign_up'
    #   end
    # else
    #   @errors = @user.errors.full_messages
    #   render 'sign_up'
    # end
  end

  def recipients
    @users = User.all
  end

  private
    def user_params
      params.require(:user).permit(:firstname, :lastname)
    end
end
