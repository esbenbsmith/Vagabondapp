class UsersController < ApplicationController
  before_filter :authorize, only: [:show]

  def new
    if current_user
      redirect_to profile_path
    else
      @user = User.new
    end
  end

  def create
    if current_user
      redirect_to profile_path
    else
      @user = User.new(user_params)
      if @user.save
        redirect_to profile_path
      else
        errors = @user.errors
        error_string = ""
        if errors[:email]
          error_string += "Email: #{errors[:email]}  "
        end
        if errors[:password]
          error_string += "Password: #{errors[:password]}"
        end

        flash[:error] = error_string

        redirect_to signup_path
      end
    end
  end

  def show
    @user = User.find(session[:user_id])
    render :show
  end

  def edit
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
