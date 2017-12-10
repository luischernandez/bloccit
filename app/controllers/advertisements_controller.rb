class AdvertisementsController < ApplicationController
  def index
      @advertisements = Advertisement.all
  end

  def show
      @advertisements = Advertisement.find(params[:id])
  end

  def new
      @advertisements = Advertisement.new
  end

  def create
      @advertisements = Advertisement.new
      @advertisements.title = params[:advertisements][:title]
      @advertisements.copy = params[:advertisements][:copy]
      @advertisements.price = params[:advertisements][:price]

      if @advertisements.save
          flash[:notice] = "Your ad was saved."
          redirect_to @advertisements
      else
          flash.now[:alert] = "There was an error saving the Ad. Please try again."
          render :new
      end
  end
end
