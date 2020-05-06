class ApplicationsController < ApplicationController
  def index
  end

  def new
    @license = License.new
  end

  def create
    @license = License.new(license_params)
    @license.save!
    redirect_to applications_path, notice: "申請書を作成しました"
    rescue
    redirect_to new_product_path, status: 400, notice: "error"
  end

  def edit
  end

  private
  def license_params
    params.require(:license).permit(:type_name, :rank, :comment)
  end
end
