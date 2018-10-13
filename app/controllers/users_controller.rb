class UsersController < ApplicationController
  before_action :find_user,only: [:show, :edit, :update, :destroy]
  def index
    @i = 0
    @users = User.all.order("created_at DESC")
  end
  def new
    @user = User.new
  end

  def create
    @user = User.invite!(user_params, current_user)
    if @user.valid?
      flash[:success] = "User Successfully created."
    else
      flash[:errors] = @user.errors.full_messages
    end

    redirect_to users_path
  end

  def show

  end
  def edit

  end
  def update

  end
  def destroy

  end
  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :role)
  end


end