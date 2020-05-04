class UsersController < ApplicationController
  def index
    return nil if params[:keyword] == ""
    @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
  end
  
  private
  def user_params
    params.require(:user).permit(:organization_type, :fastname, :secondname, :email)
  end
end
