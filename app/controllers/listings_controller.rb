class ListingsController < ApplicationController

  before_action :load_customer, except: [:search]
  before_action :authenticate, :authorize, only: [:show, :edit, :update]

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    
    if @listing.update(customer_id: @customer.id)
      redirect_to customer_listing_path(@customer, @listing)
    else
      render(:new)
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def index
    @listings = Listing.all
  end

  def edit
    @listing = Listing.find(params[:id])
    @update_worked = true
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to customer_listings_path(@customer)
  end

  def update
    @listing = Listing.find(params[:id])
    @update_worked = @listing.update(listing_params)
    if @update_worked
      redirect_to customer_listing_path(@customer, @listing)
    else
      render(:edit)
    end
  end

  def search
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