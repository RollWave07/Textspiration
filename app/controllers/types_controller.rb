class TypesController < ApplicationController
  def show
    @types = @user.types.all
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end