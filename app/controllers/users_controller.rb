class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def index
    
  end

  def show
    @types = @user.types.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end