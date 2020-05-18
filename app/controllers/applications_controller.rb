class ApplicationsController < ApplicationController
  def index
  end

  def new
    if current_user
      @license = License.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @license = License.create(license_params)
    @license.save!
    redirect_to applications_path, notice: "申請書を作成しました"
    rescue
    render new_application_path, status: 400, notice: "error"
  end

  def edit
  end

  private
  def license_params
    params.require(:license).permit(:category,:type_name, :rank, :comment, :start_year, :start_month, :start_date, :end_year, :end_month, :end_date).merge(user_id: current_user.id)
  end
end
