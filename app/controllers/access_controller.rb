class AccessController < ApplicationController
    before_action :set_users, only: [:show, :edit, :update, :destroy]

  
  def index
    
    @users = User.all.order("created_at ASC")
  end

protected

  def category_params
       params.require(:users).permit(:id, :name, :admin)
  end
end
