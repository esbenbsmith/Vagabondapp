class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if current_user
      redirect_to profile_path
    else
      @user = User.new(user_params)
      if @user.save
        redirect_to profile_path
      else
        redirect_to signup_path
      end
    end
  end

  def show
    render :show
  end

  def edit
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
