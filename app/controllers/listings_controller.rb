class ListingsController < ApplicationController

  before_action :load_vendor
  before_action :authenticate, :authorize, only: [:show, :edit, :update]

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    
    if @listing.update(vendor_id: @vendor.id)
      redirect_to vendor_listing_path(@vendor, @listing)
    else
      render(:new)
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def index
    @listings = @vendor.listings
  end

  def edit
    @update_worked = true
  end

  def destroy
    @listing.destroy
    redirect_to root_path
  end

  def update
    @listing = Listing.fing(params[:id])
    @update_worked = @listing.update(listing_params, vendor_id: params[:vendor_id])
    if @update_worked
      redirect_to vendor_listing_path(@vendor, @listing)
    else
      render(:edit)
    end
  end
  
  private

  def load_vendor
    return @vendor = Vendor.find(params[:vendor_id])
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
    unless current_user == @vendor
      redirect_to root_path
    end
  end
end