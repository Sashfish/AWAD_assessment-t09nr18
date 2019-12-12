class ViewordersController < ApplicationController
  before_action :authenticate_user!
  def index
      @orders = Order.paginate(page: params[:page], per_page: 10)
    end
  end
