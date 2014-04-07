class ListingsController < ApplicationController

  before_action :load_customer, except: [:search]
  before_action :authenticate, :authorize, only: [:show, :index]


  def show
    @listing = Listing.find(params[:id])
    @timeslots = @listing.timeslots
  end

  def index
    @listings = Listing.all
  end

  
  private

  def load_customer
    return @customer = Customer.find(session[:user_id])
  end

  def listing_params
    params.require(:listing).permit(
      :name, 
      :listing_pic_url, 
      :description, 
      :address, 
      :city, 
      :state, 
      :zip,
      :rate,
      :quantity
    )
  end

  def authenticate
    unless logged_in?
      redirect_to root_path
    end
  end

  def authorize
    unless current_user == @customer
      redirect_to root_path
    end
  end
end