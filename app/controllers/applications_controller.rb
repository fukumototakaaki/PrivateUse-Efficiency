class ApplicationsController < ApplicationController
  def index
  end

  def new
    @license = License.new
  end

  def edit
  end
end
