class BookingsController < ApplicationController

  # before_action :load_listing
  # before_action :load_vendor
  before_action :authenticate, :authorize, only: [:show, :edit, :update]

  def new
    @booking = Booking.new
  end

  def create
    @customer = Customer.find(session[:user_id])
    @timeslot = Timeslot.find(params[:booking][:timeslot_id])
    @booking = Booking.new()
    

    if @booking.update(
      customer_id: @customer.id,
      timeslot_id: @timeslot.id,
      quantity: params[:booking][:quantity],
      cost: (@timeslot.listing.rate.to_i * params[:booking][:quantity].to_i)
    ) 
      @timeslot.update( booked: !@timeslot.booked )
      redirect_to customer_bookings_path(@customer)
    else
      redirect_to listing_path(@timeslot.listing)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @customer = Customer.find(params[:customer_id])
    @bookings = @customer.bookings
  end

  def edit
    @timeslot = Timeslot.find(params[:id])
    @listing = Listing.find(params[:listing_id])
    @update_worked = true
  end

  def destroy
    @timeslot = Timeslot.find(params[:id])
    @timeslot.destroy
    redirect_to vendor_listing_timeslots_path(@vendor, @listing)
  end

  def update
    @timeslot = Timeslot.find(params[:id])
    @update_worked = @timeslot.update(booking_params)
    if @update_worked
      redirect_to vendor_listing_timeslots_path(@vendor, @listing)
    else
      render(:edit)
    end
  end
  
  private

  # def load_vendor
  #   return @vendor = Vendor.find(params[:vendor_id])
  # end

  # def load_listing
  #   return @listing = Listing.find(params[:listing_id])
  # end

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