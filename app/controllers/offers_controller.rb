class OffersController < ApplicationController

  before_action :authenticate_user!

  def new
    @offer = Offer.new
    @request = Request.find(params[:request_id])
  end

  def create
    @offer = Offer.new(offer_params)
    @request = Request.find(params[:request_id])

    if @offer.save
      flash[:notice] = 'Parts Offer has been submitted. We will notify you if you offer has been accepted.'
      redirect_to root_path
    else
      flash[:alert] = 'Could not submit your parts offer.'
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @offer = Offer.find_or_initialize_by(user: current_user)
  end

  def show
  end

  private
  def offer_params
    params.require(:offer).permit(:message, :price, :image_data)
  end

end
