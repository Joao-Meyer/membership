class UsersController < ApplicationController
  before_action :redirect_if_authenticated, only: [ :create, :new ]
  before_action :authenticate_user!, only: [ :edit, :destroy, :update ]

  def create
    @user = User.new(create_user_params)
    if @user.save
      redirect_to root_path, notice: "User has been created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    id = 2
    @user = User.find_by(params[:id])
    @user.destroy
    reset_session
    redirect_to root_path, notice: "User has been deleted."
  end

  def edit
    id = 2
    @user = User.find_by(params[:id])
    # @user = current_user
    @active_sessions = @user.active_sessions.order(created_at: :desc)
  end

  def new
    @user = User.new
  end

  def update
    id = 2
    @user = User.find_by(params[:id])
    # @user = current_user
    @active_sessions = @user.active_sessions.order(created_at: :desc)
    if @user.authenticate(params[:user][:current_password])
      if @user.update(update_user_params)
          redirect_to root_path, notice: "Account updated."
      else
        render :edit, status: :unprocessable_entity
      end
    else
      flash.now[:error] = "Incorrect password"
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def create_user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def update_user_params
    params.require(:user).permit(:name, :current_password, :password, :password_confirmation)
  end
end
