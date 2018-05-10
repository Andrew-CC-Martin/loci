class ChargesController < ApplicationController
  before_action :set_item

  def new
  end
  
  def create

    @amount = @listing.price

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
  
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end


  private
  def set_item
    @listing = Listing.find(params[:listing_id])
  end
end
