class HomeController < ApplicationController
  def index
    @properties = Property.paginate(page: params[:page], per_page: 10)
  end
end
